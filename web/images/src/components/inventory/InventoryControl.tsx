import React, { useState } from 'react';
import { useDrop } from 'react-dnd';
import { useAppDispatch, useAppSelector } from '../../store';
import { selectItemAmount, setItemAmount } from '../../store/inventory';
import { DragSource } from '../../typings';
import { onUse } from '../../dnd/onUse';
import { onGive } from '../../dnd/onGive';
import { fetchNui } from '../../utils/fetchNui';
import { faInfoCircle } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { Locale } from '../../store/locale';
import { IconButton } from '@mui/material';
import UsefulControls from './UsefulControls';

const InventoryControl: React.FC = () => {
  const itemAmount = useAppSelector(selectItemAmount);
  const dispatch = useAppDispatch();

  const [infoVisible, setInfoVisible] = useState(false);

  const [, use] = useDrop<DragSource, void, any>(() => ({
    accept: 'SLOT',
    drop: (source) => {
      source.inventory === 'player' && onUse(source.item);
    },
  }));

  const [, give] = useDrop<DragSource, void, any>(() => ({
    accept: 'SLOT',
    drop: (source) => {
      source.inventory === 'player' && onGive(source.item);
    },
  }));

  const inputHandler = (event: React.ChangeEvent<HTMLInputElement>) => {
    if (event.target.valueAsNumber % 1 !== 0 || isNaN(event.target.valueAsNumber) || event.target.valueAsNumber < 0)
      event.target.valueAsNumber = 0;
    dispatch(setItemAmount(event.target.valueAsNumber));
  };

  return (
    <>
      <UsefulControls infoVisible={infoVisible} setInfoVisible={setInfoVisible} />
      <div className="inventory-control">
        <div className="inventory-control-wrapper">
          <input className="inventory-control-input" type="number" defaultValue={itemAmount} onChange={inputHandler} />
          <div className="bar quantityBar"></div>
          <button className="inventory-control-button" ref={use}>
            <img src={"https://cdn.discordapp.com/attachments/827183157958148136/1023686858930143262/icons8-check-64_1.png"} />
          </button>
          <div className="bar use"></div>
          <button className="inventory-control-button" ref={give}>
            <img src={"https://cdn.discordapp.com/attachments/792176328316551179/1054054912364916857/icons8-ok-mano-64.png"} />
          </button>
          <div className="bar give"></div>
          <button className="inventory-control-button" onClick={() => fetchNui('exit')}>
            <img src={"https://cdn.discordapp.com/attachments/827183157958148136/1023686912315228210/icons8-rimuovi-64.png"} />
          </button>
          <div className="bar uiclose"></div>
        </div>
      </div>

      <IconButton className="useful-controls-button" size="large" onClick={() => setInfoVisible(true)}>
        <FontAwesomeIcon icon={faInfoCircle} />
      </IconButton>
    </>
  );
};

export default InventoryControl;
