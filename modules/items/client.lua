if not lib then return end

local Items = require 'modules.items.shared' --[[@as table<string, OxClientItem>]]

local function sendDisplayMetadata(data)
    SendNUIMessage({
		action = 'displayMetadata',
		data = data
	})
end
 
--- use array of single key value pairs to dictate order
---@param metadata string | table<string, string> | table<string, string>[]
---@param value? string
local function displayMetadata(metadata, value)
	local data = {}

	if type(metadata) == 'string' then
        if not value then return end

        data = { { metadata = metadata, value = value } }
	elseif table.type(metadata) == 'array' then
		for i = 1, #metadata do
			for k, v in pairs(metadata[i]) do
				data[i] = {
					metadata = k,
					value = v,
				}
			end
		end
	else
		for k, v in pairs(metadata) do
			data[#data + 1] = {
				metadata = k,
				value = v,
			}
		end
	end

    if client.uiLoaded then
        return sendDisplayMetadata(data)
    end

    CreateThread(function()
        repeat Wait(100) until client.uiLoaded

        sendDisplayMetadata(data)
    end)
end

exports('displayMetadata', displayMetadata)

---@param _ table?
---@param name string?
---@return table?
local function getItem(_, name)
    if not name then return Items end

	if type(name) ~= 'string' then return end

    name = name:lower()

    if name:sub(0, 7) == 'weapon_' then
        name = name:upper()
    end

    return Items[name]
end

setmetatable(Items --[[@as table]], {
	__call = getItem
})

---@cast Items +fun(itemName: string): OxClientItem
---@cast Items +fun(): table<string, OxClientItem>

local function Item(name, cb)
	local item = Items[name]
	if item then
		if not item.client?.export and not item.client?.event then
			item.effect = cb
		end
	end
end

local ox_inventory = exports[shared.resource]
-----------------------------------------------------------------------------------------------
-- Clientside item use functions
-----------------------------------------------------------------------------------------------



client.parachute = false
Item('parachute', function(data, slot)
	if not client.parachute then
		ox_inventory:useItem(data, function(data)
			if data then
				local chute = `GADGET_PARACHUTE`
				SetPlayerParachuteTintIndex(PlayerData.id, -1)
				GiveWeaponToPed(cache.ped, chute, 0, true, false)
				SetPedGadget(cache.ped, chute, true)
				lib.requestModel(1269906701)
				client.parachute = {CreateParachuteBagObject(cache.ped, true, true), slot?.metadata?.type or -1}
				if slot.metadata.type then
					SetPlayerParachuteTintIndex(PlayerData.id, slot.metadata.type)
				end
			end
		end)
	end
end)

Item('redwoods', function(data, slot)
    ox_inventory:useItem(data, function(data)
        if data then
            TriggerServerEvent('gr8_stuff:item:smokeCig', data, {indent=true})
        end
    end)
end)


	
Item('bandage', function(data, slot)
	local maxHealth = GetEntityMaxHealth(cache.ped)
	local health = GetEntityHealth(cache.ped)
	ox_inventory:useItem(data, function(data)
		if data then
			SetEntityHealth(cache.ped, math.min(maxHealth, math.floor(health + maxHealth / 16)))
			lib.notify({ description = 'Ti sei curato !' })
		end
	end)
end)
--[[Item('phone', function(data, slot)
	local success, result = pcall(function()
		return exports.npwd:isPhoneVisible()
	end)

	if success then
		exports.npwd:setPhoneVisible(not result)
	end
end)

Item('clothing', function(data, slot)
	local metadata = slot.metadata

	if not metadata.drawable then return print('Clothing is missing drawable in metadata') end
	if not metadata.texture then return print('Clothing is missing texture in metadata') end

	if metadata.prop then
		if not SetPedPreloadPropData(cache.ped, metadata.prop, metadata.drawable, metadata.texture) then
			return print('Clothing has invalid prop for this ped')
		end
	elseif metadata.component then
		if not IsPedComponentVariationValid(cache.ped, metadata.component, metadata.drawable, metadata.texture) then
			return print('Clothing has invalid component for this ped')
		end
	else
		return print('Clothing is missing prop/component id in metadata')
	end

	ox_inventory:useItem(data, function(data)
		if data then
			metadata = data.metadata

			if metadata.prop then
				local prop = GetPedPropIndex(cache.ped, metadata.prop)
				local texture = GetPedPropTextureIndex(cache.ped, metadata.prop)

				if metadata.drawable == prop and metadata.texture == texture then
					return ClearPedProp(cache.ped, metadata.prop)
				end

				-- { prop = 0, drawable = 2, texture = 1 } = grey beanie
				SetPedPropIndex(cache.ped, metadata.prop, metadata.drawable, metadata.texture, false);
			elseif metadata.component then
				local drawable = GetPedDrawableVariation(cache.ped, metadata.component)
				local texture = GetPedTextureVariation(cache.ped, metadata.component)

				if metadata.drawable == drawable and metadata.texture == texture then
					return -- item matches (setup defaults so we can strip?)
				end

				-- { component = 4, drawable = 4, texture = 1 } = jeans w/ belt
				SetPedComponentVariation(cache.ped, metadata.component, metadata.drawable, metadata.texture, 0);
			end
		end
	end)
end)]]

