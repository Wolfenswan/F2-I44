// F2 - Folk Assign Gear Script - Luftwaffe Equipment
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co		- commander
//		dc 		- deputy commander
//		m 		- medic
//		ro		- radio operator
//		ftl		- fire team leader
//		ar 		- automatic rifleman
//		aar		- assistant automatic rifleman
//		rat		- rifleman (AT)
//		flmg	- flamethrower gunner
//		flmag	- flamethrower assistant
//		mmgg	- medium mg gunner
//		mmgag	- medium mg assistant
//		hmgg	- heavy mg gunner (deployable)
//		hmgag	- heavy mg assistant (deployable)
//		matg	- medium AT gunner
//		matag	- medium AT assistant
//		hatg	- heavy AT gunner
//		hatg	- heavy AT assistant
//		mtrg	- mortar gunner (deployable)
//		mtrag	- mortar assistant (deployable)
//		sn		- sniper
//		sp		- spotter
//		c		- ground vehicle crew
//      cco     - ground vehicle commander
//		p		- air vehicle pilots
//		eng		- engineers
//
//      gren    - grenadier
//		r 		- rifleman
//		car		- carabineer
//		smg		- submachinegunner


// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

_rifle = "I44_K98k"; _riflemag = "I44_5rd_792x57_Mix_K98";																					// Standard Riflemen (Spotter, HMG Assistant Gunner, MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, HAT Assistant Gunner, MTR Assistant Gunner, Rifleman)

_carbine = "I44_G43"; _carbinemag = "I44_10rd_792x57_Mix_G43"; 																					// Standard Carabineer (Medic, HMG Gunner, Rifleman (AT), Rifleman (AA), MAT Gunner, HAT Gunner, MTR Gunner, Carabineer)

_smg = "I44_MP43"; _smgmag = "I44_30rd_792x33_Ball_MP43";																											// Standard Submachine Gun/Personal Defence Weapon (Vehicle Crew, Aircraft Pilot, Submachinegunner)

_glrifle = "I44_K98k_GGrGer"; _glriflemag = "I44_5rd_792x57_Mix_K98"; _glmag1 = "I44_RifleGrenade_GSprgr";	_glmag2 = "I44_RifleGrenade_GGPzgr40";_glmag3="I44_RifleGrenade_GPzgr30";_glflarewhite="I44_RifleGrenade_GFlgr";														// Rifle with GL and HE grenades (CO, DC, FTLs)

_pistol = "I44_P38"; _pistolmag = "I44_8rd_9x19_Ball_P38";																						// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)

_grenade = "I44_HandGrenade_StiHgr24"; _smokegrenade = "I44_SmokeGrenade_NbHgr39";																				// Grenades

_bagmedium = "I44_Bag_G_FSJ";																								// Backpack for assistant gunners (AAR, AMMG, AMAT, AHAT), so that they don't have to drop ammo themselves
_baglarge =  "I44_Bag_G_FSJ"; 
_bagradio = "I44_Bag_G_FSJ_Radio";		

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

_AR = "I44_FG42II"; _ARmag = "I44_20rd_792x57_Mix_FG42";																								// Automatic Rifleman

_MMG = "I44_MG42"; _MMGmag = "I44_50rd_792x57_Mix_MG42";																									// Medium MG

_HMG = "DSHkM_Mini_TriPod_TK_INS_Bag_EP1";																									// Heavy MG (note: HMG is an assembled weapon, gunner carries weapon)
_HMGmount = "Tripod_Bag";																													// Assistant Heavy MG (note: HMG is an assembled weapon, assistant carries bipod/tripd)

_RAT = "I44_PzFaust60"; _RATmag = "I44_Rocket_149mm_PzF_60";																											// Rifleman AT

_MAT = "I44_RPzB54"; _MATmag1 = "I44_Rocket_88mm_RPzBGr4322_RPzB54"; _MATmag2 = "I44_Rocket_88mm_RPzBGr4322_RPzB54";																					// Medium AT

_HAT = "MetisLauncher"; _HATmag1 = "AT13"; _HATmag2 = "AT13";																				// Heavy AT Gunner

_MTR = "I44_Bag_GrW34";																												// Mortar Gunner (note: Mortar is an assembled weapon, gunner carries weapon)
_MTRmount = "I44_Bag_GrW34BP";																														// Mortar Assistant Gunner (note: Mortar is an assembled weapon, assistant carries bipod/tripd)

_FLM = "I44_M2_flameThrower"; _FLMmag = "I44_m2_flamethrower_mag";_FLMback = "I44_Backpack_M2flamethrower";																											// Rifleman AA (anti-air)

