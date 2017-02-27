//fill chunk with tiles
var i_start = irandom(CHUNK_WIDTH);
for (var i = i_start; i - i_start < CHUNK_WIDTH; i++) {
    var j_start = irandom(CHUNK_HEIGHT);
    for (var j = j_start; j - j_start < CHUNK_HEIGHT; j++) {
        var xx = i%CHUNK_WIDTH;
        var yy = j%CHUNK_HEIGHT;
        ds_grid_set(_grid_tiles, xx, yy,
                    instance_create(xx*TILE_WIDTH+x,
                                    yy*TILE_HEIGHT+y,
                                    obj_tile));
    }
}
