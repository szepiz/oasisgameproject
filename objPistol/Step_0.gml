// Check if the mouse is hovering over the pistol
is_hovered = point_in_rectangle(mouse_x, mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2);

if (is_hovered) {
    sprite_index = sprPistolOutline;
} else {
    sprite_index = sprPistol; // Make sure this is the original sprite
}

// Pick up the pistol when clicked
if (is_hovered && mouse_check_button_pressed(mb_left)) {
    // Find an empty slot in the inventory
    for (var i = 0; i < global.inventory_slots; i++) {
        if (global.inventory[i] == -1) {
            global.inventory[i] = sprPistol; // Add the pistol to the inventory
            // Attach the pistol to the player
            var pistol = instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objPistolEquipped);
            global.weapon_in_hand = pistol; // Assign the pistol to the global variable
            instance_destroy(); // Destroy the pistol object
            break;
        }
    }
}
