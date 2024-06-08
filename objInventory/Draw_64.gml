// Ensure the inventory sprite is always drawn at the top center of the screen
var gui_width = display_get_gui_width();
var scale_factor = 3; // Adjust this value to scale up the inventory

var inventory_x = (gui_width / 2) - (sprite_get_width(sprite_index) * scale_factor / 2);
var inventory_y = 10; // Adjust as needed for vertical position

// Draw the scaled inventory sprite
draw_sprite_ext(sprite_index, 0, inventory_x, inventory_y, scale_factor, scale_factor, 0, c_white, 1);

// Draw the inventory boxes
for (var i = 0; i < global.inventory_slots; i++) {
    var column = i mod global.inventory_columns;
    var row = i div global.inventory_columns;

    var box_x = inventory_x + (global.inventory_box_x + column * global.inventory_box_spacing) * scale_factor;
    var box_y = inventory_y + (global.inventory_box_y + row * global.inventory_box_spacing) * scale_factor;

    draw_sprite(sprInventoryBox, 0, box_x, box_y);

    // If there's an item in this slot, draw it
    if (global.inventory[i] != -1) {
        draw_sprite(global.inventory[i], 0, box_x, box_y);
    }
}
