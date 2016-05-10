// Item Array

/*
[i,0] = Item Name
[i,1] = Item Sprite / Index
[i,2] = Item Count
*/

var item_count = 1;

globalvar items;

//Set up empty Array
for(i = 0; i < item_count; i++){
    for(j = 0; j < 3; j++){
        items[i, j] = 0;
    }
}


//====================================//
//========ITEM DEFINITIONS============//
//====================================//

// Gold Key
items[0,0] = "Gold Key";
items[0,1] = spr_goldkey;
items[0,2] = 0;

// Red Key
items[1,0] = "Red Key";
items[1,1] = spr_redkey;
items[1,2] = 0;

logger("Item Array set up!");
