// Draw the player sprite
draw_self();

// Draw the weapon in hand if it exists
if (global.weapon_in_hand != noone) {
    var weapon = global.weapon_in_hand;
    weapon.x = x + lengthdir_x(16, point_direction(x, y, mouse_x, mouse_y));
    weapon.y = y + lengthdir_y(16, point_direction(x, y, mouse_x, mouse_y));
    weapon.image_angle = point_direction(x, y, mouse_x, mouse_y);

    // Mirror the weapon sprite if it's on the left side of the player
    if (mouse_x < x) {
        weapon.image_yscale = -1;
    } else {
        weapon.image_yscale = 1;
    }
}
