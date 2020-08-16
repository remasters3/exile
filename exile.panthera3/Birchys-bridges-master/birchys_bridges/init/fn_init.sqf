// Include shit in here

/*
include map content.
Call compile preprocess'ing them is MUCH better. 
Creating spawn/execvm's IS BAD unless the script is a long running one.
If you try call compile and it all goes to shit, use execvm =P

Add more by copy, pasting the line.
*/

diag_log "Starting Birchy's Bridges";

call compile preprocessFileLineNumbers "\x\addons\gadd_extras\mapcontent\Bridges.sqf";
call compile preprocessFileLineNumbers "\x\addons\gadd_extras\mapcontent\Bridgemarkers.sqf";
