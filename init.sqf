// ====================================================================================

// F2 - Process ParamsArray
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// WARNING: DO NOT DISABLE THIS COMPONENT

f_processParamsArray = [] execVM "f\common\f_processParamsArray.sqf";

// ====================================================================================

// F2 - Disable Saving and Auto Saving
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

enableSaving [false, false];

// ====================================================================================

// F2 - Respawn INIT
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

f_respawnINIT = player addEventHandler ["killed", {_this execVM "init_onPlayerRespawn.sqf"}];

// ====================================================================================

// F2 - Mission Maker Teleport
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

// f_missionMakerTeleport = 0;
// [] execVM "f\common\f_missionMakerTeleport.sqf";

// ====================================================================================

// F2 - I44 Briefing
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

[] execVM "briefing.sqf";

// ====================================================================================

// F2 - Mission Conditions Selector
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

[] execVM "f\common\f_setMissionConditions.sqf";

// ====================================================================================

// F2 - I44 Folk Group IDs
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

f_script_setGroupIDs = [] execVM "f\common\folk_setGroupIDs.sqf";

// ====================================================================================

// F2 - ShackTactical Fireteam Member Markers
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

[] execVM "f\common\ShackTac_setlocalFTMemberMarkers.sqf";

// ====================================================================================

// F2 - I44 Group Markers
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

[] execVM "f\common\folk_setLocalGroupMarkers.sqf";

// ====================================================================================

// F2 - F2 Common Local Variables
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// WARNING: DO NOT DISABLE THIS COMPONENT

f_script_setLocalVars = [] execVM "f\common\f_setLocalVars.sqf";

// ====================================================================================

// F2 - Multiplayer Ending Controller 
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

f_endSelected = -1;
[] execVM "f\common\f_mpEndSetUp.sqf";

// ====================================================================================

// F2 - Kegetys Spectator Script
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

[] execVM "f\common\f_spect\specta_init.sqf";

// ====================================================================================

// F2 - Disable BIS Conversations
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

player setVariable ["BIS_noCoreConversations", true];

// ====================================================================================

// F2 - Automatic Body Removal
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

// f_removeBodyDelay = 180;
// f_doNotRemoveBodies = [];
// [] execVM "f\common\f_addRemoveBodyEH.sqf";

// ====================================================================================

// F2 - Automatic Body Removal (FIFO)
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

// f_abrFIFOlength = 30;
// f_abrDistance = 150;
// f_abrFIFOmaxLength = 50;
// f_doNotRemoveBodies = [];
// ["fifo"] execVM "f\common\f_addRemoveBodyEH.sqf";
// [] execVM "f\server\f_abrFIFO.sqf";

// ====================================================================================

// F2 - Dynamic View Distance 
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

// f_viewDistance_default = 1250;
// f_viewDistance_tank = 2000;
// f_viewDistance_rotaryWing = 2500;
// f_viewDistance_fixedWing = 5000;
// [] execVM "f\common\f_addSetViewDistanceEHs.sqf";

// ====================================================================================

// F2 - Authorised Crew Check
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

// VehicleName addEventhandler ["GetIn", {[_this,[UnitName1,UnitName2]] execVM "f\common\f_isAuthorisedCrew.sqf"}];

// ====================================================================================

// F2 - Authorised Crew Type Check
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

// VehicleName addEventhandler ["GetIn", {[_this,["UnitType1","UnitType2"]] execVM "f\common\f_isAuthorisedCrewType.sqf"}];

// ====================================================================================

// F2 - Casualties Cap
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

// [[GroupName],100,1] execVM "f\server\f_endOnCasualtiesCap.sqf";

