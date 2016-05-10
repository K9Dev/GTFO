//Get information from a Item
var spr_index = argument0;
var positionArray = argument1;
var result = "";

for(i = 0; i < array_height_2d(global.items); i++){
    if(spr_index == global.items[i, 1]){
        result = global.items[i, positionArray];       
        return result;
    }    
}
return result;
