// Make the pistol follow the player and aim at the mouse
x = objPlayer.x + lengthdir_x(16, point_direction(objPlayer.x, objPlayer.y, mouse_x, mouse_y));
y = objPlayer.y + lengthdir_y(16, point_direction(objPlayer.x, objPlayer.y, mouse_x, mouse_y));
image_angle = point_direction(objPlayer.x, objPlayer.y, mouse_x, mouse_y);

// Mirror the sprite if it's on the left side of the player
if (mouse_x < objPlayer.x) {
    image_yscale = -1;
} else {
    image_yscale = 1;
}