local ESX = exports.es_extended:getSharedObject()

Item('medikit', function(data, slot)
	local i, job = ESX.GetPlayerJobFromName("ambulance")
	if i and job.duty then
		ESX.SelectPlayer("Rianima giocatore", 2.0, function(source)
			if source then
				local ped, ped2 = GetPlayerPed(GetPlayerFromServerId(source)), cache.ped
				print(ped, ped2)
				print(IsEntityPlayingAnim(ped, 'missarmenian2', 'corpse_search_exit_ped', 3))
				if IsEntityPlayingAnim(ped, 'missarmenian2', 'corpse_search_exit_ped', 3) then
					TriggerEvent("medikit:cprMedicAnimation")
					TriggerServerEvent("medikit:cprAnimation", source, {GetEntityHeading(ped2), GetEntityCoords(ped2), GetEntityForwardVector(ped2)})
					TriggerServerEvent("useItem", "medikit", 1)
				else
					ESX.ShowNotification("Puoi usare i medikit solo su cittadini svenuti","error")
				end
			end
		end)
	else
		ESX.ShowNotification("Devi essere un medico","error")
	end
end)

Item('bende', function(data, slot)
	local input = lib.inputDialog('Medicazione', {
		{ type = 'select', label = 'Fai una scelta', options = {
			{ value = 'me', label = 'Curati' },
			{ value = 'players', label = 'Cura un altro cittadino' },
		}},
	})
	if input then
		if input[1]=="players" then
			ESX.SelectPlayer("Medica giocatore", 2.0, function(source)
				if source then
					if not IsEntityPlayingAnim(GetPlayerPed(GetPlayerFromServerId(source)), 'missarmenian2', 'corpse_search_exit_ped', 3) then
						LocalPlayer.state.busy = true
						TriggerServerEvent("benda", source)
						if lib.progressCircle({
							label = "Applicando bendaggio",
							duration = 20000,
							anim = {
								dict = 'anim@heists@narcotics@funding@gang_idle',
								clip = 'gang_chatting_idle01',
							},
							disable = {
								move = true
							},
							canCancel = false,
						}) then
							TriggerServerEvent("useItem", "bende", 1)
						end
						LocalPlayer.state.busy = false
					else
						ESX.ShowNotification("Puoi usare le bende solo su cittadini coscienti","error")
					end
				end
			end)
		else
			LocalPlayer.state.busy = true
			if lib.progressCircle({
				label = "Applicando bendaggio",
				duration = 20000,
				anim = {
					dict = 'anim@heists@narcotics@funding@gang_idle',
					clip = 'gang_chatting_idle01',
				},
				disable = {
					move = true
				},
				canCancel = false,
			}) then
				TriggerServerEvent("useItem", "bende", 1)
				if not ESX.Death.getDeath() then
					ESX.Death.Revive()
				end
				ESX.ShowNotification("Hai applicato il bendaggio, ora ti senti meglio!","success")
			end
			LocalPlayer.state.busy = false
		end
	end
end)