// US
//[[GrpUS_CO,GrpUS_DC,GrpUS_ASL,GrpUS_BSL,GrpUS_CSL,GrpUS_A1,GrpUS_A2,GrpUS_A3,GrpUS_B1,GrpUS_B2,GrpUS_B3,GrpUS_C1,GrpUS_C2,GrpUS_C3,GrpUS_MMG1,GrpUS_MAT1,GrpUS_ST1,GrpUS_ENG1,GrpUS_MTR1,GrpUS_HAT1,GrpUS_HMG1,GrpUS_SAM1,GrpUS_IFV1,GrpUS_IFV2,GrpUS_IFV3,GrpUS_TNK1,GrpUS_TH1,GrpUS_TH2,GrpUS_AH1],100,1] execVM "f\server\f_endOnCasualtiesCap.sqf";
//
// BR
//[[GrpBR_CO,GrpBR_DC,GrpBR_ASL,GrpBR_BSL,GrpBR_CSL,GrpBR_A1,GrpBR_A2,GrpBR_A3,GrpBR_B1,GrpBR_B2,GrpBR_B3,GrpBR_C1,GrpBR_C2,GrpBR_C3,GrpBR_MMG1,GrpBR_MAT1,GrpBR_ST1,GrpBR_ENG1,GrpBR_MTR1,GrpBR_HAT1,GrpBR_HMG1,GrpBR_SAM1,GrpBR_IFV1,GrpBR_IFV2,GrpBR_IFV3,GrpBR_TNK1,GrpBR_TH1,GrpBR_TH2,GrpBR_AH1],100,1] execVM "f\server\f_endOnCasualtiesCap.sqf";
//
// Waffen-SS
//[[GrpTK_CO,GrpTK_DC,GrpTK_ASL,GrpTK_BSL,GrpTK_CSL,GrpTK_A1,GrpTK_A2,GrpTK_A3,GrpTK_B1,GrpTK_B2,GrpTK_B3,GrpTK_C1,GrpTK_C2,GrpTK_C3,GrpTK_MMG1,GrpTK_MAT1,GrpTK_ST1,GrpTK_ENG1,GrpTK_MTR1,GrpTK_HAT1,GrpTK_HMG1,GrpTK_SAM1,GrpTK_IFV1,GrpTK_IFV2,GrpTK_IFV3,GrpTK_TNK1,GrpTK_TH1,GrpTK_TH2,GrpTK_AH1],100,1] execVM "f\server\f_endOnCasualtiesCap.sqf";
//
// Wehrmacht
//[[GrpRU_CO,GrpRU_DC,GrpRU_ASL,GrpRU_BSL,GrpRU_CSL,GrpRU_A1,GrpRU_A2,GrpRU_A3,GrpRU_B1,GrpRU_B2,GrpRU_B3,GrpRU_C1,GrpRU_C2,GrpRU_C3,GrpRU_MMG1,GrpRU_MAT1,GrpRU_ST1,GrpRU_ENG1,GrpRU_MTR1,GrpRU_HAT1,GrpRU_HMG1,GrpRU_SAM1,GrpRU_IFV1,GrpRU_IFV2,GrpRU_IFV3,GrpRU_TNK1,GrpRU_TH1,GrpRU_TH2,GrpRU_AH1],100,1] execVM "f\server\f_endOnCasualtiesCap.sqf";
//
// Luftwaffe
//[[GrpINS_CO,GrpINS_DC,GrpINS_ASL,GrpINS_BSL,GrpINS_CSL,GrpINS_A1,GrpINS_A2,GrpINS_A3,GrpINS_B1,GrpINS_B2,GrpINS_B3,GrpINS_C1,GrpINS_C2,GrpINS_C3,GrpINS_MMG1,GrpINS_MAT1,GrpINS_ST1,GrpINS_ENG1,GrpINS_MTR1,GrpINS_HAT1,GrpINS_HMG1,GrpINS_SAM1,GrpINS_IFV1,GrpINS_IFV2,GrpINS_IFV3,GrpINS_TNK1,GrpINS_TH1,GrpINS_TH2,GrpINS_AH1],100,1] execVM "f\server\f_endOnCasualtiesCap.sqf";
//
// French Resistance
//[[GrpA2INS_CO,GrpA2INS_DC,GrpA2INS_ASL,GrpA2INS_BSL,GrpA2INS_CSL,GrpA2INS_A1,GrpA2INS_A2,GrpA2INS_A3,GrpA2INS_B1,GrpA2INS_B2,GrpA2INS_B3,GrpA2INS_C1,GrpA2INS_C2,GrpA2INS_C3,GrpA2INS_MMG1,GrpA2INS_MAT1,GrpA2INS_ST1,GrpA2INS_ENG1,GrpA2INS_MTR1,GrpA2INS_HAT1,GrpA2INS_HMG1,GrpA2INS_SAM1,GrpA2INS_IFV1,GrpA2INS_IFV2,GrpA2INS_IFV3,GrpA2INS_TNK1,GrpA2INS_TH1,GrpA2INS_TH2,GrpA2INS_AH1],100,1] execVM "f\server\f_endOnCasualtiesCap.sqf";
//
// ====================================================================================

// F2 - Casualties Cap (Advanced)
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

// [[GroupName],100] execVM "f\server\f_casualtiesCapAdv.sqf";

// ====================================================================================

// F2 - AI Skill Selector (coop)
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

// f_isFriendlyBLU = 1;
// f_isFriendlyRES = 1;
// f_isFriendlyOPF = 0;
// f_isFriendlyCIV = 1;
// [] execVM "f\common\f_setAISkill.sqf";

// ====================================================================================

// F2 - AI Skill Selector (A&D)
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

// f_isFriendlyToBLU_RES = 1;
// f_isFriendlyToBLU_CIV = 1;
// [] execVM "f\common\f_setAISkillAD.sqf";

// ====================================================================================

// F2 - Construction Interface (COIN) Presets
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

// f_COINstopped = false;
// [COINName,"UnitName",0,2500] execVM "f\common\f_COINpresets.sqf";

// ====================================================================================

// F2 - Name Tags
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

// [] execVM "f\common\f_recog\recog_init.sqf";

// ====================================================================================

// F2 - Group E&E Check
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

// [GroupName,ObjectName,100,1] execVM "f\server\f_groupEandECheck.sqf";

// ====================================================================================

// F2 - ORBAT notes
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

[] execVM "f\common\f_orbatNotes.sqf";

// ====================================================================================

// F2 - Tripwire action
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

// [[UnitName1,UnitName2],25,2,east] execVM "f\common\fa_tripwire_init.sqf";

// ====================================================================================

// F2 - Join Group Action
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)

[false] execVM "f\common\f_groupJoinAddOption.sqf";
