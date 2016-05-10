// Adds Items after collision

var sprIndex = argument0;
var arrayLength = array_height_2d(global.items);

logger("Sprite Index picked up = " + string(sprIndex)); 
logger("Array Length Items = " + string(arrayLength));

//Add Item Count after pickup
for(i = 0; i < arrayLength; i ++ ){
    if(global.items[i, 1] == sprIndex){

        
        var j = i;
        for(i = 0; i < maxItems; i ++){
            if(inventory_items[i] == -1){
                inventory_items[i] = sprIndex;
                global.items[j, 2] += 1;
                
                logger("Added one found Item to Inventory List and 1 Count to Items");
                return(true);
            }else if(inventory_items[i] == sprIndex){
                global.items[j, 2] += 1;
                
                logger("Item found multiple in List! Added 1 count (Item Count = " + string(global.items[j, 2]) + ")");
                return(true);
            }
        }
    }
}

return(false);
