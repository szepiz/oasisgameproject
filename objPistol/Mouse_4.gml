// Check if the player is close enough to pick up the pistol
if (point_distance(x, y, objPlayer.x, objPlayer.y) < 32) { // Adjust distance as needed
    // Add the pistol to the player's inventory
    ds_list_add(objPlayer.inventory, id);
    
    // Set the pistol as the weapon in hand
    global.weapon_in_hand = id;

    // Remove the pistol from the room
    instance_destroy();
}
