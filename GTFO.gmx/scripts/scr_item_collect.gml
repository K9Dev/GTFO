// Adds Items after collision

for(i = 0; i < maxItems; i += 1){
    if(items[i] == -1){
        items[i] = argument0;
        
        return(true);
    }
}

return(false);
