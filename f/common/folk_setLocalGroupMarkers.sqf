// F2 - Folk Group Markers
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// JIP CHECK
// Prevents the script executing until the player has synchronised correctly:

#include "f_waitForJIP.sqf"

// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_unitfaction"];

// ====================================================================================

// DETECT PLAYER FACTION
// The following code detects what faction the player's slot belongs to, and stores
// it in the private variable _unitfaction

_unitfaction = toLower (faction player);

// If the unitfaction is different from the group leader's faction, the latters faction is used
if (_unitfaction != toLower (faction (leader group player))) then {_unitfaction = toLower (faction (leader group player))};

// ====================================================================================

// PRECOMPILE
// Prevents the next script to be read by the engine everytime it's used:

fnc_folk_localGroupMarker = compile preprocessFile "f\common\folk_localGroupMarker.sqf";
fnc_folk_localSpecialistMarker = compile preprocessFile "f\common\folk_localSpecialistMarker.sqf";

// ====================================================================================

switch (_unitfaction) do
{

// ====================================================================================

// MARKERS: US Army
// Markers seen by players in US slots.

	case "i44_a_army":
	{
		["GrpUS_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUS_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUS_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_ATG1",  3, "ATG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_FLM1",  3, "FLM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_APC1",  7, "APC1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_APC2",  7, "APC2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_APC3",  7, "APC3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_P1",  8, "P1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_P2",  8, "P2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitUS_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
	
	case "i44_a_army_winter":
	{
		["GrpUS_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUS_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUS_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_ATG1",  3, "ATG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_FLM1",  3, "FLM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_APC1",  7, "APC1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_APC2",  7, "APC2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_APC3",  7, "APC3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_P1",  8, "P1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_P2",  8, "P2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitUS_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
	
	case "i44_a_aaf":
	{
		["GrpUS_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUS_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUS_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_ATG1",  3, "ATG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_FLM1",  3, "FLM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_APC1",  7, "APC1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_APC2",  7, "APC2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_APC3",  7, "APC3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_P1",  8, "P1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_P2",  8, "P2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["UnitUS_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
// ====================================================================================

// MARKERS: BRITISH ARMED FORCES
// Markers seen by players in BRITISH ARMED FORCES slots.

	case "i44_b_army":
	{
		["GrpBAF_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpBAF_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpBAF_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;		
		["GrpBAF_ATG1",  3, "ATG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_FLM1",  3, "FLM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_APC1",  7, "APC1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_APC2",  7, "APC2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpBAF_APC3",  7, "APC3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpBAF_P1",  8, "P1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_P2",  8, "P2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["UnitBAF_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAF_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAF_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitBAF_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAF_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
	
	case "i44_b_army_winter":
	{
		["GrpBAF_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpBAF_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpBAF_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;		
		["GrpBAF_ATG1",  3, "ATG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_FLM1",  3, "FLM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_APC1",  7, "APC1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_APC2",  7, "APC2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpBAF_APC3",  7, "APC3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpBAF_P1",  8, "P1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_P2",  8, "P2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["UnitBAF_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAF_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAF_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitBAF_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAF_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
	
	case "i44_b_army_aaf":
	{
		["GrpBAF_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpBAF_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpBAF_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;		
		["GrpBAF_ATG1",  3, "ATG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_FLM1",  3, "FLM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_APC1",  7, "APC1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_APC2",  7, "APC2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpBAF_APC3",  7, "APC3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpBAF_P1",  8, "P1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_P2",  8, "P2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["UnitBAF_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAF_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAF_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitBAF_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAF_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
	
// ====================================================================================

// MARKERS: Wehrmacht
// Markers seen by players in TAKISTANI ARMY slots.

	case "i44_g_wh":
	{
		["GrpWH_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpWH_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpWH_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpWH_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpWH_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpWH_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpWH_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpWH_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpWH_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpWH_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpWH_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpWH_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpWH_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpWH_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpWH_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpWH_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpWH_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpWH_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpWH_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpWH_ATG1",  3, "ATG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpWH_FLM1",  3, "FLM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpWH_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpWH_APC1",  7, "APC1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpWH_APC2",  7, "APC2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpWH_APC3",  7, "APC3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpWH_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpWH_P1",  8, "P1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpWH_P2",  8, "P2", "ColorOrange"] spawn fnc_folk_localGroupMarker;		
		["UnitWH_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitWH_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitWH_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitWH_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitWH_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};

	case "i44_g_wh_winter":
	{
		["GrpWH_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpWH_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpWH_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpWH_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpWH_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpWH_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpWH_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpWH_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpWH_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpWH_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpWH_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpWH_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpWH_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpWH_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpWH_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpWH_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpWH_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpWH_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpWH_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpWH_ATG1",  3, "ATG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpWH_FLM1",  3, "FLM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpWH_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpWH_APC1",  7, "APC1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpWH_APC2",  7, "APC2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpWH_APC3",  7, "APC3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpWH_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpWH_P1",  8, "P1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpWH_P2",  8, "P2", "ColorOrange"] spawn fnc_folk_localGroupMarker;		
		["UnitWH_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitWH_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitWH_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitWH_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitWH_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};

// ====================================================================================

// MARKERS: Waffen SS
// Markers seen by players in TAKISTANI MILITIA slots.

	case "i44_g_ss":
	{
		["GrpSS_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpSS_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpSS_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpSS_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpSS_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpSS_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpSS_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpSS_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpSS_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpSS_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpSS_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpSS_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpSS_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpSS_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpSS_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpSS_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpSS_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpSS_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpSS_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpSS_ATG1",  3, "ATG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpSS_FLM1",  3, "FLM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpSS_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpSS_APC1",  7, "APC1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpSS_APC2",  7, "APC2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpSS_APC3",  7, "APC3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpSS_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpSS_P1",  8, "P1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpSS_P2",  8, "P2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["UnitSS_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitSS_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;				
		["UnitSS_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitSS_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitSS_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
     
	 case "i44_g_ss_winter":
	{
		["GrpSS_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpSS_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpSS_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpSS_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpSS_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpSS_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpSS_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpSS_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpSS_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpSS_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpSS_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpSS_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpSS_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpSS_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpSS_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpSS_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpSS_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpSS_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpSS_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpSS_ATG1",  3, "ATG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpSS_FLM1",  3, "FLM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpSS_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpSS_APC1",  7, "APC1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpSS_APC2",  7, "APC2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpSS_APC3",  7, "APC3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpSS_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpSS_P1",  8, "P1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpSS_P2",  8, "P2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["UnitSS_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitSS_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;				
		["UnitSS_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitSS_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitSS_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
	
// ====================================================================================

// MARKERS: Fallschirmjäger
// Markers seen by players in TAKISTANI MILITIA slots.

	case "i44_g_wl":
	{
		["GrpFJ_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpFJ_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpFJ_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_ATG1",  3, "ATG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_FLM1",  3, "FLM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_APC1",  7, "APC1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_APC2",  7, "APC2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpFJ_APC3",  7, "APC3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpFJ_P1",  8, "P1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_P2",  8, "P2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["UnitFJ_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitFJ_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;				
		["UnitFJ_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitFJ_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitFJ_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
     
	 case "i44_g_wl_winter":
	{
		["GrpFJ_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpFJ_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpFJ_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_ATG1",  3, "ATG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_FLM1",  3, "FLM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_APC1",  7, "APC1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_APC2",  7, "APC2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpFJ_APC3",  7, "APC3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpFJ_P1",  8, "P1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpFJ_P2",  8, "P2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["UnitFJ_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitFJ_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;				
		["UnitFJ_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitFJ_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitFJ_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};	
       
// ====================================================================================

// MARKERS: TAKISTANI LOCALS (INDEPENDENT)
// Markers seen by players in TAKISTANI LOCALS (INDEPENDENT) slots.

	case "i44_r_f":
	{
		["GrpRF_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRF_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRF_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRF_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRF_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpRF_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpRF_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRF_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRF_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRF_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRF_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRF_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRF_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRF_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRF_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRF_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRF_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRF_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRF_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRF_ATG1",  3, "ATG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRF_FLM1",  3, "FLM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRF_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRF_APC1",  7, "APC1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRF_APC2",  7, "APC2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpRF_APC3",  7, "APC3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRF_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpRF_P1",  8, "P1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRF_P2",  8, "P2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["UnitRF_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRF_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRF_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitRF_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRF_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};

// ====================================================================================

// MARKERS: CIVILIAN
// Markers seen by players in CIVILIAN slots.

	case "CIV":
	{

	};

// ====================================================================================

// MARKERS: CIVILIAN (SPECIAL)
// Markers seen by players in CIVILIAN (SPECIAL) slots.

	case "BIS_CIV_special":
	{

	};
       
// ====================================================================================

};

// ====================================================================================

if (true) exitWith {};