local wheelchair
Item('carrozzina', function(data, slot)
	--print(wheelchair)
	--local i, job = ESX.GetPlayerJobFromName("ems")
	--if i and job.duty then
		if wheelchair then
			local input = lib.inputDialog('Carrozzina', {
				{ type = 'select', label = 'Fai una scelta', options = {
					{ value = 'load', label = 'Carica/Scarica Paziente' },
					{ value = 'delete', label = 'Metti a posto Sedia' },
				}},
			})
			if input then
				if input[1]=="load" then
					ESX.SelectVehicle("Seleziona una sedia", 2.0, function(vehicle)
						if vehicle then
							if IsVehicleModel(vehicle, GetHashKey("wheelchair")) then
								if ESX.Game.IsVehicleEmpty(vehicle) then
									ESX.SelectPlayer("Seleziona il paziente", 2.0, function(player)
										if player then
											TriggerServerEvent("wheelchair:load", player, NetworkGetNetworkIdFromEntity(vehicle))
										end
									end)
								else
									local ped = GetPedInVehicleSeat(vehicle, -1)
									print(ped,GetPlayerServerId(ped))
									TriggerServerEvent("wheelchair:remove", GetPlayerServerId(ped))
								end
							else
								ESX.ShowNotification("Devi selezionare una sedia a rotelle!","error")
							end
						end
					end)
				elseif input[1]=="delete" then
					if lib.progressCircle({
						duration = 2000,
						position = 'bottom',
						useWhileDead = false,
						canCancel = true,
						disable = {
							car = true,
						},
						anim = {
							flag=0,
							scenario= 'CODE_HUMAN_MEDIC_TEND_TO_DEAD'
						},
					}) then
						NetworkRequestControlOfEntity(wheelchair)
						while not NetworkHasControlOfEntity(wheelchair) do Wait(10) end
						local del = ESX.Game.DeleteVehicle(wheelchair)
						wheelchair = nil
						ESX.ShowNotification('Hai messo a posto la sedia a rotelle!',"success")
					end
				end
			end
		else
			if lib.progressCircle({
				duration = 2000,
				position = 'bottom',
				useWhileDead = false,
				canCancel = true,
				disable = {
					car = true,
				},
				anim = {
					flag=0,
					scenario= 'CODE_HUMAN_MEDIC_TEND_TO_DEAD'
				},
			}) then
				local spawnedVeh = ESX.Game.SpawnVehicle('iak_wheelchair', GetEntityCoords(cache.ped) + vector3( 0.0, 0.8, 0.5), GetEntityHeading(cache.ped))
				if spawnedVeh then
					--print(spawnedVeh)
					ESX.ShowNotification('Hai preso la sedia a rotelle!',"success")
					SetVehicleFuelLevel(spawnedVeh, 100)
					wheelchair = spawnedVeh
				end
			end
		end
	--else
		--ESX.ShowNotification('Non puoi usare una carrozzina!',"error")
	--end
end)

RegisterNetEvent("wheelchair:load", function(vehicle)
	vehicle = NetworkGetEntityFromNetworkId(vehicle)
	TaskWarpPedIntoVehicle(cache.ped, vehicle, -1)
end)

RegisterNetEvent("wheelchair:remove", function()
	TaskLeaveVehicle(cache.ped, GetVehiclePedIsIn(cache.ped, false), 16)
end)

RegisterNetEvent("benda", function()
	LocalPlayer.state.busy = true
	if lib.progressCircle({
		label = "Ti stanno medicando",
		duration = 20000,
		anim = {
			dict = "anim@heists@fleeca_bank@ig_7_jetski_owner",
			clip = "owner_idle",
		},
		disable = {
			move = true
		},
		canCancel = false,
	}) then
		if not ESX.Death.getDeath() then
			ESX.Death.Revive()
			ESX.ShowNotification("Ti hanno medicato, ora ti senti meglio!","success")
		end
	end
	LocalPlayer.state.busy = false
end)


