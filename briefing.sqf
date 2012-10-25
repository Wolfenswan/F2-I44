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

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Player faction: %1",_unitfaction];
	};

// ====================================================================================

//US Army and Airforce
if ((_unitfaction == "i44_a_army")||(_unitfaction == "i44_a_army_winter")||(_unitfaction == "i44_a_aaf")) exitwith {

#include "f\common\f_briefing_us.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};


//British Army and Royal Airforce

if ((_unitfaction == "i44_b_army")||(_unitfaction == "i44_b_army_winter")||(_unitfaction == "i44_b_aaf")) exitwith {

#include "f\common\f_briefing_br.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// Wehrmacht

if ((_unitfaction == "I44_G_WH")||(_unitfaction == "I44_G_WH_Winter")) exitwith {

#include "f\common\f_briefing_wh.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// Waffen SS

if ((_unitfaction == "I44_G_SS")||(_unitfaction == "I44_G_SS_Winter")) exitwith {

#include "f\common\f_briefing_ss.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

//Luftwaffe and Fallschirmjaeger

if (_unitfaction == "I44_G_WL") exitwith {

#include "f\common\f_briefing_wl.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// French Resistance

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