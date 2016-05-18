//Creates Switch Barrier Pairs in an 2D array

// Switch/Barrier Array

/*
[i,0] = Switch Name
[i,1] = Open/Closed
*/

globalvar switch_barrier_count;
switch_barrier_count = 10;

globalvar switch_barrier;

//Set up empty Array
for(i = 0; i < switch_barrier_count; i++){
    for(j = 0; j < 3; j++){
        switch_barrier[i, j] = 0;
    }
}

logger("Switch Barrier Array set up!");
