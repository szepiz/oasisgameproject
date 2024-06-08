// Camera settings
var cam = view_camera[0];
camera_set_view_size(cam, 521, 288); // Your desired camera size
camera_set_view_target(cam, objPlayer); // Follow the player

// Set the GUI layer to not scale with the camera
display_set_gui_size(1024, 576); // Your desired GUI size

// Initialize global variables for inventory
global.inventory_open = false; // To track if the inventory is open or closed
global.inventory_slots = 15; // Total number of inventory slots
global.inventory_columns = 5; // Number of columns in the inventory grid
global.inventory_rows = 3; // Number of rows in the inventory grid

// Create an array to hold the items in the inventory (-1 means empty slot)
global.inventory = array_create(global.inventory_slots, -1);

// Position for the inventory boxes
global.inventory_box_x = 10; // X position offset within the inventory background
global.inventory_box_y = 20; // Y position offset within the inventory background
global.inventory_box_spacing = 36; // Spacing between inventory boxes

// Size of the inventory box
global.inventory_box_size = 32;

// Initialize global weapon variable
global.weapon_in_hand = noone; // No weapon equipped initially
