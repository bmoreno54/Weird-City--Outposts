var this_chunk = argument0;

var grid_tiles = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT);

var i_start = this_chunk.x*CHUNK_WIDTH + irandom(CHUNK_WIDTH);
for (var i = i_start; i - i_start < CHUNK_WIDTH; i++) {
    var j_start = irandom(CHUNK_HEIGHT);
    for (var j = j_start; j - j_start < CHUNK_HEIGHT; j++) {
        var xx = i%CHUNK_WIDTH;
        var yy = j%CHUNK_HEIGHT;
        ds_grid_set(grid_tiles, xx, yy, instance_create(xx, yy, obj_tile));
        var tile = ds_grid_get(grid_tiles, xx, yy);
        tile._chunk = this_chunk;
    }
}
