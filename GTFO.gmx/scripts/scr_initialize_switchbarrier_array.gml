// Fills free position in the Switch Barrier Array with name from Argument
var pairName = argument0;

var arrayLength = array_height_2d(global.switch_barrier);

for(i = 0; i < arrayLength; i++){
    var sb_array_pos = switch_barrier[i, 0];
    logger("Array Pos [" + string(i) + "]  = " + string(sb_array_pos));
    
    if(sb_array_pos == 0){
        logger("Switch Barrier Array position for new SB found!");
        
        switch_barrier[i,0] = pairName;
        switch_barrier[i,1] = -1;
        
        return 0;
    }
}
