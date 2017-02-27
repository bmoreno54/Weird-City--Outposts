var this_tile = argument0;
random_set_seed(this_tile._seed);

var surrounding_moisture = 0;

for (var i = -1; i < 2; i++){
    for (var j = -1; j < 2; j++) {
        if i != 0 or j != 0 {
            var check_tile = false;
            check_tile.x = this_tile.x+i;
            check_tile.y = this_tile.y+j;
            
            if !instance_position(check_tile.x, check_tile.y, obj_tile){
                surrounding_moisture += AVERAGE_MOISTURE;
            } else {
                surrounding_moisture += check_tile._moisture;
            }
        }
    }
}

var moisture_change = random_range(-MAX_MOISTURE_CHANGE, MAX_MOISTURE_CHANGE);
var moisture = surrounding_moisture/8;

return clamp((moisture + moisture*moisture_change/MAX_MOISTURE_CHANGE)/2, 0, 1);