Item('armour', function(data, slot)
	--[[if GetPedArmour(cache.ped) < 100 then
		ox_inventory:useItem(data, function(data)
			if data then
				SetPlayerMaxArmour(PlayerData.id, 100)
				SetPedArmour(cache.ped, 100)
			end
		end)
	end]]
	--TriggerServerEvent("mbt_metaclothes:data", data)
	local sexLabel = { ["m"] = "man", ["f"] = "woman"}
	if PlayerData.sex ~= slot.metadata.sex then
	  	-- Trigger your notify here
    	-- Text: This piece of clothing is not for "..sexLabel[PlayerData.sex]     
	end
	TriggerEvent("mbt_metaclothes:checkDress", {
		type = "Drawables",
		index = slot.metadata.index, 
		sex = PlayerData.sex,
		cb = function(canDress)
			ox_inventory:useItem(data, function(data)
				if data then
					TriggerEvent("mbt_metaclothes:applyDress", slot.metadata)
				end
			end)
		end
	})
end)

Item('topdress', function(data, slot)
	local sexLabel = { ["m"] = "man", ["f"] = "woman"}
	if PlayerData.sex ~= slot.metadata.sex then 
    	-- Trigger your notify here
    	-- Text: This piece of clothing is not for "..sexLabel[PlayerData.sex]
	end

	TriggerEvent("mbt_metaclothes:checkDress", {
		type = "Drawables",
		index = slot.metadata,
		sex = PlayerData.sex,
		cb = function(canDress)
			ox_inventory:useItem(data, function(data)
				if data then
					TriggerEvent("mbt_metaclothes:applyKitDress", slot.metadata)
				end
			end)
		end
	})
end)

Item('trousers', function(data, slot)
	local sexLabel = { ["m"] = "man", ["f"] = "woman"}
	if PlayerData.sex ~= slot.metadata.sex then
	  	-- Trigger your notify here
    	-- Text: This piece of clothing is not for "..sexLabel[PlayerData.sex]     
	end
	print("ciao")
	TriggerEvent("mbt_metaclothes:checkDress", {
		type = "Drawables",
		index = slot.metadata.index, 
		sex = PlayerData.sex,
		cb = function(canDress)
			ox_inventory:useItem(data, function(data)
				if data then
					TriggerEvent("mbt_metaclothes:applyDress", slot.metadata)
				end
			end)
		end
	})
end)

Item('shoes', function(data, slot)
	--TriggerServerEvent("mbt_metaclothes:data", data)
	local sexLabel = { ["m"] = "man", ["f"] = "woman"}
	if PlayerData.sex ~= slot.metadata.sex then
		-- Trigger your notify here
    	-- Text: This piece of clothing is not for "..sexLabel[PlayerData.sex]    
	end
	TriggerServerEvent("mbt_metaclothes:data2", slot)
	TriggerEvent("mbt_metaclothes:checkDress", {
		type = "Drawables",
		index = slot.metadata.index, 
		sex = PlayerData.sex,
		cb = function(canDress)
			ox_inventory:useItem(data, function(data)
				TriggerServerEvent("mbt_metaclothes:data2", data)
				if data then
					
					TriggerEvent("mbt_metaclothes:applyDress", slot.metadata)
				end
			end)
		end
	})
end)

Item('chain', function(data, slot)
	print(data, slot)
	--TriggerServerEvent("mbt_metaclothes:data", data, slot)
	local sexLabel = { ["m"] = "man", ["f"] = "woman"}
	if PlayerData.sex ~= slot.metadata.sex then
	  	-- Trigger your notify here
    	-- Text: This piece of clothing is not for "..sexLabel[PlayerData.sex]     
	end
  
	TriggerEvent("mbt_metaclothes:checkDress", {
		type = "Drawables",
		index = slot.metadata.index, 
		sex = PlayerData.sex,
		cb = function(canDress)
			
			ox_inventory:useItem(data, function(data)
				if data then
					--TriggerServerEvent("mbt_metaclothes:data",  slot.metadata)
					TriggerEvent("mbt_metaclothes:applyProps", slot.metadata)
				end
			end)
		end
	})
end)

