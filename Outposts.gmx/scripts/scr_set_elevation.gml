var this_tile = argument0;
random_set_seed(this_tile._seed);

var surrounding_elevation = 0;

for (var i = -1; i < 2; i++){
    for (var j = -1; j < 2; j++) {
        if i != 0 or j != 0 {
            var check_tile = false;
            check_tile.x = this_tile.x+i;
            check_tile.y = this_tile.y+j;
            
            if !instance_position(check_tile.x, check_tile.y, obj_tile){
                surrounding_elevation += AVERAGE_ELEVATION;
            } else {
                surrounding_elevation += check_tile._elevation;
            }
        }
    }
}

var steepness = irandom_range(-MAX_STEEPNESS, MAX_STEEPNESS);
var elevation = surrounding_elevation/8;

return int64((elevation + elevation*steepness/MAX_STEEPNESS)/2);
