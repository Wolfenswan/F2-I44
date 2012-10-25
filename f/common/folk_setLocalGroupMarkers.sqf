// F2 - Folk Group Markers
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// JIP CHECK
// Prevents the script executing until the player has synchronised correctly:

#include "f_waitForJIP.sqf"

// ====================================================================================

switch (faction player) do
{

// ====================================================================================

// MARKERS: US Army
// Markers seen by players in US slots.

	case "I44_A_Army":
	{
		["GrpUS_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpUS_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpUS_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUS_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUS_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_FLM1",  3, "FLM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUS_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUS_P1",  8, "P1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_P2",  8, "P2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_AH1",  8, "AH1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitUS_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitUS_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitUS_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitUS_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitUS_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};
	
	case "I44_A_Army_Winter":
	{
		["GrpUS_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpUS_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpUS_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUS_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUS_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_FLM1",  3, "FLM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUS_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUS_P1",  8, "P1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_P2",  8, "P2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_AH1",  8, "AH1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitUS_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitUS_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitUS_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitUS_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitUS_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};
	
	case "I44_A_Aaf":
	{
		["GrpUS_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpUS_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpUS_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUS_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUS_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUS_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_FLM1",  3, "FLM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUS_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUS_P1",  8, "P1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUS_P2",  8, "P2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitUS_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitUS_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitUS_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitUS_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitUS_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};
// ====================================================================================

// MARKERS: BRITISH ARMED FORCES
// Markers seen by players in BRITISH ARMED FORCES slots.

	case "I44_B_Army":
	{
		["GrpBAF_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpBAF_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpBAF_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";		
		["GrpBAF_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_FLM1",  3, "FLM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpBAF_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpBAF_P1",  8, "P1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_P2",  8, "P2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitBAF_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitBAF_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitBAF_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitBAF_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitBAF_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};
	
	case "I44_B_Army_Winter":
	{
		["GrpBAF_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpBAF_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpBAF_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";		
		["GrpBAF_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_FLM1",  3, "FLM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpBAF_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpBAF_P1",  8, "P1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_P2",  8, "P2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitBAF_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitBAF_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitBAF_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitBAF_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitBAF_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};
	
	case "I44_B_Army_Aaf":
	{
		["GrpBAF_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpBAF_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpBAF_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";		
		["GrpBAF_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_FLM1",  3, "FLM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpBAF_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpBAF_P1",  8, "P1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_P2",  8, "P2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitBAF_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitBAF_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitBAF_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitBAF_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitBAF_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};
	
// ====================================================================================

// MARKERS: Wehrmacht
// Markers seen by players in TAKISTANI ARMY slots.

	case "I44_G_WH":
	{
		["GrpWH_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpWH_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpWH_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_FLM1",  3, "FLM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpWH_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpWH_P1",  8, "P1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_P2",  8, "P2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";		
		["UnitWH_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitWH_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitWH_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitWH_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitWH_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};

	case "I44_G_WH_Winter":
	{
		["GrpWH_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpWH_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpWH_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpWH_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_FLM1",  3, "FLM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpWH_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpWH_P1",  8, "P1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpWH_P2",  8, "P2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";		
		["UnitWH_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitWH_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitWH_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitWH_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitWH_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};

// ====================================================================================

// MARKERS: Waffen SS
// Markers seen by players in TAKISTANI MILITIA slots.

	case "I44_G_SS":
	{
		["GrpSS_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpSS_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpSS_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_FLM1",  3, "FLM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpSS_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpSS_P1",  8, "P1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_P2",  8, "P2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitSS_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitSS_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";				
		["UnitSS_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitSS_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitSS_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};
     
	 case "I44_G_SS_Winter":
	{
		["GrpSS_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpSS_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpSS_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpSS_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_FLM1",  3, "FLM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpSS_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpSS_P1",  8, "P1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpSS_P2",  8, "P2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitSS_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitSS_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";				
		["UnitSS_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitSS_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitSS_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};
	
// ====================================================================================

// MARKERS: Fallschirmjäger
// Markers seen by players in TAKISTANI MILITIA slots.

	case "I44_G_WL":
	{
		["GrpFJ_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpFJ_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpFJ_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_FLM1",  3, "FLM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpFJ_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpFJ_P1",  8, "P1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_P2",  8, "P2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitFJ_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitFJ_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";				
		["UnitFJ_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitFJ_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitFJ_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};
     
	 case "I44_G_WL_Winter":
	{
		["GrpFJ_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpFJ_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpFJ_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_FLM1",  3, "FLM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpFJ_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpFJ_P1",  8, "P1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpFJ_P2",  8, "P2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitFJ_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitFJ_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";				
		["UnitFJ_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitFJ_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitFJ_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};	
       
// ====================================================================================

// MARKERS: TAKISTANI LOCALS (INDEPENDENT)
// Markers seen by players in TAKISTANI LOCALS (INDEPENDENT) slots.

	case "I44_R_F":
	{
		["GrpRF_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRF_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRF_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRF_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRF_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpRF_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpRF_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRF_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRF_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRF_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRF_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRF_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRF_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRF_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRF_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRF_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRF_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRF_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRF_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRF_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRF_FLM1",  3, "FLM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRF_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRF_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRF_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpRF_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRF_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpRF_P1",  8, "P1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRF_P2",  8, "P2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitRF_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitRF_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitRF_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitRF_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitRF_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};

// ====================================================================================

// MARKERS: CIVILIAN (TAKISTANI)
// Markers seen by players in CIVILIAN (TAKISTANI) slots.

	case "BIS_TK_CIV":
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