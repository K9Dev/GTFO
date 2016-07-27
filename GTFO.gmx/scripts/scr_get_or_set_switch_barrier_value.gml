///scr_get_or_set_switch_barrier_value(pair_name, isGet)
//Gets or sets a Value from the Switch Barrier Array
var pair_name = argument0;
var isGet = argument1;
var result = noone;

var arrayLenght = array_height_2d(global.switch_barrier);

//Get Switch Value
if(isGet){
    for(i = 0; i < arrayLenght; i++){
        if(switch_barrier[i,0] == pair_name){
              result = switch_barrier[i,1];
              return result;  
        }
    }
}else{
//Set Switch Value
    for(i = 0; i < arrayLenght; i++){
        if(switch_barrier[i,0] == pair_name){
            var newId = switch_barrier[i,1];
            
            switch_barrier[i, 1] = newId * -1;
            
            logger("New ID for Switch set to " + string(switch_barrier[i, 1]));
            return 0;
        }
    }
}
return 0;
