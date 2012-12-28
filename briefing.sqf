// F2 - OA Briefing
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// JIP CHECK
// Prevents the script executing until the player has synchronised correctly:

#include "f\common\f_waitForJIP.sqf"

// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_unitfaction","_unitside"];

// ====================================================================================

// DETECT PLAYER FACTION
// The following code detects what faction the player's slot belongs to, and stores
// it in the private variable _unitfaction

_unitfaction = toLower(faction player);

// If the unitfaction is different from the group leader's faction, the latters faction is used
if (_unitfaction != toLower (faction (leader group player))) then {_unitfaction = toLower (faction (leader group player))};

// As PMC units are used as exchange medics and engineers, they are defaulted to the UN briefing.
// Change "bis_un" to "bis_tk_gue" when using the TK Local Platoon
if (_unitfaction == "pmc_BR") then {_unitfaction = "bis_un"}; 

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Player faction: %1",_unitfaction];
	};

// ====================================================================================

// BRIEFING: US Army and Airforce
// The following block of code executes only if the player is in a US slot; it 
// automatically includes a file which contains the appropriate briefing data.

if ((_unitfaction == "i44_a_army")||(_unitfaction == "i44_a_army_winter")||(_unitfaction == "i44_a_aaf")) exitwith {

#include "f\common\f_briefing_us.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};


// BRIEFING: British Army and Royal Airforce
// The following block of code executes only if the player is in a British slot; it 
// automatically includes a file which contains the appropriate briefing data.

if ((_unitfaction == "i44_b_army")||(_unitfaction == "i44_b_army_winter")||(_unitfaction == "i44_b_aaf")) exitwith {

#include "f\common\f_briefing_br.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// BRIEFING: WEHRMACHT
// The following block of code executes only if the player is in a Wehrmacht slot; it 
// automatically includes a file which contains the appropriate briefing data.

if ((_unitfaction == "I44_G_WH")||(_unitfaction == "I44_G_WH_Winter")) exitwith {

#include "f\common\f_briefing_wh.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// BRIEFING: WAFFEN SS
// The following block of code executes only if the player is in a Waffen SS slot; it 
// automatically includes a file which contains the appropriate briefing data.

if ((_unitfaction == "I44_G_SS")||(_unitfaction == "I44_G_SS_Winter")) exitwith {

#include "f\common\f_briefing_ss.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// BRIEFING: LUFTWAFFE AND FALLSCHIRMJAEGER
// The following block of code executes only if the player is in a Luftwaffe slot; it 
// automatically includes a file which contains the appropriate briefing data.

if (_unitfaction == "I44_G_WL") exitwith {

#include "f\common\f_briefing_wl.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// BRIEFING: FRENCH RESISTANCE
// The following block of code executes only if the player is in a French Resistance slot; it 
// automatically includes a file which contains the appropriate briefing data.

if (_unitfaction == "I44_R_F") exitwith {

#include "f\common\f_briefing_res.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};



// ====================================================================================

// ERROR CHECKING
// If the faction of the unit cannot be defined, the script exits with an error.

player globalchat format ["DEBUG (briefing.sqf): Faction %1 is not defined.",_unitfaction];