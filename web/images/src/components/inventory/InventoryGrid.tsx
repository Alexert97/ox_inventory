import React from 'react';
import { Inventory } from '../../typings';
import WeightBar from '../utils/WeightBar';
import InventorySlot from './InventorySlot';
import InventoryContext from './InventoryContext';
import { getTotalWeight } from '../../helpers';
import { createPortal } from 'react-dom';
import { Typography } from '@mui/material';


const InventoryGrid: React.FC<{ inventory: Inventory }> = ({ inventory }) => {
  const weight = React.useMemo(
    () => (inventory.maxWeight !== undefined ? Math.floor(getTotalWeight(inventory.items)*1000)/1000 : 0),
    [inventory.maxWeight, inventory.items]
  );

  return (
    <>
        <div className={inventory.type == 'player' ? 'inventory-grid-wrapper leftInv' : 'inventory-grid-wrapper rightInv'}>
        <div>
          <div className="inventory-grid-header-wrapper">
          <Typography style={{ fontSize: 16 }}>{inventory.label}</Typography>
            {inventory.maxWeight && (
              <Typography style={{ fontSize: 16 }}>
                {weight / 1000}/{inventory.maxWeight / 1000}kg
              </Typography>
            )}
          </div>
          <WeightBar percent={inventory.maxWeight ? (weight / inventory.maxWeight) * 100 : 0} />
        </div>
        <div className="inventory-grid-container">
          <>
            {inventory.items.map((item) => (
              <InventorySlot key={`${inventory.type}-${inventory.id}-${item.slot}`} item={item} inventory={inventory} />
            ))}
            {inventory.type === 'player' && createPortal(<InventoryContext />, document.body)}
          </>
        </div>
      </div>
    </>
  );
};

export default InventoryGrid;
