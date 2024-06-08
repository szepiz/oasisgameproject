// Handle movement
var move_speed = 4;
hsp = 0;
vsp = 0;

if (keyboard_check(vk_up)) {
    vsp = -move_speed;
}
if (keyboard_check(vk_down)) {
    vsp = move_speed;
}
if (keyboard_check(vk_left)) {
    hsp = -move_speed;
}
if (keyboard_check(vk_right)) {
    hsp = move_speed;
}

// Move the player
x += hsp;
y += vsp;

// Set the player sprite based on movement
if (hsp != 0 || vsp != 0) {
    sprite_index = sprPlayerRun;
} else {
    sprite_index = sprPlayerIdle;
}

// Mirror the player sprite based on the mouse position
if (mouse_x < x) {
    image_xscale = -1;
} else {
    image_xscale = 1;
}