_SNrifle = "I44_K98kZf42"; _SNriflemag = "I44_5rd_792x57_Mix_K98";																							// Sniper

_mine = "I44_Mine_AT_TMi42"; _satchel = "I44_Item_GbLadung3kg";	_satchel2 = "I44_Item_GbLadung10kg";	
_bayonet = "I44_ItemBayonet";
_shovel = "I44_ItemShovel";																										// Engineer
_medpackl = "I44_MedpackLarge";	
_medpacks = "I44_MedpackSmall";

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;							// expecting name of unit; originally passed by using 'this' in unit init

// ====================================================================================

// PREPARE UNIT FOR GEAR ADDITION
// The following code removes all existing weapons and backpacks

removeBackpack _unit;
removeallweapons _unit;

//removeAllItems _unit;						// remove default items: map, compass, watch, radio
////_unit addweapon "I44_MedpackSmall";		// add universal Medpack for this faction (nb: misc items not cleared)
//_unit addweapon "ItemMap";				// etc
//_unit addweapon "ItemCompass";
//_unit addweapon "ItemRadio";
//_unit addweapon "ItemWatch";
//_unit addweapon "I44_ItemShovel";

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMMANDER
	case "co":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6];	//_COriflemag
		_unit addweapon _carbine;									//_COrifle
		{_unit addmagazine _pistolmag} foreach [1,2,3,4];
		_unit addweapon _pistol;		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addweapon "Binocular";
		_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
	};
  
// LOADOUT: DEPUTY COMMANDER
	case "dc":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6];	//_COriflemag
		_unit addweapon _carbine;									//_COrifle
		{_unit addmagazine _pistolmag} foreach [1,2,3,4];
		_unit addweapon _pistol;		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addweapon "Binocular";
		_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
	}; 

// LOADOUT: MEDIC
	case "m":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6];	
		_unit addweapon _rifle;
		{_unit addmagazine _smokegrenade;} foreach [1,2];	
		_unit addWeapon _medpackl;
	};
	
// LOADOUT: RADIO OPERATOR
	case "ro":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6];	
		_unit addweapon _rifle;
		{_unit addmagazine _grenade;} foreach [1,2];	
		_unit addBackpack _bagradio;
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6];	//_COriflemag
		_unit addweapon _carbine;									//_COrifle
		{_unit addmagazine _pistolmag} foreach [1,2,3,4];
		_unit addweapon _pistol;		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addweapon "Binocular";
		_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
	};	

// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		{_unit addmagazine _ARmag} foreach [1,2,3,4,5];
		_unit addweapon _AR;		
		{_unit addmagazine _pistolmag} foreach [1,2,3,4];
		_unit addweapon _pistol;
	};	
	
// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		{_unit addmagazine _smgmag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _smg;		
		{_unit addmagazine _grenade} foreach [1,2];
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_RATmag, 2];
	};

// LOADOUT: GRENADIER
	case "gren":
	{
		{_unit addmagazine _glriflemag} foreach [1,2,3,4,5];
		{_unit addmagazine _glmag1} foreach [1,2];
		{_unit addmagazine _glmag2} foreach [1,2];
		{_unit addmagazine _glmag3} foreach [1,2];
		{_unit addmagazine _glflarewhite} foreach [1];
		_unit addweapon _glrifle;
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_glmag1, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_glmag2, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_glmag3, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_glflarewhite, 2];
	};		
	
// LOADOUT: RIFLEMAN (AT)	
	case "rat":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _rifle;
		{_unit addmagazine _RATmag} foreach [1,2];				
		_unit addweapon _RAT;
	};		
	
// LOADOUT: FLAMETHROWER GUNNER 
	case "flmg":
	{
		{_unit addmagazine _FLMmag} foreach [1];				
		_unit addweapon _FLM;
		_unit addBackpack _FLMback;
		{_unit addmagazine _pistolmag} foreach [1,2,3,4,5,6];
		_unit addweapon _pistol;
	};			
	
// LOADOUT: ASSISTANT FLAMETHROWER GUNNER
	case "flmag":
	{
		{_unit addmagazine _smgmag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _smg;		
		{_unit addmagazine _grenade} foreach [1,2];
	};			
	
// LOADOUT: MEDIUM MG GUNNER	
	case "mmgg":
	{
		{_unit addmagazine _MMGmag} foreach [1,2,3,4,5];
		_unit addweapon _MMG;	
		{_unit addmagazine _grenade} foreach [1];	
		{_unit addmagazine _pistolmag} foreach [1,2,3,4,5,6];
		_unit addweapon _pistol;
	};			

// LOADOUT: MEDIUM MG ASSISTANT GUNNER	
	case "mmgag":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6];
		_unit addweapon _carbine;
		_unit addweapon "Binocular";
		{_unit addmagazine _grenade} foreach [1,2];
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 4];
			(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];			
	};
	
// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		_unit addweapon _carbine;
			_unit addBackpack _HMG;
	};	
	
// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
		_unit addweapon _rifle;
		_unit addweapon "Binocular";			
			_unit addBackpack _HMGmount;
		_unit addWeapon _bayonet;
	};		

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6];
		_unit addweapon _rifle;
		{_unit addmagazine _MATmag1} foreach [1,2,3,4];
		_unit addweapon _MAT;
		{_unit addmagazine _pistolmag} foreach [1,2,3,4,5,6];
		_unit addweapon _pistol;
		_unit addWeapon _bayonet;
	};	
	
// LOADOUT: MEDIUM AT ASSISTANT GUNNER	
	case "matag":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6];
		_unit addweapon _carbine;
		{_unit addmagazine _grenade} foreach [1,2];
		_unit addweapon "Binocular";		
			_unit addBackpack _baglarge;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 4];
			(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 2];		
	};	
	
// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		_unit addweapon _carbine;
		{_unit addmagazine _HATmag1} foreach [1];
		_unit addweapon _HAT;			
	};	
	
// LOADOUT: HEAVY AT ASSISTANT GUNNER	
	case "hatag":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
		_unit addweapon _rifle;
		_unit addweapon "Binocular";		
			_unit addBackpack _baglarge;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 1];
			(unitBackpack _unit) addMagazineCargoGlobal [_HATmag2, 2];			
	};		
	
// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _rifle;
			_unit addBackpack _MTR;
		_unit addWeapon _bayonet;
	};	
	
// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _rifle;
		_unit addweapon "Binocular";			 
			_unit addBackpack _MTRmount;
		_unit addWeapon _bayonet;
	};		
	
// LOADOUT: SNIPER
	case "sn":
	{
		{_unit addmagazine _SNriflemag} foreach [1,2,3,4];
		_unit addweapon _SNrifle;
		_unit addweapon "Binocular";
		{_unit addmagazine _pistolmag} foreach [1,2,3,4,5,6];
		_unit addweapon _pistol;
	};		
	
// LOADOUT: SPOTTER
	case "sp":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6];
		_unit addweapon _carbine;
		_unit addweapon "Binocular";	
	};			
	
// LOADOUT: GROUND VEHICLE CREW
	case "c":
	{
		{_unit addmagazine _pistolmag} foreach [1,2,3,4];
		_unit addweapon _pistol;
		{_unit addmagazine _smokegrenade} foreach [1];
	};

// LOADOUT: GROUND VEHICLE CREW COMMANDER
	case "cco":
	{
		{_unit addmagazine _pistolmag} foreach [1,2,3,4];
		_unit addweapon _pistol;
		_unit addweapon "Binocular";
		{_unit addmagazine _smokegrenade} foreach [1];
	};		
	
// LOADOUT: AIR VEHICLE PILOTS
	case "p":
	{
		{_unit addmagazine _pistolmag} foreach [1,2,3,4];
		_unit addweapon _pistol;
		{_unit addmagazine _smokegrenade} foreach [1,2];					
	};		
	
// LOADOUT: ENGINEER
	case "eng":
	{
		{_unit addmagazine _smgmag} foreach [1,2,3,4,5,6];
		_unit addweapon _smg;
		{_unit addmagazine _satchel} foreach [1,2];
		{_unit addmagazine _mine} foreach [1,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];	
			_unit addBackpack _baglarge;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_satchel2, 1];
			(unitBackpack _unit) addMagazineCargoGlobal [_mine, 2];	
			(unitBackpack _unit) addMagazineCargoGlobal [_satchel, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];	
	};	
		
// LOADOUT: RIFLEMAN
	case "r":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _rifle;
		_unit addWeapon _bayonet;
	};

// LOADOUT: CARABINEER
	case "car":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _carbine;
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		{_unit addmagazine _smgmag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _smg;
		{_unit addmagazine _grenade} foreach [1,2];
	};


	
// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7];
		_unit addweapon _rifle;
		
		_unit selectweapon primaryweapon _unit;
				
		if (true) exitwith {player globalchat format ["DEBUG (f\common\folk_assignGear.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING
_unit selectweapon primaryweapon _unit;