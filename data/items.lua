return {

	['testburger'] = {
		label = 'Hamburger di Test',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'che hamburger delizioso, vero?'
		},
		buttons = {
			{
				label = 'Leccalo',
				action = function(slot)
					print('Hai leccato l\'hamburger')
				end
			},
			{
				label = 'Spremilo',
				action = function(slot)
					print('Hai schiacciato l\'hamburger :(')
				end
			},
			{
				label = 'Come si chiama un hamburger vegano?',
				group = 'Pun sui hamburger',
				action = function(slot)
					print('Un errore di cottura.')
				end
			},
			{
				label = 'Cosa mangiano le rane con gli hamburger?',
				group = 'Pun sui hamburger',
				action = function(slot)
					print('Mosche francesi.')
				end
			},
			{
				label = 'Perché l\'hamburger e le patatine correvano?',
				group = 'Pun sui hamburger',
				action = function(slot)
					print('Perché sono cibo veloce.')
				end
			}
		},
		consume = 0.3
	},
	['bandage'] = {
		label = 'Bende',
		weight = 115,
		description = "Una semplice benda usata per coprire e proteggere le ferite.",
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},
	['adrenaline'] = {
		label = 'Adrenalina',
		weight = 115,
		description = "Un iniettore di adrenalina usato per rianimare i pazienti in arresto cardiaco.",
		--[[client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}]]
		client = {
			export = 'xert_resources.adrenaline'			
		}
	},
	['medicalbag'] = {
		label = 'Borsa Medica',
		weight = 220,
		stack = true,
		description = "Un kit medico completo per curare ferite e malattie.",
		server = {
			export = "xert_resources.medicalbag"
		}
	},
	
	['defibrillator'] = {
		label = 'Defibrillatore',
		weight = 100,
		stack = true,
		description = "Usato per rianimare i pazienti.",
	},
	
	['tweezers'] = {
		label = 'Pinzette',
		weight = 100,
		stack = true,
		description = "Pinzette di precisione per rimuovere in sicurezza oggetti estranei, come proiettili, dalle ferite.",
	},

	['anestesia_1'] = {
		label = 'Anestesia Di Tipo A',
		weight = 500,
		stack = true,
		description = "Un tipo di anestesia utilizzata per interventi chirurgici minori.",
	},
	['divaricatore'] = {
		label = 'Divaricatore',
		weight = 1500,
		stack = true,
		description = "Strumento chirurgico utilizzato per mantenere aperte le incisioni.",
	},
	['sega_toracica'] = {
		label = 'Sega toracica',
		weight = 2500,
		stack = true,
		description = "Strumento utilizzato per tagliare le ossa del torace durante interventi chirurgici.",
	},
	['pinza_chirurgica'] = {
		label = 'Pinza chirurgica',
		weight = 300,
		stack = true,
		description = "Strumento utilizzato per afferrare e manipolare i tessuti durante la chirurgia.",
	},
	['elettrobisturi'] = {
		label = 'Elettrobisturi',
		weight = 2000,
		stack = true,
		description = "Strumento chirurgico che utilizza corrente elettrica per tagliare i tessuti e cauterizzare le ferite.",
	},
	['bisturi'] = {
		label = 'Bisturi',
		weight = 50,
		stack = true,
		description = "Strumento affilato utilizzato per fare incisioni precise nei tessuti.",
	},
	['pinza_emostatica'] = {
		label = 'Pinza emostatica',
		weight = 300,
		stack = true,
		description = "Strumento utilizzato per fermare il sanguinamento durante gli interventi chirurgici.",
	},
	['stent'] = {
		label = 'Stent',
		weight = 100,
		stack = true,
		description = "Dispositivo utilizzato per mantenere aperti i vasi sanguigni.",
	},
	['pasemaker'] = {
		label = 'Pacemaker',
		weight = 200,
		stack = true,
		description = "Dispositivo impiantabile che regola il battito cardiaco.",
	},
	['protesi_anca'] = {
		label = 'Protesi anca',
		weight = 3000,
		stack = true,
		description = "Dispositivo utilizzato per sostituire un'articolazione dell'anca danneggiata.",
	},
	['rasoio'] = {
		label = 'Rasoio',
		weight = 25,
		stack = true,
		description = "Strumento utilizzato per rimuovere i peli dalla pelle prima di un intervento chirurgico.",
	},
	['kit_sutura_interno'] = {
		label = 'Kit sutura interno',
		weight = 800,
		stack = true,
		description = "Kit completo per suturare le ferite interne.",
	},
	['viti'] = {
		label = 'Viti',
		weight = 200,
		stack = true,
		description = "Viti chirurgiche utilizzate per fissare le ossa durante la guarigione.",
	},
	['placche'] = {
		label = 'Placche',
		weight = 600,
		stack = true,
		description = "Placche metalliche utilizzate per stabilizzare le ossa fratturate.",
	},
	['antidoto_1'] = {
		label = 'Antidoto Di tipo A',
		weight = 200,
		stack = true,
		description = "Antidoto utilizzato per neutralizzare specifici veleni o tossine.",
	},
	['disinfettante'] = {
		label = 'Disinfettante',
		weight = 1000,
		stack = true,
		description = "Soluzione utilizzata per disinfettare le ferite e prevenire infezioni.",
	},
	['bende'] = {
		label = 'Bende',
		weight = 100,
		stack = true,
		description = "Materiale utilizzato per coprire e proteggere le ferite.",
	},
	['kit_sutura_esterno'] = {
		label = 'Kit sutura esterno',
		weight = 800,
		stack = true,
		description = "Kit completo per suturare le ferite esterne.",
	},
	--[[
                stabilizzatore cervicale
                stabilizzatore piedi
                trapano cranico
            ]]


	['stabilizzatore_cervicale'] = {
		label = 'Stabilizzatore cervicale',
		weight = 100,
		stack = true,
		description = "Strumento utilizzato per stabilizzare la colonna vertebrale durante la gestione dei traumi.",
	},

    ['stabilizzatore_piedi'] = {
        label = 'Stabilizzatore piedi',
        weight = 100,
		stack = true,
		description = "Strumento utilizzato per stabilizzare i piedi durante la gestione dei traumi.",
	},
	
	['trapano_cranico'] = {
        label = 'Trapano cranico',
        weight = 100,
        stack = true,
		description = "Strumento utilizzato per praticare un foro nel cranio per la chirurgia cerebrale.",
	},

	
	['burncream'] = {
		label = 'Crema per Ustioni',
		weight = 100,
		stack = true,
		description = "Crema specializzata per trattare e lenire ustioni minori e irritazioni cutanee.",
	},
	
	['suturekit'] = {
		label = 'Kit di Sutura',
		weight = 100,
		stack = true,
		description = "Un kit contenente strumenti chirurgici e materiali per suturare e chiudere le ferite.",
	},
	
	['icepack'] = {
		label = 'Borsa del Ghiaccio',
		weight = 200,
		stack = true,
		description = "Una borsa del ghiaccio utilizzata per ridurre il gonfiore e fornire sollievo dal dolore e dall'infiammazione.",
	},
	
	['stretcher'] = {
		label = 'Sedile per Trasporto',
		weight = 200,
		stack = true,
		description = "Un sedile per il trasporto utilizzato per ridurre il gonfiore e fornire sollievo dal dolore e dall'infiammazione.",
	},

	['emstablet'] = {
		label = 'Tablet EMS',
		weight = 200,
		stack = true,
		client = {
			export = 'xert_resources.openDistressCalls'
		}
	},

	['pos'] = {
		label = 'Pos',
		weight = 200,
		stack = false,
	},

	['policetablet'] = {
		label = 'Tablet Polizia',
		weight = 200,
		stack = false,
		client = {
			export = 'ox_mdt.openMDT'
		}
	},

	['burger'] = {
		label = 'Hamburger',
		weight = 220,
		consume = 0.50,
		client = {
			status = { hunger = 400000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'Hai mangiato un hamburger delizioso'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		consume = 0.50,
		client = {
			status = { thirst = 400000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Hai placato la tua sete con la cola'
		}
	},

	['garbage'] = {
		label = 'Spazzatura',
	},

	['paperbag'] = {
		label = 'Sacchetto di Carta',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Documento di Identità',
	},

	['panties'] = {
		label = 'Mutandine',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['mustard'] = {
		label = 'Senape',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'Hai... bevuto la senape'
		}
	},

	['water'] = {
		label = 'Acqua',
		weight = 500,
		consume = 0.50,
		client = {
			status = { thirst = 400000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'Hai bevuto dell\'acqua rinfrescante'
		}
	},

	['clothing'] = {
		label = 'Abbigliamento',
		consume = 0,
	},

	['scrapmetal'] = {
		label = 'Metallo di Recupero',
		weight = 80,
	},
	['boombox'] = {
		label = 'Boombox',
		weight = 2000,
	},

	--------------------------------------------------------------
	--CLOTHING
	--------------------------------------------------------------
	['topdress'] = {
		label 		= 'Vestiti superiori',
		description = 'YOUR_DESCRIPTION',
		weight 		= 100,
		stack 		= true,
		close 		= true,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d', flag = 51 },
			usetime = 1200,
		}
	},
	['jacket'] = {
		label 		= 'Giaccca',
		description = 'YOUR_DESCRIPTION',
		weight 		= 100,
		stack 		= true,
		close 		= true,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d', flag = 51 },
			usetime = 1200,
		}
	},
	['trousers'] = {
		label 		= 'Pantaloni',
		description = 'YOUR_DESCRIPTION',
		weight 		= 100,
		stack 		= true,
		close 		= true,
		client = {
			anim = { dict = 're@construction', clip = 'out_of_breath', flag = 51 },
			usetime = 1200,
		}
	},
	['shoes'] = {
		label 		= 'Scarpe',
		description = 'YOUR_DESCRIPTION',
		weight 		= 100,
		stack 		= true,
		close 		= true,
		client = {
			anim = { dict = 'random@domestic', clip = 'pickup_low', flag = 0 },
			usetime = 1200,
		}
	},
	['hat'] = {
		label 		= 'Cappello',
		description = 'YOUR_DESCRIPTION',
		weight 		= 100,
		stack 		= true,
		close 		= true,
		client = {
			anim = { dict = 'missheist_agency2ahelmet', clip = 'take_off_helmet_stand', flag = 51 },
			usetime = 1200,
		}
	},
	['glasses'] = {
		label 		= 'Occhiali',
		description = 'YOUR_DESCRIPTION',
		weight 		= 100,
		stack 		= true,
		close 		= true,
		client = {
			anim = { dict = 'clothingspecs', clip = 'take_off', flag = 51 },
			usetime = 1200,
		}
	},
	['earaccess'] = {
		label 		= 'Accessori orecchie',
		description = 'YOUR_DESCRIPTION',
		weight 		= 100,
		stack 		= true,
		close 		= true,
		client = {
			anim = { dict = 'mp_cp_stolen_tut', clip = 'b_think', flag = 51 },
			usetime = 1200,
		}
	},
	['chain'] = {
		label 		= 'Accessori collo',
		description = 'Accessori collo',
		weight 		= 100,
		stack 		= true,
		close 		= true,
		client = {
			anim = { dict = 'clothingtie', clip = 'try_tie_positive_a', flag = 51 },
			usetime = 2500,
		}
	},
	['watch'] = {
		label 		= 'Orologio',
		description = 'Orologio',
		weight 		= 100,
		stack 		= true,
		close 		= true,
		client = {
			anim = { dict = 'nmt_3_rcm-10', clip = 'cs_nigel_dual-10', flag = 51 },
			usetime = 900,
		}
	},
	['mask'] ={
		label 		= 'Maschera',
		description = 'Maschera',
		weight 		= 100,
		stack 		= true,
		close 		= true,
		client = {
			anim = { dict = 'nmt_3_rcm-10', clip = 'cs_nigel_dual-10', flag = 51 },
			usetime = 900,
		}
	},
	['bracelet'] = {
		label 		= 'Braccialetto',
		description = 'Braccialetto',
		weight 		= 100,
		stack 		= true,
		close 		= true,
		client = {
			anim = { dict = 'nmt_3_rcm-10', clip = 'cs_nigel_dual-10', flag = 51 },
			usetime = 900,
		}
	},
	--------------------------------------------------------------
	--PRODOTTI PER SERVIZI
	--------------------------------------------------------------



	--[[
					ero1
					ero2

					coke1
					coke2

					meth1
					meth2

					weed1
					weed2




		

					ITEM DROGA NUOVI
		
		['purplethai_blueprint'] = {
			label = 'formula purplethai',
			weight = 0.1,
			stack = true,
			close = true,
			description = "La ricetta per l'erba più creativa di tutte!"
		},
		
		['colombiangold_blueprint'] = {
			label = 'formula colombiangold',
			weight = 0.1,
			stack = true,
			close = true,
			description = "La ricetta per l'erba più potente di tutte!"
		},

		['mexicansativa_blueprint'] = {
			label = 'formula mexicansativa',
			weight = 0.1,
			stack = true,
			close = true,
			description = "La ricetta messicana definitiva. E non è una salsa..."
		},
		


	]]
		
		['weed_seed'] = {
			label = 'Semi di Cannabis',
			weight = 1,
			stack = true,
			close = true,
			description = "Semi di cannabis, per una coltivazione di qualità.",
			server = {
				export = "xert_resources.weed_seed"
			}
		},
		['female_seed'] = {
			label = 'Semi Femminili',
			weight = 1,
			stack = true,
			close = true,
			description = "Semi di cannabis femminili, per una coltivazione di qualità.",
		},
		['male_seed_superskunk'] = {
			label = 'Semi Maschili SuperSkunk',
			weight = 1,
			stack = true,
			close = true,
			description = "Semi di cannabis maschili, per una coltivazione di qualità.",
		},

		['male_seed_skunk'] = {
			label = 'Semi Maschili Skunk',
			weight = 1,
			stack = true,
			close = true,
			description = "Semi di cannabis maschili, per una coltivazione di qualità.",
		},

		['male_seed_purplethai'] = {
			label = 'Semi Maschili Purplethai',
			weight = 1,
			stack = true,
			close = true,
			description = "Semi di cannabis maschili, per una coltivazione di qualità.",
		},

		['male_seed_mexicans'] = {
			label = 'Semi Maschili Mexican',
			weight = 1,
			stack = true,
			close = true,
			description = "Semi di cannabis maschili, per una coltivazione di qualità.",
		},

		['male_seed_colombian'] = {
			label = 'Semi Maschili Colombian',
			weight = 1,
			stack = true,
			close = true,
			description = "Semi di cannabis maschili, per una coltivazione di qualità.",
		},

		['weed_nutrition'] = {
			label = 'Nutrizione per Cannabis',
			weight = 200,
			stack = false,
			close = true,
			description = "Nutrizione per la tua pianta di cannabis."
		},

		['plant_tub'] = {
			label = 'Vaso per Pianta',
			weight = 200,
			stack = false,
			close = true,
			description = "Vaso per la tua pianta di cannabis.",
			buttons = {
				{
					label = 'Riempi',
					action = function(slot)
						local count  = exports.ox_inventory:Search('count','topsoil')
						lib.callback.await('filltub', false, slot, count)
					end
				}
			}
		},



		['watering_can'] = {
			label = 'Annaffiatoio',
			weight = 1500,
			stack = false,
			close = true,
			description = "Annaffiatoio, per le tue adorabili piantine.",
			buttons = {
				{
					label = 'Riempi',
					action = function(slot)
						local count  = exports.ox_inventory:Search('count','acqua')
						lib.callback.await('refillCan', false, slot, count)
					end
				}
			}
		},

		['weedplant_branch'] = {
			label = 'Ramo di Cannabis',
			weight = 10.0,
			stack = true,
			close = true,
			description = "Ramo di cannabis, per la tua pianta di cannabis."
		},

		['topsoil'] ={
			label = 'Terriccio',
			weight = 1000,
			stack = true,
			close = true,
			description = "Terriccio, per la tua pianta di cannabis."
		},
		
		['fertilizers'] ={
			label = 'Fertilizzante',
			weight = 500,
			stack = false,
			close = true,
			description = "Fertilizzante, per la tua pianta di cannabis.",
			metadata = { durability = 100 }
		},

		['ero1'] = {
			label = 'Eroina da processare',
			weight = 1
		},

		['ero2'] = {
			label = 'Eroina processata',
			weight = 5
		},

		['coke1'] = {
			label = 'Cocaina da processare',
			weight = 1
		},

		['coke2'] = {
			label = 'Cocaina processata',
			weight = 5
		},

		['meth1'] = {
			label = 'Meth da processare',
			weight = 2
		},

		['meth2'] = {
			label = 'Meth processata',
			weight = 5
		},

		['weed1'] = {
			label = 'Erba da processare',
			weight = 2
		},

		['weed2'] = {
			label = 'Erba processata',
			weight = 5
		},
	
		['repair_kit'] = {
			label = 'Kit di Riparazione',
			weight = 200
		},
	
		['armour'] = {
			label = 'Giubbotto antiproiettile',
			weight = 3000,
			stack = false,
			client = {
				anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
				usetime = 3500
			}
		},

		['parachute'] = {
			label = 'Paracadute',
			weight = 8000,
			stack = false,
			client = {
				anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
				usetime = 1500
			}
		},
	
		['lockpick'] = {
			label = 'Grimaldello',
			weight = 160,
			buttons = {
				{
					label = 'Migliora',
					action = function(slot)
						local data = {accept= "screwdriverset",reward = "advancedlockpick", nreward = 1, animdict = "Scenario", animlib = "PROP_HUMAN_PARKING_METER", animtext = "Stai montando il grimaldello", animtimeOut = 7500, noremove = ""}
						TriggerEvent("combina:item", data, slot)
					end
				}
			}
		},
	
		['carrozzina'] = {
			label = 'Sedia a Rotelle',
		},
		
		['bastone'] ={
			label = 'Bastone da passeggio',
			weight = 300,
			stack = false,
			close = true,
			description = "Un bastone da passeggio, per camminare con stile.",
			client = {
				export = 'xert_resources.bastone'
			}
		},
	
		['tire'] = {
			label = 'Ruota',
			weight = 200
		},
	
		['chiave_veicolo'] = {
			label = 'chiave veicolo',
			weight = 1,
			stack = false,
			close = true,
			description = "chiave del veicolo",
	
			cantremove = true,
			buttons = {
				{
					label = 'Info',
					action = function(slot)
						local ESX = exports.es_extended:getSharedObject()
						ESX.Garage.InfoVehicle(slot)
					end
				},
				{
					label = 'Gestione Veicolo',
					action = function(slot)
						local ESX = exports.es_extended:getSharedObject()
						ESX.Garage.UseKey(slot)
					end
				},
				{
					label = 'Vendi Veicolo',
					action = function(slot)
						local ESX = exports.es_extended:getSharedObject()
						ESX.Garage.Sell(slot)
					end
				}
			}
		},
		['chiave_casa'] = {
			label = 'chiave casa',
			weight = 1,
			stack = false,
			close = true,
			description = "chiave del veicolo",
		},

		['gym_membership_laf'] = {
			label = 'Abbonamento LaFitness',
			weight = 1,
			stack = false,
			close = true,
		},
	
		['portachiavi_aziendale'] = {
			label = 'Portachiavi Veicoli Aziendali',
			cantremove = true,
		},
		
		['portachiavi'] = {
			label = 'Portachiavi Veicolo',
			weight = 1,
			cantremove = true,
		},
		['portachiavi_casa'] = {
			label = 'Portachiavi casa',
			weight = 1,
			cantremove = true,
		},

		['portafoglio'] = {
			label = 'Portafoglio',
			cantremove = true,
		},

		--SIGARETTE

			['redwoods'] = {
				label = 'Redwoods',
				weight = 25,
				stack = false,
				close = true,
				description = 'Pack of Original Red Wood Killer Cigarettes',
				consume = 0,
				buttons = {
					{
						label = 'Rimuovi Sigaretta',
						action = function(slot)
							TriggerServerEvent('gr8_stuff:item:removeCig', slot, {indent=true})
						end
					},
				}
			},

			['cig'] = {
				label = 'sigaretta',
				weight = 21,
				stack = true,
				close = true,
				description = "5 min di pausa",
				client = {
					status = { stress = -225000 },
					anim = { dict = 'amb@world_human_aa_smoke@male@idle_a', clip = 'idle_c', flag = 49 },
					prop = { model = 'prop_cs_ciggy_01', pos = { x = 0.00, y = 0.0, z = -0.00}, rot = { x = 0.0, y = 0.0, z = 0.0}, bone = 28422 },
					usetime = 25000,
					label = 'Fumando una sigaretta . . .',
				},
				buttons = {
					{
						label = 'Rompi',
						action = function(slot)
							local data = {accept= false, reward = "tabacco", nreward = 2, animdict = "missheistdockssetup1clipboard@base", animlib = "base", animtext = "Stai rompendo la sigaretta", animtimeOut = 10000, noremove = "Si"}
							TriggerEvent("combina:item", data, slot)
						end
					},
				},
			},

			['tabacco'] = {
				label = 'tabacco',
				weight = 0.5,
				stack = true,
				close = true,
				description = "Serve solo ed escusivamente per fare sigarette lunghe."
			},

			['grinder'] = {
				label = 'grinder',
				weight = 100,
				stack = true,
				close = true,
				description = "Grinder della BullDog, utile per tritare i tuoi MATERIALI preferiti ed utilizzarli per altro.."
			},

			['cartina'] = {
				label = 'cartina',
				weight = 0.001,
				stack = true,
				close = true,
				description = "Sono utili in grandi quantità "
			},

			['cartinap'] = {
				label = 'pacchetto di cartine',
				weight = 10,
				stack = true,
				close = true,
				description = "32 cartine lunghe, chissà  a cosa servono...",
				server = {
					export = 'xert_resources.cartinap',
				}
			},

			['lighter'] = {
				label = 'accendino',
				weight = 21,
				stack = true,
				close = true,
				description = "Si chiama Pietro Giovanni, torna indietro senza danni"
			},
		
		--FUOCHI D'ARTIFICIO

			['firework1'] = {
				label = 'fuochi in serie',
				weight = 1500,
				stack = false,
				close = true,
				description = "I classici fuochi d'artificio in serie",
				client = {
					event = 'fireworks:box'
				}
			},
			
			['firework2'] = {
				label = 'cipollone',
				weight = 1500,
				stack = false,
				close = true,
				description = "Classico cipollone",
				client = {
					event = 'fireworks:cylinder'
				}
			},

			['firework3'] = {
				label = 'il razzetto',
				weight = 1500,
				stack = false,
				close = true,
				description = "Un piccolo razzo che spara molto in alto",
				client = {
					event = 'fireworks:rocket'
				}
			},

			['firework4'] = {
				label = 'stelle filanti',
				weight = 1500,
				stack = false,
				close = true,
				description = "Stelle filanti, ma più",
				client = {
					event = 'fireworks:cone'
				}
			},

	
	--------------------------------------------------------------
	--DOCUMENTI PASS
	--------------------------------------------------------------
	
		['documents'] = {
			label = 'Documento',
			weight = 0.03,
			consume = 0,
			stack = false,
			close = true,
			server = {
				export = "xert_idcard.documents"
			}
		},
		
		['drive'] = {
			label = 'Patente di guida',
			weight = 0.03,
			consume = 0,
			stack = false,
			close = true,
			server = {
				export = "xert_idcard.drive"
			}
		},
		
		['weapon'] = {
			label = "Licensa Armi",
			weight = 0.03,
			consume = 0,
			stack = false,
			close = true,
			server = {
				export = "xert_idcard.weapon"
			}
		},
		['boat'] = {
			label = 'Patente di guida',
			weight = 0.03,
			consume = 0,
			stack = false,
			close = true,
			server = {
				export = "xert_idcard.boat"
			}
		},
		
		['plane'] = {
			label = "Licensa Armi",
			weight = 0.03,
			consume = 0,
			stack = false,
			close = true,
			server = {
				export = "xert_idcard.plane"
			}
		},

		['policebadge'] = {
			label = 'Badge Polizia',
			weight = 0.03,
			consume = 0,
			stack = false,
			close = true,
			client = {
				image = 'policebadge.png',
			},
			server = {
				export = "xert_idcard.policebadge"
			}
		},
		['saspbadge'] = {
			label = 'Badge Polizia',
			weight = 0.03,
			consume = 0,
			stack = false,
			close = true,
			client = {
				image = 'policebadge.png',
			},
			server = {
				export = "xert_idcard.policebadge"
			}
		},
		['bcpdbadge'] = {
			label = 'Badge Polizia',
			weight = 0.03,
			consume = 0,
			stack = false,
			close = true,
			client = {
				image = 'policebadge.png',
			},
			server = {
				export = "xert_idcard.policebadge"
			}
		},

		['multiservicebadge'] = {
			label = 'Badge Multiservice',
			weight = 0.03,
			consume = 0,
			stack = false,
			close = true,
			server = {
				export = "xert_idcard.multiservicebadge"
			}
		},
		
		['emsbadge'] = {
			label = "Badge Ems",
			weight = 0.03,
			consume = 0,
			stack = false,
			close = true,
			server = {
				export = "xert_idcard.emsbadge"
			}
		},

		['certificatomedico'] = {
			label = "Certitifato Medico",
			weight = 0.03,
			consume = 0,
			stack = false,
			close = true,
			server = {
				export = "xert_idcard.certificatomedico"
			}
		},

		['referenze'] = {
			label = "Lettere di referenze",
			weight = 0.03,
			stack = false,
			close = true,
		},

		['mappa_marijuana'] = {
            label = "Mappa Rovinata",
            description = "Una lingua di terra bagnata dal mare con affianco un borgo rurale nasconde un campo da ben curare. Se la maria vuoi imbustare affianco una fabbrica bisogna andare, ma attenti al treno che puo arrivare. Ora maca solo impachettare, sta a te cercare",
            weight = 0.03,
            stack = false,
            close = true,
			cantremove = true,
        },

		['mappa_purplethai'] = {
            label = "Mappa Rovinata",
            description = "Da una strada molto popolata degli struzzi si possono osservare li di fianco sotto un telo ormai stanco ci sono dei vasi da non maltrattare. Se le cime vuoi essicare in una fabbrica esposta al sole devi andare, dove ammiri navi cargo passare.",
            weight = 0.03,
            stack = false,
            close = true,
			cantremove = true,
        },

		['mappa_mexican'] = {
            label = "Mappa Rovinata",
            description = "Un albero piantato nel mare fa da ombra a un campo artigianale con vicino legna da tagliare. Se la sostanza vuoi lavorare una barracca di zingari in mare devi trovare",
            weight = 0.03,
            stack = false,
            close = true,
			cantremove = true,
        },

		['mappa_bubbakush'] = {
            label = "Mappa Rovinata",
            description = "Lungo una discesa un po disagiata, ci sono delle barche abbandonate dove volano dei gabbiani che sorvegliano vecchia erba abbandonanta. Non ancora ci sei arrivato? Al 1053 dovrai andare e l'erba rubare.",
            weight = 0.03,
            stack = false,
            close = true,
			cantremove = true,
        },
		--[[('nylonrope', 'Nylon Rope', 1, 0, 1),
('atmred', 'Red Atm', 2, 0, 1),
('atmblue', 'Blue Atm', 2, 0, 1),
('atmgreen', 'Green Atm', 2, 0, 1),
('atmpanel', 'Atm Panel', 1, 0, 1),
('atmcables', 'Atm Cables', 1, 0, 1),
('atmmotherboard', 'Atm Motherboard', 1, 0, 1),
('blowtorch', 'Blowtorch', 1, 0, 1),
('screwdriverset', 'Screwdriverset', 1, 0, 1),
('laserdrill', 'Laser Drill', 1, 0, 1);]]
		['atmred'] = {
			label = 'Atm Rosso',
			weight = 2000,
			stack = false,
			close = true,
			description = "Atm Rosso",
		},
		['atmblue'] = {
			label = 'Atm Blu',
			weight = 2000,
			stack = false,
			close = true,
			description = "Atm Blu",
		},
		['atmgreen'] = {
			label = 'Atm Verde',
			weight = 2000,
			stack = false,
			close = true,
			description = "Atm Verde",
		},
		['atmpanel'] = {
			label = 'Pannello Atm',
			weight = 1000,
			stack = false,
			close = true,
			description = "Pannello Atm",
		},
		['atmcables'] = {
			label = 'Cavi Atm',
			weight = 1000,
			stack = false,
			close = true,
			description = "Cavi Atm",
		},
		['atmmotherboard'] = {
			label = 'Scheda Madre Atm',
			weight = 1000,
			stack = false,
			close = true,
			description = "Scheda Madre Atm",
		},
		['blowtorch'] = {
			label = 'Fiamma Ossidrica',
			weight = 1000,
			stack = false,
			close = true,
			description = "Fiamma Ossidrica",
		},
		['screwdriverset'] = {
			label = 'Set Cacciaviti',
			weight = 1000,
			stack = false,
			close = true,
			description = "Set Cacciaviti",
		},
		['laserdrill'] = {
			label = 'Trapano Laser',
			weight = 1000,
			stack = false,
			close = true,
			description = "Trapano Laser",
		},
		['nylonrope'] = {
			label = 'Corda in Nylon',
			weight = 1000,
			stack = false,
			close = true,
			description = "Corda in Nylon",
			--server = {
			--	export = 'xert_resources.nylonrope'
			--}
		},
	--------------------------------------------------------------
	--COUPON
	--------------------------------------------------------------
		--[[['coupon1'] = {
			label = "Coupon 50K Concessionario",
			weight = 0.00,
			stack = false,
			close = true,
		},
		['coupon2'] = {
			label = "Coupon 50K Officina",
			weight = 0.00,
			stack = false,
			close = true,
		},
		['coupon3'] = {
			label = "Coupon Acquisto Ufficio",
			weight = 0.00,
			stack = false,
			close = true,
		},]]
		['book'] = {
			label = "Manuale",
			weight = 0.00,
			stack = false,
			close = true,
		},

		
	--------------------------------------------------------------
	--LEGALE ILLEGALE
	--------------------------------------------------------------
	
		['money'] = {
			label = 'Contanti',
			weight = 0.01,
		},
	
		['black_money'] = {
			label = 'Contanti',
			weight = 0.01,
		},
		['marenco'] = {
			label = 'Marenco',
			weight = 0.01,
		},
	
		['mastercard'] = {
			label = 'Mastercard',
			weight = 0.01,
		},
	
		['visa'] = {
			label = 'Visa',
			weight = 0.01,
		},
		

		['backpack'] = {
			label = 'Borsone',
			weight = 2000,
			stack = false,
			close = true,
			description = "Chissà  quante belle cose si possono mettere qui dentro..",
			client = {
				export = 'xert_resources.openBackpack'
			}
		},
	
	
	--------------------------------------------------------------
	--ELETTRONICA
	--------------------------------------------------------------
	
	["cryptostick"] = {
		label = "Chiavetta Criptata",
		weight = 50,
		stack = false,
	},

	["telefono_usa_getta"] = {
		label = "Un Vecchio telefono quasi iniutilizzabile",
		weight = 200,
		stack = false,
		buttons = {
			{
				label = 'Chiama contatto in rubrica',
				action = function(slot)
					ExecuteCommand('selldrugs')
				end
			},
		}
		
	},
	
	["phone_dongle"] = {
		label = "Phone Dongle",
		weight = 50,
		stack = false,
	},
	
	["powerbank"] = {
		label = "Power Bank",
		weight = 50,
		stack = false,
	},
	
	['phone'] = {
		label = 'Classic Phone',
		weight = 150,
		stack = false,
		consume = 0,
		client = {
			export = "qs-smartphone-pro.UsePhoneItem",
			add = function(total)
				TriggerServerEvent('phone:itemAdd')
			end,
	
			remove = function(total)
				TriggerServerEvent('phone:itemDelete')
			end
		}
	},
	
	['black_phone'] = {
		label = 'Black Phone',
		weight = 150,
		stack = false,
		consume = 0,
		client = {
			--[[export = "qs-smartphone-pro.UsePhoneItem",
			add = function(total)
				TriggerServerEvent('phone:itemAdd')
			end,
	
			remove = function(total)
				TriggerServerEvent('phone:itemDelete')
			end]]
		}
	},
	
	['yellow_phone'] = {
		label = 'Yellow Phone',
		weight = 150,
		stack = false,
		consume = 0,
		client = {
			export = "qs-smartphone-pro.UsePhoneItem",
			add = function(total)
				TriggerServerEvent('phone:itemAdd')
			end,
	
			remove = function(total)
				TriggerServerEvent('phone:itemDelete')
			end
		}
	},
	
	['red_phone'] = {
		label = 'Red Phone',
		weight = 150,
		stack = false,
		consume = 0,
		client = {
			export = "qs-smartphone-pro.UsePhoneItem",
			add = function(total)
				TriggerServerEvent('phone:itemAdd')
			end,
	
			remove = function(total)
				TriggerServerEvent('phone:itemDelete')
			end
		}
	},
	
	['green_phone'] = {
		label = 'Green Phone',
		weight = 150,
		stack = false,
		consume = 0,
		client = {
			export = "qs-smartphone-pro.UsePhoneItem",
			add = function(total)
				TriggerServerEvent('phone:itemAdd')
			end,
	
			remove = function(total)
				TriggerServerEvent('phone:itemDelete')
			end
		}
	},
	
	['white_phone'] = {
		label = 'White Phone',
		weight = 150,
		stack = false,
		consume = 0,
		client = {
			export = "qs-smartphone-pro.UsePhoneItem",
			add = function(total)
				TriggerServerEvent('phone:itemAdd')
			end,
	
			remove = function(total)
				TriggerServerEvent('phone:itemDelete')
			end
		}
	},

		["tuning_laptop"] = {
			label = "PC TUNING",
			weight = 1,
			stack = true,
			close = true,
			description = "UUUHHHHHHHHHHHHHH"
		},
	
		['radio'] = {
			label = 'Radio',
			weight = 1000,
			stack = false,
			allowArmed = true
		},
	
		['gopro'] = {
			label = 'Gopro',
			weight = 1000,
			stack = false,
			allowArmed = true,
			server = {
				export = 'xert_bodycam.openBoy'
			}
		},
	
		['canon'] = {
			label = 'Machina fotografica professionale',
			weight = 1000,
			stack = false,
			allowArmed = true
		},
	
		['camera'] = {
			label = 'Telecamera cinematografica',
			weight = 1000,
			stack = false,
			allowArmed = true
		},
	
		['mic'] = {
			label = 'Microfono',
			weight = 1000,
			stack = false,
			allowArmed = true
		},
	
		['micspy'] = {
			label = 'Microfono spia',
			weight = 100,
			stack = false,
			allowArmed = true
		},
	
		['micweazle'] = {
			label = 'Microfono Weazle',
			weight = 1000,
			stack = false,
			allowArmed = true
		},
	
		['modem'] = {
			label = 'Modem',
			weight = 1000,
			stack = false,
			allowArmed = true
		},
	
		['svapa'] = {
			label = 'Svapo',
			weight = 1000,
			stack = false,
			allowArmed = true
		},
	
		['laptop'] = {
			label = 'Portatile',
			weight = 1000,
			stack = false,
			allowArmed = true
		},
	
	--------------------------------------------------------------
	--DROGHE
	--------------------------------------------------------------
	---------------------------------------------------WEED
	

			--PURPLETHAI

				['purplethai'] = {
					label = 'Cima/e di purple thai',
					weight = 1,
					stack = true,
					close = true,
					description = 'La Purple Thai, nota anche come "Oregon Purple Thai" e "OPT", è una varietà di marijuana prevalentemente sativa che incrocia la Highland Oaxacan Gold con la Chocolate Thai.',
					buttons = {
						{
							label = 'Trita',
							action = function(slot)
								local data = {accept= "grinder",reward = "purplethai_tritato", nreward = 1, animdict = "amb@world_human_bum_standing@twitchy@idle_a", animlib = "idle_a", animtext = "Stai grindando PurpleThai", animtimeOut = 15000, noremove = "Si"}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},

				['purplethai_mix'] = {
					label = 'Misto pt.t.',
					weight = 1.5,
					stack = true,
					close = true,
					description = "Mix ottenuto da 1g di purple thai tritata e da 0.5g di tabacco",
					buttons = {
						{
							label = 'Rolla',
							action = function(slot)
								local data = {accept= "cartina",reward = "joint_purplethai", nreward = 1, animdict = "amb@code_human_in_car_idles@generic@ds@idle_d", animlib = "idle_j", animtext = "Stai rollando un joint", animtimeOut = 15000, noremove = ""}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},

				['purplethai_tritato'] = {
					label = 'Purple thai tritata',
					weight = 1,
					stack = true,
					close = true,
					description = "Tritato di purple thai ottenuto con il grinder",
					buttons = {
						{
							label = 'Mixa',
							action = function(slot)
								local data = {accept= "tabacco",reward = "purplethai_mix", nreward = 1, animdict = "missheistdockssetup1clipboard@base", animlib = "base", animtext = "Stai mischiando le sostanze", animtimeOut = 10000, noremove = ""}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},

			--COLOMBIANGOLD

				['colombiangold'] = {
					label = 'Cima/e di colombian gold',
					weight = 1,
					stack = true,
					close = true,
					description = 'Colombian Gold, noto anche come "Santa Marta Colombian Gold" e "Santa Marta", è una classica varietà di marijuana sativa autoctona originaria delle montagne di Santa Marta in Colombia. Le sue cime sono soffici e ricoperte di cristalli, irradiando note dolci di limone e lime. Questa sativa autoctona ha generato la famosa Skunk #1, un ibrido che è diventato un punto fermo della cannabis. Gli effetti attivi, edificanti e mirati di Colombian Gold arrivano senza paranoia e ansia, rendendo questa varietà un\'ottima scelta per i consumatori alle prime armi o per coloro che hanno bisogno di rimanere produttivi mentre si curano. L\'oro colombiano può aiutare i pazienti ad alleviare la tensione muscolare, il dolore e altri sintomi fisici, ma le sue qualità stimolanti e felici potrebbero essere utilizzate anche per la depressione e l\'ADD/ADHD.',
					buttons = {
						{
							label = 'Trita',
							action = function(slot)
								local data = {accept= "grinder",reward = "colombiangold_tritato", nreward = 1, animdict = "amb@world_human_bum_standing@twitchy@idle_a", animlib = "idle_a", animtext = "Stai grindando ColombianGold", animtimeOut = 15000, noremove = "Si"}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},

				['colombian_mix'] = {
					label = 'Misto c.t.',
					weight = 1.5,
					stack = true,
					close = true,
					description = "Mix ottenuto da 1g di colombian gold tritata e da 0.5g di tabacco",
					buttons = {
						{
							label = 'Rolla',
							action = function(slot)
								local data = {accept= "cartina",reward = "joint_colombiangold", nreward = 1, animdict = "amb@code_human_in_car_idles@generic@ds@idle_d", animlib = "idle_j", animtext = "Stai rollando un joint", animtimeOut = 15000, noremove = ""}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},

				['colombiangold_tritato'] = {
					label = 'Colombian gold tritata',
					weight = 1,
					stack = true,
					close = true,
					description = "Tritato di colombian gold ottenuto con il grinder",
					buttons = {
						{
							label = 'Mixa',
							action = function(slot)
								local data = {accept= "tabacco",reward = "colombian_mix", nreward = 1, animdict = "missheistdockssetup1clipboard@base", animlib = "base", animtext = "Stai mischiando le sostanze", animtimeOut = 10000, noremove = ""}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},

			--MARIJUANA
				['marijuana'] = {
					label = 'Marijuana',
					weight = 1,
					stack = true,
					close = true,
					description = "La marijuana (chiamata solitamente bila, erba o anche ganja, dal termine hindi गांजा, gānjā) è una sostanza psicoattiva che si ottiene dalle infiorescenze essiccate delle piante femminili di canapa (Cannabis). In tutte le varietà  di canapa sono contenute, in concentrazioni e proporzioni variabili, diverse sostanze psicoattive, stupefacenti e non, tra cui la principale è il delta-9-tetraidrocannabinolo (comunemente detto THC), che rendono la pianta illegale in molti paesi. Esistono tuttavia varietà  coltivabili legalmente, per le quali il limite a questo contenuto viene fissato per legge.",
					buttons = {
						{
							label = 'Trita',
							action = function(slot)
								local data = {accept= "grinder",reward = "marijuana_tritato", nreward = 1, animdict = "amb@world_human_bum_standing@twitchy@idle_a", animlib = "idle_a", animtext = "Stai grindando Marijuana", animtimeOut = 15000, noremove = "Si"}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},

				['marijuana_mix'] = {
					label = 'Misto m.t.',
					weight = 1.5,
					stack = true,
					close = true,
					description = "Mix ottenuto da 1g di marijuana tritata e da 0.5g di tabacco. ",
					buttons = {
						{
							label = 'Rolla',
							action = function(slot)
								local data = {accept= "cartina",reward = "joint", nreward = 1, animdict = "amb@code_human_in_car_idles@generic@ds@idle_d", animlib = "idle_j", animtext = "Stai rollando un joint", animtimeOut = 15000, noremove = ""}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},

				['marijuana_tritato'] = {
					label = 'Marijuana tritata',
					weight = 1,
					stack = true,
					close = true,
					description = "Tritato di marijuana ottenuto con il grinder",
					buttons = {
						{
							label = 'Mixa',
							action = function(slot)
								local data = {accept= "tabacco",reward = "marijuana_mix", nreward = 1, animdict = "missheistdockssetup1clipboard@base", animlib = "base", animtext = "Stai mischiando le sostanze", animtimeOut = 10000, noremove = ""}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},

			--MEXICANSATIVA

				['mexicansativa'] = {
					label = 'Cima/e di mexican sativa',
					weight = 1,
					stack = true,
					close = true,
					description = "La Mexican Sativa è un ibrido contenente sativa 70/30 che offre un brivido edificante e lucido insieme a un fresco aroma di legno di sandalo. Per ridurre il tempo di fioritura della pianta, i breeder di Sensi Seeds hanno incrociato una coltivazione della provincia meridionale di Oaxaca con la robusta sativa africana Durban Poison e dando alla pianta la possibilità di una fioritura rapida.",
					buttons = {
						{
							label = 'Trita',
							action = function(slot)
								local data = {accept= "grinder",reward = "mexicansativa_tritato", nreward = 1, animdict = "amb@world_human_bum_standing@twitchy@idle_a", animlib = "idle_a", animtext = "Stai grindando MexicanSativa", animtimeOut = 15000, noremove = "Si"}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},

				['mexicansativa_mix'] = {
					label = 'Misto ms.t.',
					weight = 1.5,
					stack = true,
					close = true,
					description = "Mix ottenuto da 1g di mexican sativa tritata e da 0.5g di tabacco",
					buttons = {
						{
							label = 'Rolla',
							action = function(slot)
								local data = {accept= "cartina",reward = "joint_mexicansativa", nreward = 1, animdict = "amb@code_human_in_car_idles@generic@ds@idle_d", animlib = "idle_j", animtext = "Stai rollando un joint", animtimeOut = 15000, noremove = ""}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},

				['mexicansativa_tritato'] = {
					label = 'Mexican sativa tritata',
					weight = 1,
					stack = true,
					close = true,
					description = "Tritato di mexican sativa ottenuto con il grinder",
					buttons = {
						{
							label = 'Mixa',
							action = function(slot)
								local data = {accept= "tabacco",reward = "mexicansativa_mix", nreward = 1, animdict = "missheistdockssetup1clipboard@base", animlib = "base", animtext = "Stai mischiando le sostanze", animtimeOut = 10000, noremove = ""}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},

				['skunk'] = {
					label = 'Cima/e di skunk',
					weight = 1,
					stack = true,
					close = true,
					description = "La Skunk è una varietà di marijuana ibrida che ha influenzato la coltivazione di cannabis in tutto il mondo, come una delle prime varietà ibride stabili. Skunk #1 è una varietà ibrida a dominanza indica che ha influenzato la coltivazione di cannabis in tutto il mondo, come una delle prime varietà ibride stabili. Skunk #1 è una varietà ibrida a dominanza indica che ha influenzato la coltivazione di cannabis in tutto il mondo, come una delle prime varietà ibride stabili.",
					buttons = {
						{
							label = 'Trita',
							action = function(slot)
								local data = {accept= "grinder",reward = "skunk_tritato", nreward = 1, animdict = "amb@world_human_bum_standing@twitchy@idle_a", animlib = "idle_a", animtext = "Stai grindando Skunk", animtimeOut = 15000, noremove = "Si"}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},

				['skunk_mix'] = {
					label = 'Misto s.t.',
					weight = 1.5,
					stack = true,
					close = true,
					description = "Mix ottenuto da 1g di skunk tritata e da 0.5g di tabacco",
					buttons = {
						{
							label = 'Rolla',
							action = function(slot)
								local data = {accept= "cartina",reward = "joint_skunk", nreward = 1, animdict = "amb@code_human_in_car_idles@generic@ds@idle_d", animlib = "idle_j", animtext = "Stai rollando un joint", animtimeOut = 15000, noremove = ""}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},

				['skunk_tritato'] = {
					label = 'Skunk tritata',
					weight = 1,
					stack = true,
					close = true,
					description = "Tritato di skunk ottenuto con il grinder",
					buttons = {
						{
							label = 'Mixa',
							action = function(slot)
								local data = {accept= "tabacco",reward = "skunk_mix", nreward = 1, animdict = "missheistdockssetup1clipboard@base", animlib = "base", animtext = "Stai mischiando le sostanze", animtimeOut = 10000, noremove = ""}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},

				['superskunk'] = {
					label = 'Cima/e di super skunk',
					weight = 1,
					stack = true,
					close = true,
					description = "La Super Skunk è una varietà di marijuana ibrida a dominanza indica che ha influenzato la coltivazione di cannabis in tutto il mondo, come una delle prime varietà ibride stabili. Super Skunk è una varietà ibrida a dominanza indica che ha influenzato la coltivazione di cannabis in tutto il mondo, come una delle prime varietà ibride stabili.",
					buttons = {
						{
							label = 'Trita',
							action = function(slot)
								local data = {accept= "grinder",reward = "superskunk_tritato", nreward = 1, animdict = "amb@world_human_bum_standing@twitchy@idle_a", animlib = "idle_a", animtext = "Stai grindando SuperSkunk", animtimeOut = 15000, noremove = "Si"}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},

				['superskunk_mix'] = {
					label = 'Misto ss.t.',
					weight = 1.5,
					stack = true,
					close = true,
					description = "Mix ottenuto da 1g di super skunk tritata e da 0.5g di tabacco",
					buttons = {
						{
							label = 'Rolla',
							action = function(slot)
								local data = {accept= "cartina",reward = "joint_superskunk", nreward = 1, animdict = "amb@code_human_in_car_idles@generic@ds@idle_d", animlib = "idle_j", animtext = "Stai rollando un joint", animtimeOut = 15000, noremove = ""}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},

				['superskunk_tritato'] = {
					label = 'Super skunk tritata',
					weight = 1,
					stack = true,
					close = true,
					description = "Tritato di super skunk ottenuto con il grinder",
					buttons = {
						{
							label = 'Mixa',
							action = function(slot)
								local data = {accept= "tabacco",reward = "superskunk_mix", nreward = 1, animdict = "missheistdockssetup1clipboard@base", animlib = "base", animtext = "Stai mischiando le sostanze", animtimeOut = 10000, noremove = ""}
								TriggerEvent("combina:item", data, slot)
							end
						}
					}
				},
	
			--JOINT

				['joint'] = {
					label = 'Canna d\'erba',
					weight = 1.5,
					stack = true,
					close = true,
					description = "Il classico Joint è composto dal mix di Marijuana.",
					server = {
						export = "xert_resources.joint"
					}
				},

				['joint_colombiangold'] = {
					label = 'Canna colombian gold',
					weight = 1.5,
					stack = true,
					close = true,
					description = "Un Joint composto dal mix di Colombian Gold con effetti superiori al classico joint. Preparatevi ad avere un intenso effetto di felicità  ed euforia.",
					server = {
						export = "xert_resources.joint_colombiangold"
					}
				},

				['joint_mexicansativa'] = {
					label = 'Canna mexican sativa',
					weight = 1.5,
					stack = true,
					close = true,
					description = "Un Joint composto dal mix di Mexican Sativa con effetti minori al Colombian Gold. Ideale per chi non volesse esagerare.",
					server = {
						export = "xert_resources.joint_mexicansativa"
					}
				},

				['joint_purplethai'] = {
					label = 'Canna purple thai',
					weight = 1.5,
					stack = true,
					close = true,
					description = "Un Joint che soddisferà  coloro che amano la marijuana per le sue qualità  creative, ideale per la meditazione, yoga o qualsiasi momento creativo",
					server = {
						export = "xert_resources.joint_purplethai"
					}
				},
				['joint_skunk'] = {
					label = 'Canna skunk',
					weight = 1.5,
					stack = true,
					close = true,
					description = "Un Joint composto dal mix di Skunk con effetti minori al Colombian Gold. Ideale per chi non volesse esagerare.",
					server = {
						export = "xert_resources.joint_skunk"
					}
				},
				['joint_superskunk'] = {
					label = 'Canna super skunk',
					weight = 1.5,
					stack = true,
					close = true,
					description = "Un Joint composto dal mix di Super Skunk con effetti minori al Colombian Gold. Ideale per chi non volesse esagerare.",
					server = {
						export = "xert_resources.joint_superskunk"
					}
				},

			--BUSTINE

				['bag_empty'] = {
					label = 'Bustina vuota',
					weight = 0.5,
					stack = true,
					close = true,
					description = "Bustina vuota",
				},

				['bag_marijuana'] = {
					label = 'Bustina di marijuana',
					weight = 5,
					stack = true,
					close = true,
					description = "Pratica bustina da 5 grammi",
				},

				['bag_skunk'] = {
					label = 'Bustina di Skunk',
					weight = 5,
					stack = true,
					close = true,
					description = "Pratica bustina da 5 grammi",
				},

				['bag_superskunk'] = {
					label = 'Bustina di Super Skunk',
					weight = 5,
					stack = true,
					close = true,
					description = "Pratica bustina da 5 grammi",
				},

				['bag_colombiangold'] = {
					label = 'Bustina di Colombian Gold',
					weight = 5,
					stack = true,
					close = true,
					description = "Pratica bustina da 5 grammi",
				},

				['bag_mexicansativa'] = {
					label = 'Bustina di mexican sativa',
					weight = 5,
					stack = true,
					close = true,
					description = "Pratica bustina da 5 grammi",
				},

				['bag_purplethai'] = {
					label = 'Bustina di purple thai',
					weight = 5,
					stack = true,
					close = true,
					description = "Pratica bustina da 5 grammi",
				},

			--BRICK MARIA
				['brick_colombiangold'] = {
					label = 'Panetto di Colombian Gold',
					weight = 2500,
					stack = true,
					close = true,
					description = "Con un panetto del genere, il buon vecchio 'è per uso personale, agente' va a farsi fottere."
				},

				['brick_marijuana'] = {
					label = 'Panetto di marijuana',
					weight = 2500,
					stack = true,
					close = true,
					description = "Con un panetto del genere, il buon vecchio 'è per uso personale, agente' va a farsi fottere."
				},

				['brick_mexicansativa'] = {
					label = 'Panetto di mexican sativa',
					weight = 2500,
					stack = true,
					close = true,
					description = "Con un panetto del genere, il buon vecchio 'è per uso personale, agente' va a farsi fottere.",
				},

				['brick_purplethai'] = {
					label = 'Panetto di purple thai',
					weight = 2500,
					stack = true,
					close = true,
					description = "Con un panetto del genere, il buon vecchio 'è per uso personale, agente' va a farsi fottere.",
				},

				['brick_skunk'] = {
					label = 'Panetto di skunk',
					weight = 2500,
					stack = true,
					close = true,
					description = "Con un panetto del genere, il buon vecchio 'è per uso personale, agente' va a farsi fottere.",
				},

				['brick_superskunk'] = {
					label = 'Panetto di super skunk',
					weight = 2500,
					stack = true,
					close = true,
					description = "Con un panetto del genere, il buon vecchio 'è per uso personale, agente' va a farsi fottere.",
				},

		--METH
			--MARTIAN
	
			['martian'] = {
				label = 'Martian',
				weight = 0,
				stack = true,
				close = true,
				description = "Alcuni la definiscono 'ALIENA' per via del suo colore e delle sue proprietà  chimiche",
			},

			['bag_martian'] = {
				label = 'Bustina di martian',
				weight = 50,
				stack = true,
				close = true,
				description = "To get happy real quick.",
			},

		--COCAINA

			['small_brick_cocaine'] = {
				label = 'Panetto piccolo di cocaina',
				weight = 2500,
				stack = true,
				close = true,
				description = "A lot of grams cocaine, mostly used for deals and takes a lot of space.",
			},

			['brick_cocaine'] = {
				label = 'Panetto di cocaina',
				weight = 5000,
				stack = true,
				close = true,
				description = "Heavy package of cocaine, mostly used for deals and takes a lot of space.",
			},

	--------------------------------------------------------------
	--GIOIELLI
	--------------------------------------------------------------
		--ANELLI
			['anello1'] = {
				label = 'Anello Matrimoniale',
				weight = 1,
				stack = false,
				allowArmed = true
			},
		
			['anello2'] = {
				label = 'Gemelli Matrimoniali',
				weight = 1,
				stack = false,
				allowArmed = true
			},
		
			['anello3'] = {
				label = 'Gemelli Rose',
				weight = 1,
				stack = false,
				allowArmed = true
			},
		
			['anello4'] = {
				label = 'Gemelli Diamantati',
				weight = 1,
				stack = false,
				allowArmed = true
			},
		
			['anello5'] = {
				label = 'Gemelli Dorati',
				weight = 1,
				stack = false,
				allowArmed = true
			},
		
			['anello6'] = {
				label = 'Gemelli Argentati',
				weight = 1,
				stack = false,
				allowArmed = true
			},
			["manette"] = {
				label = "Manette",
				weight = 1,
				stack = false,
				allowArmed = true,
				client = {
					export = "xert_resources.handcuffPlayer"
				}
			},
		
		--OROLOGI
	
		['orologiotascabile'] = {
			label = 'Orologio da Collezione',
			weight = 1,
			stack = false,
			allowArmed = true
		},
	
		['rolex1'] = {
			label = 'Rolex Diamantato',
			weight = 1,
			stack = false,
			allowArmed = true
		},
	
		['rolex2'] = {
			label = 'Rolex Black',
			weight = 1,
			stack = false,
			allowArmed = true
		},
	
		['rolex3'] = {
			label = 'Rolex zaffiro',
			weight = 1,
			stack = false,
			allowArmed = true
		},
	
		['rolex4'] = {
			label = 'Rolex Gold',
			weight = 1,
			stack = false,
			allowArmed = true
		},
	
		['rolex5'] = {
			label = 'Rolex Rose',
			weight = 1,
			stack = false,
			allowArmed = true
		},
	
		['rolex6'] = {
			label = 'Rolex',
			weight = 1,
			stack = false,
			allowArmed = true
		},
	
	--------------------------------------------------------------
	--NO WL
	--------------------------------------------------------------
		--MINIERA
	
		['stone'] = {
			label = 'Pietra',
			weight = 150,
			stack = true,
			allowArmed = true
		},
	
		['washed_stone'] = {
			label = 'Pietra Lavata',
			weight = 150,
			stack = true,
			allowArmed = true
		},
	
		['diamond'] = {
			label = 'Diamante',
			weight = 1,
			stack = true,
			allowArmed = true
		},
	
		['gold'] = {
			label = 'Oro',
			weight = 2,
			stack = true,
			allowArmed = true
		},
	
		['iron'] = {
			label = 'Ferro',
			weight = 500,
			stack = true,
			allowArmed = true
		},
	
	--------------------------------------------------------------
	--ARMI
	--------------------------------------------------------------
	--------------------------------------------------------------
	--BEVANDE
	--------------------------------------------------------------
		-- ANALCOLICHE
		
			['acqua'] = {
				label = 'Acqua 500 ml',
				weight = 520.0,
				stack = true,
				close = true,
				consume = 0.1,
				client = {
					status = { thirst = 20000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['acqua1l'] = {
				label = 'Acqua 1l',
				weight = 1000,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 500000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['acquafrizz'] = {
				label = 'Acqua Frizzante 500 ml',
				weight = 520,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['acquafrizz1l'] = {
				label = 'Acqua Frizzante 1l',
				weight = 1000,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 500000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['limonata'] = {
				label = 'Limonata',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['succoananas'] = {
				label = 'Succo Ananas',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 300000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['succodiarancia'] = {
				label = 'Succo Arancia',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 300000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['succomela'] = {
				label = 'Succo di Mela',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 300000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['telimone'] = {
				label = 'The Limone',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 400000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['tepesca'] = {
				label = 'The Pesca',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 400000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['tetropicale'] = {
				label = 'The Tropicale',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 400000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
		-- SODA
		
			['cocacola'] = {
				label = 'Coca Cola',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 400000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['cocacolalight'] = {
				label = 'Coca Cola Light',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['cocacolazero'] = {
				label = 'Coca Cola Zero',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 300000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['estate'] = {
				label = 'Estate',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 500000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['fanta'] = {
				label = 'Fanta',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 300000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['fantaananas'] = {
				label = 'Fanta Ananas',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 400000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['fantaexotic'] = {
				label = 'Fanta Exotic',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['fantafragola'] = {
				label = 'Fanta Fragola',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['fantalime'] = {
				label = 'Fanta Lime',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 100000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['lemonsoda'] = {
				label = 'lemon soda',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['limonatasoda'] = {
				label = 'limonata ',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 300000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['mojitosoda'] = {
				label = 'Mojito Soda',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 600000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
			
			['pepsi'] = {
				label = 'Pepsi',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 300000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['pepsitwist'] = {
				label = 'Pepsi Twist',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
			
			['sampellegrinolimone'] = {
				label = 'Sampellegrino Limone',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['sampellegrinoorange'] = {
				label = 'Sampellegrino Orange',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['sampellegrinopompelmo'] = {
				label = 'Sampellegrino Pompelmo',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 400000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			
			['schweppesga'] = {
				label = 'Ginger Ale',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['schweppesws'] = {
				label = 'Schweppes Water',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 300000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['sprite'] = {
				label = 'Sprite',
				weight = 350,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
		-- ENERGETICHE
		
			['gatorade'] = {
				label = 'Gatorade',
				weight = 270,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 500000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['monster'] = {
				label = 'monster energy',
				weight = 270,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 500000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['mtndew'] = {
				label = 'Mountam Dew',
				weight = 270,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 500000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['powerade'] = {
				label = 'Powerade',
				weight = 270,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 500000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['redbull'] = {
				label = 'RedBull',
				weight = 270,
				stack = true,
				close = true,
				consume = 0.20,
				degrade= 10080,
				client = {
					status = { thirst = 500000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['rockstarenergy'] = {
				label = 'Rockstar Energy',
				weight = 270,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 10080,
				client = {
					status = { thirst = 500000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
		-- CAFFETTERIA
		
			['americano'] = {
				label = 'Americano',
				weight = 100,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_club_vu_coffeecup`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['brasilena'] = {
				label = 'Brasilena',
				weight = 100,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_club_vu_coffeecup`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['cappuccino'] = {
				label = 'Cappuccino',
				weight = 100,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_club_vu_coffeecup`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['espresso'] = {
				label = 'Caffe Espresso',
				weight = 100,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_club_vu_coffeecup`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['frappuccino'] = {
				label = 'Frappuccino',
				weight = 100,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_club_vu_coffeecup`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['theverde'] = {
				label = 'The Verde',
				weight = 100,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
		-- COCKTAIL
		
			['angostura'] = {
				label = 'Angostura',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['assenzio'] = {
				label = 'Assenzio',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['bellini'] = {
				label = 'Bellini',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['bloodymary'] = {
				label = 'Bloody Mary',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['blucur'] = {
				label = 'Blu Cur',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['bluocean'] = {
				label = 'Blu Ocean',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['campari'] = {
				label = 'Campari',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['capiroska'] = {
				label = 'Capiroska',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['cosmopolitan'] = {
				label = 'Cosmopolitan',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['gintonic'] = {
				label = 'Gin Tonic',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['invisible'] = {
				label = 'Invisible',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['margherita'] = {
				label = 'Margherita',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['martini'] = {
				label = 'Martini',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['mojito'] = {
				label = 'Mojito',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['rumcola'] = {
				label = 'Rum Cola',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['rumponch'] = {
				label = 'Rum Ponch',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['sangriadelsidro'] = {
				label = 'Sangria del Sidro',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['spritz'] = {
				label = 'Spritz',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['stregalemon'] = {
				label = 'Strega lemon',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['violakir'] = {
				label = 'Viola Kir',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['violet'] = {
				label = 'Violet',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			
			['vodkaarancia'] = {
				label = 'Vodka Arancia',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['vodkafragola'] = {
				label = 'Vodka Fragola',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
			
			['vodkalemon'] = {
				label = 'Vodka Lemon',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['vodkalime'] = {
				label = 'Vodka lime',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['whitemint'] = {
				label = 'White Mint',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 1440,
				client = {
					status = { thirst = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
		-- VINI
		
			['bianco'] = {
				label = 'Vino Bianco',
				weight = 750,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 4320,
				client = {
					status = { thirst = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['rose'] = {
				label = 'Vino Rose',
				weight = 750,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 4320,
				client = {
					status = { thirst = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['rosso'] = {
				label = 'Vino Rosso',
				weight = 750,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 4320,
				client = {
					status = { thirst = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['glassbianco'] = {
				label = 'Bicchiere Bianco',
				weight = 250,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 4320,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['glassrose'] = {
				label = 'Bicchiere Rose',
				weight = 250,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 4320,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['glassrosso'] = {
				label = 'Bicchiere Rosso',
				weight = 250,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 4320,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `vw_prop_casino_wine_glass_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
		-- BIRRA
		
			['artigianale'] = {
				label = 'Birra Artigianale',
				weight = 600,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['becks'] = {
				label = 'Becks',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['birra'] = {
				label = 'Birra',
				weight = 600,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['budlight'] = {
				label = 'Bud Light',
				weight = 600,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['budweiser'] = {
				label = 'Budweiser',
				weight = 600,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['coronalimone'] = {
				label = 'Corona lime',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['franziskaner'] = {
				label = 'Franziskaner',
				weight = 600,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['guinness'] = {
				label = 'Guinness Black',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['heineken'] = {
				label = 'Heineken',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['ichnusa'] = {
				label = 'Ichnusa',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['moretti'] = {
				label = 'Moretti',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['morettiipa'] = {
				label = 'Moretti Ipa',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['nastro'] = {
				label = 'Nastro Azzurro',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['peroni'] = {
				label = 'Peroni',
				weight = 600,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['tuborg'] = {
				label = 'Tuborg',
				weight = 300,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
		-- CHAMPAGNE
		
			['moodwine'] = {
				label = 'Mood Wine',
				weight = 750,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['champagne'] = {
				label = 'Champagne',
				weight = 750,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['champagnemoet'] = {
				label = 'Champagne Moet',
				weight = 750,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['biccchierechampagne'] = {
				label = 'Calice di Champagne',
				weight = 750,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['champagnechemet'] = {
				label = 'Champagne Chemet',
				weight = 750,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['champagnechandon'] = {
				label = 'Champagne Chartogne',
				weight = 750,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['champagneblea'] = {
				label = 'Champagne Blea',
				weight = 750,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['champagncanard'] = {
				label = 'Champagne Canard',
				weight = 750,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['champagndompe'] = {
				label = 'Champagne Dompe',
				weight = 750,
				stack = true,
				close = true,
				consume = 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['champagnarmand'] = {
				label = 'Champagne rmand',
				weight = 750,
				stack = true,
				close = true,
				consume = 0.50,
				
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
		-- BOTTIGLIE ALCOLICI
		
			['gin'] = {
				label = 'Gin',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['gintonica'] = {
				label = 'Gitonica',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['bluegin'] = {
				label = 'Bluegin',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['whiskeyabsolute'] = {
				label = 'Whiskeyabsolute',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda' 
			},
		
			['vodkabsolute'] = {
				label = 'Vodkabsolute',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['vodkapesca'] = {
				label = 'Vodka Pesca',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['vodkalimone'] = {
				label = 'Vodka limone',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['vodkalampo'] = {
				label = 'Vodka Lampo',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['vodkapassion'] = {
				label = 'Vodka Passion',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['vodkamela'] = {
				label = 'Vodkamela',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['martinibot'] = {
				label = 'Martini',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['bacardibianco'] = {
				label = 'Bacardi Bianco',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['bacardilampo'] = {
				label = 'Cacardi Lampo',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['aperol'] = {
				label = 'Aperol',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['tequila'] = {
				label = 'Tequila',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['assenziobot'] = {
				label = 'Bottiglia Assenzio',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
		-- LIQUORI
	
			['redgin'] = {
				label = 'Redgin',
				weight = 250,
				stack = true,
				close = true,
				consume= 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['scotchchivas'] = {
				label = 'Scotch Chivas',
				weight = 250,
				stack = true,
				close = true,
				consume= 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['scotchchivasreserve'] = {
				label = 'Scotch Chivas Reserve',
				weight = 250,
				stack = true,
				close = true,
				consume= 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 400000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['whiskeycrown'] = {
				label = 'Whiskey Crown',
				weight = 250,
				stack = true,
				close = true,
				consume= 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['disaronno'] = {
				label = 'Disaronno',
				weight = 250,
				stack = true,
				close = true,
				consume= 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 400000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['jackdaniel'] = {
				label = 'Jackdaniel',
				weight = 250,
				stack = true,
				close = true,
				consume= 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['fernet'] = {
				label = 'Fernet',
				weight = 250,
				stack = true,
				close = true,
				consume= 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 400000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['fernetriserva'] = {
				label = 'Fernet Riserva',
				weight = 250,
				stack = true,
				close = true,
				consume= 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['jeger'] = {
				label = 'Jeger',
				weight = 250,
				stack = true,
				close = true,
				consume= 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['cointreau'] = {
				label = 'Cointreau',
				weight = 250,
				stack = true,
				close = true,
				consume= 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
			['baileys'] = {
				label = 'Baileys',
				weight = 250,
				stack = true,
				close = true,
				consume= 0.50,
				degrade= 2880,
				client = {
					status = { thirst = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_beer_bot_40oz`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Dissetando '
				},
				description = 'Bevanda'
			},
		
	--------------------------------------------------------------
	--CIBO
	--------------------------------------------------------------
		-- PANINI
		
			['hotdog'] = {
				label = 'Hotdog',
				weight = 70,
				stack = true,
				close = true,
				degrade = 2880,
				consume = 0.50,
				client = { 
					status = { hunger = 400000, stamina= -(math.random() / 15) },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_burger_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo ',
				},
				description = 'Alimento'
			},
		
			['toast'] = {
				label = 'Toast',
				weight = 80,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 2880,
				client = {
					status = { hunger = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_burger_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['sandwich'] = {
				label = 'Sandwich',
				weight = 100,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 2880,
				client = {
					status = { hunger = 300000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_burger_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['pane'] = {
				label = 'Pane',
				weight = 100,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 2880,
				client = {
					status = { hunger = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_burger_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['piadina'] = {
				label = 'Piadina',
				weight = 120,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_burger_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['paninokebab'] = {
				label = 'Pita kebab',
				weight = 150,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 600000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_burger_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['hamburger'] = {
				label = 'Hamburger',
				weight = 130,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 600000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_burger_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
		-- ANTIPASTI
		
			['involtiniprimavera'] = {
				label = 'Involtini primavera',
				weight = 80,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_res_fa_potnoodle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['insalatadipollo'] = {
				label = 'Insalata con pollo',
				weight = 80,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_res_fa_potnoodle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['insalatacaprese'] = {
				label = 'Insalata alla Caprese',
				weight = 80,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_res_fa_potnoodle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['insalatacipolla'] = {
				label = 'Insalata con cipolla',
				weight = 80,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_res_fa_potnoodle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['insalataclassica'] = {
				label = 'Insalata',
				weight = 80,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_res_fa_potnoodle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['insalataradicchio'] = {
				label = 'Insalata di radicchio',
				weight = 80,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_ret_fh_noodle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['tagliereformaggi'] = {
				label = 'Formaggio al tagliere',
				weight = 100,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_ret_fh_noodle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['taglieresalumi'] = {
				label = 'Salumi al tagliere',
				weight = 110,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 300000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_ret_fh_noodle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['wurstelpatatine'] = {
				label = 'Wurstel con patatine',
				weight = 250,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 700000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_ret_fh_noodle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
		-- ZUPPA
		
			['ramen'] = {
				label = 'Ramen',
				weight = 180,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_res_fa_potnoodle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['zuppacarne'] = {
				label = 'Zuppa di carne',
				weight = 180,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_res_fa_potnoodle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['zuppacarote'] = {
				label = 'Zuppa di carote',
				weight = 180,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_res_fa_potnoodle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['zuppapomo'] = {
				label = 'Zuppa Di Pomodoro',
				weight = 180,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_res_fa_potnoodle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['zuppaporri'] = {
				label = 'Zuppa di porro',
				weight = 180,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 400000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_res_fa_potnoodle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
		-- POLLI
		
			['coscedipollo'] = {
				label = 'Coscia di pollo',
				weight = 150,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 2880,
				client = {
					status = { hunger = 300000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_ret_fh_noodle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['nuggets'] = {
				label = 'Crocchette di pollo',
				weight = 200,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 300000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `v_ret_fh_noodle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['polloarrosto'] = {
				label = 'Pollo Arrosto',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 700000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
		-- PASTE
		
			['lasagne'] = {
				label = 'Lasagne alla bolognese',
				weight = 250,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 2880,
				client = {
					status = { hunger = 800000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['pasta'] = {
				label = 'Pasta',
				weight = 500,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 2880,
				client = {
					status = { hunger = 500000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['pizza'] = {
				label = 'Pizza',
				weight = 160,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 2880,
				client = {
					status = { hunger = 500000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['tranciopizza'] = {
				label = 'Fetta di pizza',
				weight = 80,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 2880,
				client = {
					status = { hunger = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
		-- PESCE
		
			['gamberi'] = {
				label = 'Gamberi',
				weight = 90,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 2880,
				client = {
					status = { hunger = 200000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['sushi'] = {
				label = 'Sushi',
				weight = 100,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 2880,
				client = {
					status = { hunger = 300000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['tempura'] = {
				label = 'Tempura',
				weight = 70,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 2880,
				client = {
					status = { hunger = 300000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
		-- CARNI
		
			['bistecca'] = {
				label = 'Bistecca',
				weight = 100,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 2880,
				client = {
					status = { hunger = 800000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['piattokebab'] = {
				label = 'Doner kebab',
				weight = 90,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 2880,
				client = {
					status = { hunger = 800000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['spiedini'] = {
				label = 'Spiedini',
				weight = 80,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 2880,
				client = {
					status = { hunger = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
		-- RAFFINATI
		
			['aragosta'] = {
				label = 'Aragosta',
				weight = 260,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 600000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['caviale'] = {
				label = 'Caviale',
				weight = 190,
				stack = true,
				close = true,
				degrade = 1440,
				consume = 0.50,
				client = {
					status = { hunger = 500000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['goldpizza'] = {
				label = 'Pizza Dorata',
				weight = 250,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 800000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['goldsteak'] = {
				label = 'Bistecca Dorata',
				weight = 250,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 900000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['kobe'] = {
				label = 'Manzo di Kobe',
				weight = 200,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 1000000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['ramenvip'] = {
				label = 'Ramen vip',
				weight = 180,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 800000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['sushivip'] = {
				label = 'Sushi vip',
				weight = 250,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 600000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		-- DOLCI
		
			['ciambella'] = {
				label = 'Ciambella',
				weight = 10,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 100000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_donut_02b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['cornetto'] = {
				label = 'Cornetto',
				weight = 10,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_donut_02b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['muffin'] = {
				label = 'Muffin',
				weight = 100,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 100000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_donut_02b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['frutta'] = {
				label = 'Frutta',
				weight = 100,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 100000 },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_donut_02b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['gelato'] = {
				label = 'Gelato',
				weight = 150,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 100000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_donut_02b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['briochegelato'] = {
				label = 'Brioche Gelato',
				weight = 150,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 200000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_donut_02b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
		-- SNACK
		
			['patatinefritte'] = {
				label = 'Patatine Fritte',
				weight = 100,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 300000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_donut_02b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['piugusto'] = {
				label = 'Più Gusto',
				weight = 100,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 300000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_donut_02b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
			['noccioline'] = {
				label = 'Noccioline',
				weight = 100,
				stack = true,
				close = true,
				consume = 0.50,
				degrade = 1440,
				client = {
					status = { hunger = 300000, stamina= -(math.random() / 15)  },
					anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
					prop = { model = `prop_donut_02b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 2500,
					notification = 'Ti stai Riempiendo '
				},
				description = 'Alimento'
			},
		
		
	--------------------------------------------------------------
	--CHIUSURA
	--------------------------------------------------------------
	
		['server'] = {
			label = 'server',
		},	
		['serverfan'] = {
			label = 'serverfan',
		},	
		['servergpu'] = {
			label = 'servergpu',
		},	
		['monitor'] = {
			label = 'monitor',
		},
		['fixserver'] = {
			label = 'fixservero',
		},
	
	
	["brain"] = {
		label = "Cervello",
		weight = 1,
		stack = true,
		close = true,
		description = "\"An item\""
	},

	["heart"] = {
		label = "Cuore",
		weight = 1,
		stack = true,
		close = true,
		description = "\"An item\""
	},

	["leftkidney"] = {
		label = "Rene sinistro",
		weight = 1,
		stack = true,
		close = true,
		description = "\"An item\""
	},

	["leftlung"] = {
		label = "Polmone sinistro",
		weight = 1,
		stack = true,
		close = true,
		description = "\"An item\""
	},

	["liver"] = {
		label = "Fegato",
		weight = 1,
		stack = true,
		close = true,
		description = "\"An item\""
	},

	["rightkidney"] = {
		label = "Rene destro",
		weight = 1,
		stack = true,
		close = true,
		description = "\"An item\""
	},

	["rightlung"] = {
		label = "Polmone destro",
		weight = 1,
		stack = true,
		close = true,
		description = "\"An item\""
	},

	['spraycan'] = {
		label = 'Spray Can',
		weight = 160,
		stack=false,
		description="Get up to no good!",
		client={
			
		},
		server={
			export="jack-graffiti.spraycan"
		}
	},
	["cleaningkit"] = {
		label = "Cleaning Kit",
		weight = 250,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!",
		durability = 100,
		decay = true,
		client = {
			image = "cleaningkit.png",
		},
		server={
			export="jack-graffiti.cleaningkit"
		}
	},

	["stancerkit"] = {
		label = "Stancer Kit",
		weight = 1,
		stack = true,
		close = true,
		description = "\"An item\""
	},

	["nos"] = {
		label = "Nitro",
		weight = 1,
		stack = true,
		close = true,
		description = "\"An item\"",
		client = {
			export = 'xert_nitro.nos'
		}
	},


	-------------TUNING--------------------------
--[[
[1] = {item = 'turbostreet', cost = 25000},
    [2] = {item = 'turbosports', cost = 25000},
    [3] = {item = 'turboracing', cost = 25000},
    [4] = {item = 'nitro50shot', cost = 25000},
    [5] = {item = 'nitro100shot', cost = 25000},
    [6] = {item = 'nitro200shot', cost = 25000},
]]
	-- here we go the 1000 items
	-- ox_inventory format

	['turbostreet'] = {
		label = 'Turbo Street',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['turbosports'] = {
		label = 'Turbo Sports',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['turboracing'] = {
		label = 'Turbo Racing',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['turboultimate'] = {
		label = 'Turbo Ultimate',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['nitro50shot'] = {
		label = 'Nitro 50 Shot',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['nitro100shot'] = {
		label = 'Nitro 100 Shot',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['nitro200shot'] = {
		label = 'Nitro 200 Shot',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['enginegago'] = {
		label = 'ENGINE',
		weight = 0,
		stack = false,
		close = true,
		description = ''
	},


	['repairparts'] = {
		label = 'Repair Engine Parts',
		weight = 250,
		stack = false,
		close = true,
	},

	['street_tires'] = {
		label = 'Street Tires',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},
	['sports_tires'] = {
		label = 'Sports Tires',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},
	['racing_tires'] = {
		label = 'Racing Tires',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},
	['drag_tires'] = {
		label = 'Drag Tires',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['transmition_clutch'] = {
		label = 'OEM Transmission Clutch',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['engine_flywheel'] = {
		label = 'OEM Flywheel',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['engine_oil'] = {
		label = 'OEM Engine Oil',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['engine_sparkplug'] = {
		label = 'Sparkplugs Kit',
		weight = 50,
		stack = true,
		client = {
			--status = { hunger = -10000, thirst = -10000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['engine_gasket'] = {
		label = 'OEM Head Gasket Kit',
		weight = 50,
		stack = true,
		client = {
			--status = { hunger = -10000, thirst = -10000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['engine_airfilter'] = {
		label = 'OEM Intake Air Filter',
		weight = 50,
		stack = true,
		client = {
			--status = { hunger = -20000, thirst = -30000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['engine_fuelinjector'] = {
		label = 'OEM Fuel Injectors',
		weight = 150,
		stack = true,
		client = {
			--status = { hunger = -20000, thirst = -30000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},
	['engine_pistons'] = {
		label = 'OEM Pistons Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['engine_connectingrods'] = {
		label = 'OEM Connecting Rods Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['engine_valves'] = {
		label = 'OEM Head Valves Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['engine_block'] = {
		label = 'OEM Block',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['engine_crankshaft'] = {
		label = 'OEM CrankShaft',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['engine_camshaft'] = {
		label = 'OEM Camshaft',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},



	

	['ecu'] = {
		label = 'ecu',
		weight = 20,
		stack = true,
		close = true,
		description = nil,
	},

	['drift_tires'] = {
		label = 'Drift Tires',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},


	['lsdf'] = {
		label = 'Limited Slip Differential (Front)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['lsdr'] = {
		label = 'Limited Slip Differential (Rear)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['tcs'] = {
		label = 'Traction Control System (TCS)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['esc'] = {
		label = 'Stability Control System (ESC)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['closerationgears'] = {
		label = 'Close Ratio Gears',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['cvttranny'] = {
		label = 'CVT Transmission',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['abs'] = {
		label = 'Anti-lock braking System',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['axletorsionfront'] = {
		label = 'Axle Torsion (Front)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['axletorsionrear'] = {
		label = 'Axle Torsion (Rear)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['axlesolidfront'] = {
		label = 'Axle Solid (Front)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['axlesolidrear'] = {
		label = 'Axle Solid (Rear)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['kers'] = {
		label = 'Kinetic Energy Recovery System (KERS)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['offroadtune1'] = {
		label = 'Offroad Tune 1',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['offroadtune2'] = {
		label = 'Offroad Tune 2',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['stanced'] = {
		label = 'Stanced Tune',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['frontwheeldrive'] = {
		label = 'Front Wheel Drivetrain',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['allwheeldrive'] = {
		label = 'All Wheel Drivetrain',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['rearwheeldrive'] = {
		label = 'Rear Wheel Drivetrain',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['oem_brakes'] = {
		label = 'OEM Brakes',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['oem_suspension'] = {
		label = 'OEM Suspension',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['oem_gearbox'] = {
		label = 'OEM Gear Box',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},


	['elite_brakes'] = {
		label = 'Elite Brakes',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['elite_suspension'] = {
		label = 'Elite Suspension',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['elite_gearbox'] = {
		label = 'Elite Gear Box',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['elite_clutch'] = {
		label = 'Elite Transmission Clutch',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['elite_flywheel'] = {
		label = 'Elite Flywheel',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['elite_oil'] = {
		label = 'Elite Oil',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['elite_sparkplug'] = {
		label = 'Elite Sparkplugs Kit',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['elite_gasket'] = {
		label = 'Elite Head Gasket Kit',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['elite_airfilter'] = {
		label = 'Elite Intake Air Filter',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['elite_fuelinjector'] = {
		label = 'Elite Fuel Injectors',
		weight = 150,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},
	['elite_pistons'] = {
		label = 'Elite Pistons Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['elite_connectingrods'] = {
		label = 'Elite Connecting Rods Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['elite_valves'] = {
		label = 'Elite Head Valves Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['elite_block'] = {
		label = 'Elite Block',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['elite_crankshaft'] = {
		label = 'Elite CrankShaft',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['elite_camshaft'] = {
		label = 'Elite Camshaft',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['pro_brakes'] = {
		label = 'Pro Brakes',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['pro_suspension'] = {
		label = 'Pro Suspension',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['pro_gearbox'] = {
		label = 'Pro Gear Box',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['pro_clutch'] = {
		label = 'Pro Transmission Clutch',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['pro_flywheel'] = {
		label = 'Pro Flywheel',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['pro_oil'] = {
		label = 'Pro Oil',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['pro_sparkplug'] = {
		label = 'Pro Sparkplugs Kit',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['pro_gasket'] = {
		label = 'Pro Head Gasket Kit',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['pro_airfilter'] = {
		label = 'Pro Intake Air Filter',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['pro_fuelinjector'] = {
		label = 'Pro Fuel Injectors',
		weight = 150,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},
	['pro_pistons'] = {
		label = 'Pro Pistons Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['pro_connectingrods'] = {
		label = 'Pro Connecting Rods Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['pro_valves'] = {
		label = 'Pro Head Valves Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['pro_block'] = {
		label = 'Pro Block',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['pro_crankshaft'] = {
		label = 'Pro CrankShaft',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['pro_camshaft'] = {
		label = 'Pro Camshaft',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},


	['racing_brakes'] = {
		label = 'Racing Brakes',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['racing_suspension'] = {
		label = 'Racing Suspension',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['racing_gearbox'] = {
		label = 'Racing Gear Box',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['racing_clutch'] = {
		label = 'Racing Transmission Clutch',
		weight = 100,
		stack = true,
		client = {
			--status = { hunger = -150000, thirst = -50000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['racing_flywheel'] = {
		label = 'Racing Flywheel',
		weight = 100,
		stack = true,
		client = {
			--status = { hunger = -150000, thirst = -50000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['racing_oil'] = {
		label = 'Racing Oil',
		weight = 100,
		stack = true,
		client = {
			--status = { hunger = -150000, thirst = -50000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['racing_sparkplug'] = {
		label = 'Racing Sparkplugs Kit',
		weight = 50,
		stack = true,
		client = {
			--status = { hunger = -10000, thirst = -10000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['racing_gasket'] = {
		label = 'Racing Head Gasket Kit',
		weight = 50,
		stack = true,
		client = {
			--status = { hunger = -10000, thirst = -10000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['racing_airfilter'] = {
		label = 'Racing Intake Air Filter',
		weight = 50,
		stack = true,
		client = {
			--status = { hunger = -20000, thirst = -30000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['racing_fuelinjector'] = {
		label = 'Racing Fuel Injectors',
		weight = 150,
		stack = true,
		client = {
			--status = { hunger = -20000, thirst = -30000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},
	['racing_pistons'] = {
		label = 'Racing Pistons Kit',
		weight = 350,
		stack = true,
		client = {
			--status = { hunger = -110000, thirst = -1130000, stress = -200000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['racing_connectingrods'] = {
		label = 'Racing Connecting Rods Kit',
		weight = 350,
		stack = true,
		client = {
			--status = { hunger = -110000, thirst = -1130000, stress = -200000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['racing_valves'] = {
		label = 'Racing Head Valves Kit',
		weight = 350,
		stack = true,
		client = {
			--status = { hunger = -110000, thirst = -1130000, stress = -200000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['racing_block'] = {
		label = 'Racing Block',
		weight = 350,
		stack = true,
		client = {
			--status = { hunger = -110000, thirst = -1130000, stress = -200000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['racing_crankshaft'] = {
		label = 'Racing CrankShaft',
		weight = 350,
		stack = true,
		client = {
			--status = { hunger = -110000, thirst = -1130000, stress = -200000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['racing_camshaft'] = {
		label = 'Racing Camshaft',
		weight = 350,
		stack = true,
		client = {
			--status = { hunger = -110000, thirst = -1130000, stress = -200000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},


	['ultimate_brakes'] = {
		label = 'Ultimate Brakes',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['ultimate_suspension'] = {
		label = 'Ultimate Suspension',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['ultimate_gearbox'] = {
		label = 'Ultimate Gear Box',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['ultimate_clutch'] = {
		label = 'Ultimate Transmission Clutch',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['ultimate_flywheel'] = {
		label = 'Ultimate Flywheel',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['ultimate_oil'] = {
		label = 'Ultimate Oil',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['ultimate_sparkplug'] = {
		label = 'Ultimate Sparkplugs Kit',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['ultimate_gasket'] = {
		label = 'Ultimate Head Gasket Kit',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['ultimate_airfilter'] = {
		label = 'Ultimate Intake Air Filter',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['ultimate_fuelinjector'] = {
		label = 'Ultimate Fuel Injectors',
		weight = 150,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},
	['ultimate_pistons'] = {
		label = 'Ultimate Pistons Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['ultimate_connectingrods'] = {
		label = 'Ultimate Connecting Rods Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['ultimate_valves'] = {
		label = 'Ultimate Head Valves Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['ultimate_block'] = {
		label = 'Ultimate Block',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'

		}
	},

	['ultimate_crankshaft'] = {
		label = 'Ultimate CrankShaft',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['ultimate_camshaft'] = {
		label = 'Ultimate Camshaft',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'xert_tuners.useItem'
		}
	},

	['rubber'] = {
		label = 'Gomma',
		weight = 100,
		stack = true,
		close = true,
		description = nil,
	},
	['sulfur'] = {
		label = 'Zolfo',
		weight = 100,
		stack = true,
		close = true,
		description = nil,
	},
	['steel'] = {
		label = 'Acciaio',
		weight = 100,
		stack = true,
		close = true,
		description = nil,
	},
	['polyester'] = {
		label = 'Polisetere',
		weight = 100,
		stack = true,
		close = true,
		description = nil,
	},
	['bottle'] = {
		label = 'Bombola vuota',
		weight = 100,
		stack = true,
		close = true,
		description = nil,
	},
	['methane'] = {
		label = 'Bombola di metano',
		weight = 100,
		stack = true,
		close = true,
		description = nil,
	},
	['chip'] = {
		label = 'Chip',
		weight = 100,
		stack = true,
		close = true,
		description = nil,
	},
	['board'] = {
		label = 'Scheda elettronica',
		weight = 100,
		stack = true,
		close = true,
		description = nil,
	},

	['copper'] = {
		label = 'Rame',
		weight = 100,
		stack = true,
	},

	['aluminum'] = {
		label = 'Alluminio',
		weight = 100,
		stack = true,
	},
	['titanium'] = {
		label = 'Titanio',
		weight = 100,
		stack = true,
	},

	-- furti chiavi veicolo player
	['laptop_usb'] = {
        label = 'Laptop USB',
        weight = 1000,
        stack = false,
        close = true,
        client = {
            anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip = 'machinic_loop_mechandplayer' },
            prop = {
                model = 'prop_cs_laptop',
                pos = { x = 0.0, y = 0.0, z = 0.0 },
                rot = { x = 0.0, y = 0.0, z = 0.0 }
            },
            usetime = 30000,
        }
    },
    
    ['vin_tool'] = {
        label = 'Strumento di verifica VIN',
        weight = 1000,
        stack = false,
        close = true,
        description = 'Permette di ispezionare il VIN del veicolo.',
        client = {
            anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip = 'machinic_loop_mechandplayer' },
            prop = {
                model = 'prop_cs_laptop',
                pos = { x = 0.0, y = 0.0, z = 0.0 },
                rot = { x = 0.0, y = 0.0, z = 0.0 }
            },
            usetime = 10000,
        }
    },
    
    ['fake_palte'] = {
        label = 'Targa',
        weight = 300,
        stack = false,
        close = true,
    },

	['poster'] = {
		label = 'poster',
		weight = 1,
		stack = false,
		close = true
	},
	
	['oil'] = {
		label = 'Petrolio',
		weight = 5000,
		stack = false,
		close = true
	},
	['refined_oil'] = {
		label = 'Petrolio raffinato',
		weight = 5000,
		stack = false,
		close = true
	},
	['fuel'] = {
		label = 'Carburante',
		weight = 5000,
		stack = false,
		close = true
	},
	
	
}