Item('watch', function(data, slot)
	local sexLabel = { ["m"] = "man", ["f"] = "woman"}
	if PlayerData.sex ~= slot.metadata.sex then
		-- Trigger your notify here
   		-- Text: This piece of clothing is not for "..sexLabel[PlayerData.sex]   
	end
  
	TriggerEvent("mbt_metaclothes:checkDress", {
		type = "Props",
		index = slot.metadata.index, 
		sex = PlayerData.sex,
		cb = function(canDress)
			
			ox_inventory:useItem(data, function(data)
				if data then
					TriggerEvent("mbt_metaclothes:applyProp", slot.metadata)
				end
			end)
		end
	})
end)

Item('hat', function(data, slot)
	TriggerServerEvent("mbt_metaclothes:data", data, slot)
	local sexLabel = { ["m"] = "man", ["f"] = "woman"}
	if PlayerData.sex ~= slot.metadata.sex then
		-- Trigger your notify here
   		-- Text: This piece of clothing is not for "..sexLabel[PlayerData.sex]   
	end
  
	TriggerEvent("mbt_metaclothes:checkDress", {
		type = "Props",
		index = slot.metadata.index, 
		sex = PlayerData.sex,
		cb = function(canDress) 
			
			ox_inventory:useItem(data, function(data)
				if data then
					TriggerEvent("mbt_metaclothes:applyProp", slot.metadata)
				end
			end)
		end
	})
end)

Item('glasses', function(data, slot)
	local sexLabel = { ["m"] = "man", ["f"] = "woman"}
	if PlayerData.sex ~= slot.metadata.sex then
		-- Trigger your notify here
    	-- Text: This piece of clothing is not for "..sexLabel[PlayerData.sex]      
	end
  
	TriggerEvent("mbt_metaclothes:checkDress", {
		type = "Props",
		index = slot.metadata.index, 
		sex = PlayerData.sex,
		cb = function(canDress)
			
			ox_inventory:useItem(data, function(data)
				if data then
					TriggerEvent("mbt_metaclothes:applyProp", slot.metadata)
				end
			end)
		end
	})
end)

Item('earaccess', function(data, slot)
	local sexLabel = { ["m"] = "man", ["f"] = "woman"}
	if PlayerData.sex ~= slot.metadata.sex then
		-- Trigger your notify here
    	-- Text: This piece of clothing is not for "..sexLabel[PlayerData.sex]      
	end
  
	TriggerEvent("mbt_metaclothes:checkDress", {
		type = "Props",
		index = slot.metadata.index, 
		sex = PlayerData.sex,
		cb = function(canDress)
			
			ox_inventory:useItem(data, function(data)
				if data then
					TriggerEvent("mbt_metaclothes:applyProp", slot.metadata)
				end
			end)
		end
	})
end)

Item('mask', function(data, slot)
	local sexLabel = { ["m"] = "man", ["f"] = "woman"}
	if PlayerData.sex ~= slot.metadata.sex then
		-- Trigger your notify here
    	-- Text: This piece of clothing is not for "..sexLabel[PlayerData.sex]      
	end
  
	TriggerEvent("mbt_metaclothes:checkDress", {
		type = "Props",
		index = slot.metadata.index, 
		sex = PlayerData.sex,
		cb = function(canDress)
			--[[if not canDress then
				-- Trigger your notify here
				return 
			end]] 
			
			ox_inventory:useItem(data, function(data)
				if data then
					TriggerEvent("mbt_metaclothes:applyDress", slot.metadata)
				end
			end)
		end
	})
end)

Item('bracelet', function(data, slot)
	local sexLabel = { ["m"] = "man", ["f"] = "woman"}
	if PlayerData.sex ~= slot.metadata.sex then
		-- Trigger your notify here
    	-- Text: This piece of clothing is not for "..sexLabel[PlayerData.sex]      
	end
  
	TriggerEvent("mbt_metaclothes:checkDress", {
		type = "Props",
		index = slot.metadata.index, 
		sex = PlayerData.sex,
		cb = function(canDress)
			
			ox_inventory:useItem(data, function(data)
				if data then
					TriggerEvent("mbt_metaclothes:applyProp", slot.metadata)
				end
			end)
		end
	})
end)

-----------------------------------------------------------------------------------------------

exports('Items', function(item) return getItem(nil, item) end)
exports('ItemList', function(item) return getItem(nil, item) end)

return Items
