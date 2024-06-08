// Draw the player sprite
draw_self();

// Draw the weapon in hand
if (global.weapon_in_hand != noone) {
    var weapon_x = x + (image_xscale * 16); // Adjust the position as needed
    var weapon_y = y;
    draw_sprite(sprPistol, -1, weapon_x, weapon_y);
}
