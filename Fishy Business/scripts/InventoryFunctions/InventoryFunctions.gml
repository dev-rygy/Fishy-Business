function InventorySearch (rootObject,itemType)
{
for (var i = 0; i < INVENTORY_SLOTS; i += 1)
{
	if (rootObject.inventory[i] = itemType){
	 return (i);	
	}
}
return(-1)
}


function InventoryRemove(rootObject,itemType){
var _slot = InventorySearch(rootObject,itemType);
if (_slot !=  -1){
	with (rootObject) inventory[_slot] = -1;
	return true
}
else return false;	
}

function InventoryAdd(rootObject, itemType){
var _slot = InventorySearch(rootObject, -1);
if (_slot != -1){
with (rootObject) inventory[_slot] = itemType;
return true	
}
else return false
}


function InventorySwap(objectFrom, slotFrom, objectTo, slotTo) {
	var _itemFrom = objectFrom.inventory[slotFrom]
	if (objectTo.invType == obj_equipmentBox.invType) {
		if ( slotTo == 0 && _itemFrom.itemType != "Rod" ) {
			return;
		}
		if (slotTo == 1 && _itemFrom.itemType != "Line") {
			return;
		}
		if (slotTo == 2 && _itemFrom.itemType != "Bait") {
			return;
		}
		objectFrom.inventory[slotFrom] = objectTo.inventory[slotTo]
		objectTo.inventory[slotTo] = _itemFrom
	}
	else {
		objectFrom.inventory[slotFrom] = objectTo.inventory[slotTo]
		objectTo.inventory[slotTo] = _itemFrom
	}
}

function displayInventory() {
self.visible = true

	
}