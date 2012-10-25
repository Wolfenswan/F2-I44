// F2 - Folk Assign Gear Script - TK Militia (TK_INS) Equipment
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co		- commander
//		dc 		- deputy commander
//		m 		- medic
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
//		p		- air vehicle pilots
//		eng		- engineers
//
//		r 		- rifleman
//		car		- carabineer
//		smg		- submachinegunner

// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

_rifle = "I44_K98k"; _riflemag = "I44_5rd_792x57_Mix_K98";																							// Standard Riflemen (Spotter, HMG Assistant Gunner, MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, HAT Assistant Gunner, MTR Assistant Gunner, Rifleman)

_carbine = "AK_47_S"; _carbinemag = "30Rnd_762x39_AK47"; 																					// Standard Carabineer (Medic, HMG Gunner, Rifleman (AT), Rifleman (AA), MAT Gunner, HAT Gunner, MTR Gunner, Carabineer)

_smg = "I44_MP40"; _smgmag = "I44_32rd_9x19_Ball_MP40";																									// Standard Submachine Gun/Personal Defence Weapon (Vehicle Crew, Aircraft Pilot, Submachinegunner)

_glrifle = "I44_K98k_GGrGer"; _glriflemag = "30Rnd_545x39_AK"; _glmag1 = "I44_RifleGrenade_GSprgr";	_glmag2 = "I44_RifleGrenade_GGPzgr40";_glflarewhite="I44_RifleGrenade_GFlgr";														// Rifle with GL and HE grenades (CO, DC, FTLs)

_pistol = "I44_P08"; _pistolmag = "I44_8rd_9x19_Ball_P08";																						// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)

_grenade = "HandGrenade_East"; _smokegrenade = "I44_SmokeGrenade_NbHgr39";																				// Grenades

_bagmedium = "TK_Assault_Pack_EP1";		// 8+ slots																							// Backpack for assistant gunners (AAR, AMMG, AMAT, AHAT), so that they don't have to drop ammo themselves
_baglarge =  "TK_ALICE_Pack_EP1"; 		// 12+ slots
		//  6 Slots: "CZ_Vestpouch_EP1"
		//  8 Slots: "US_Assault_Pack_EP1", "US_Patrol_Pack_EP1", "TK_Assault_Pack_EP1", "TK_RPG_Backpack_EP1"
		// 12 Slots: "US_Backpack_EP1", "TK_ALICE_Pack_EP1",
		// 13 Slots: "BAF_AssaultPack_RifleAmmo"
		// 14 Slots: "DE_Backpack_Specops_EP1", "CZ_Backpack_EP1"

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

_AR = "RPK_74"; _ARmag = "75Rnd_545x39_RPK";																								// Automatic Rifleman

_MMG = "PK"; _MMGmag = "100Rnd_762x54_PK";																									// Medium MG

_HMG = "DSHkM_Mini_TriPod_TK_INS_Bag_EP1";																									// Heavy MG (note: HMG is an assembled weapon, gunner carries weapon)
_HMGmount = "Tripod_Bag";																													// Assistant Heavy MG (note: HMG is an assembled weapon, assistant carries bipod/tripd)

_RAT = "RPG7V"; _RATmag = "PG7V";																											// Rifleman AT

_MAT = "RPG7V"; _MATmag1 = "PG7V"; _MATmag2 = "PG7VR";																						// Medium AT

_HAT = "MetisLauncher"; _HATmag1 = "AT13"; _HATmag2 = "AT13";																				// Heavy AT Gunner

_MTR = "2b14_82mm_TK_INS_Bag_EP1";																											// Mortar Gunner (note: Mortar is an assembled weapon, gunner carries weapon)
_MTRmount = "Tripod_Bag";																													// Mortar Assistant Gunner (note: Mortar is an assembled weapon, assistant carries bipod/tripd)

_FML = "Strela"; _FMLmag = "Strela";																										// Rifleman AA (anti-air)

_SNrifle = "SVD"; _SNriflemag = "10Rnd_762x54_SVD";																							// Sniper

_mine = "Mine"; _satchel = "pipebomb";
_bayonet = "I44_ItemBayonet";
_shovel = "I44_ItemShovel";		
_medpackl = "I44_MedpackLarge";	
_medpacks = "I44_MedpackSmall";																									// Engineer

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
		{_unit addmagazine _glriflemag} foreach [1,2,3,4,5,6,7];	//_COriflemag
		{_unit addmagazine _glmag} foreach [1,2];
		{_unit addmagazine _glflarewhite} foreach [1,2];
		{_unit addmagazine _glsmokewhite} foreach [1,2];
		_unit addweapon _glrifle;									//_COrifle
		{_unit addmagazine _pistolmag} foreach [1,2];
		_unit addweapon _pistol;		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addweapon "Binocular";
	};
  
// LOADOUT: DEPUTY COMMANDER
	case "dc":
	{
		{_unit addmagazine _glriflemag} foreach [1,2,3,4,5,6,7];	//_DCriflemag
		{_unit addmagazine _glmag} foreach [1,2];
		{_unit addmagazine _glflarewhite} foreach [1,2];
		{_unit addmagazine _glsmokewhite} foreach [1,2];
		_unit addweapon _glrifle;									//_DCrifle
		{_unit addmagazine _pistolmag} foreach [1,2];
		_unit addweapon _pistol;		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addweapon "Binocular";
	}; 

// LOADOUT: MEDIC
	case "m":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7];	
		_unit addweapon _carbine;
		{_unit addmagazine _smokegrenade;} foreach [1,2];		
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		{_unit addmagazine _glriflemag} foreach [1,2,3,4,5,6,7];	//_FTLriflemag
		{_unit addmagazine _glmag} foreach [1,2];
		{_unit addmagazine _glflarewhite} foreach [1,2,3,4];
		{_unit addmagazine _glsmokewhite} foreach [1,2];
		_unit addweapon _glrifle;									//_FTLrifle		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addweapon "Binocular";
	};	

// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		{_unit addmagazine _ARmag} foreach [1,2,3,4,5];
		_unit addweapon _AR;		
		{_unit addmagazine _pistolmag} foreach [1,2];
		_unit addweapon _pistol;
	};	
	
// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
		_unit addweapon _rifle;		
		{_unit addmagazine _grenade} foreach [1,2];
			// Put ammo in backpack. If not OA unit, then should add directly to inv of unit instead.
		if (_useBackpacks==1) then {
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 2];
		} else {
			{_unit addmagazine _ARmag} foreach [1,2];
		};
	};		
	
// LOADOUT: RIFLEMAN (AT)	
	case "rat":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6];
		_unit addweapon _carbine;
		{_unit addmagazine _RATmag} foreach [1];				
		_unit addweapon _RAT;
	};		
	
// LOADOUT: flamethrower GUNNER 
	case "flmg":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6];
		_unit addweapon _carbine;
		{_unit addmagazine _FMLmag} foreach [1];				
		_unit addweapon _FML;
	};			
	
// LOADOUT: ASSISTANT flamethrower GUNNER
	case "flmag":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6];
		_unit addweapon _rifle;
			// Put ammo in backpack. If not OA unit, then should add directly to inv of unit instead.
		if (_useBackpacks==1) then {
			_unit addBackpack _baglarge;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_FMLmag, 2];
		} else {
			{_unit addmagazine _FMLmag} foreach [1,2];
		};			
	};			
	
// LOADOUT: MEDIUM MG GUNNER	
	case "mmgg":
	{
		{_unit addmagazine _MMGmag} foreach [1,2,3,4];
		_unit addweapon _MMG;		
		{_unit addmagazine _pistolmag} foreach [1,2];
		_unit addweapon _pistol;
	};			

// LOADOUT: MEDIUM MG ASSISTANT GUNNER	
	case "mmgag":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
		_unit addweapon _rifle;
		{_unit addmagazine "Laserbatteries"} foreach [1];
		_unit addweapon "Laserdesignator";		
			// Put ammo in backpack. If not OA unit, then should add directly to inv of unit instead.
		if (_useBackpacks==1) then {
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
		} else {
			{_unit addmagazine _MMGmag} foreach [1,2];
		};				
	};
	
// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		_unit addweapon _carbine;
			// If not an OA unit, this attachment cannot carry an HMG
			_unit addBackpack _HMG;
	};	
	
// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
		_unit addweapon _rifle;
		{_unit addmagazine "Laserbatteries"} foreach [1];
		_unit addweapon "Laserdesignator";			
			// If not an OA unit, this attachment cannot carry an HMG 
			_unit addBackpack _HMGmount;
	};		

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3];
		_unit addweapon _carbine;
		{_unit addmagazine _MATmag1} foreach [1,2,3];
		{_unit addmagazine _MATmag2} foreach [1];
		_unit addweapon _MAT;			
	};	
	
// LOADOUT: MEDIUM AT ASSISTANT GUNNER	
	case "matag":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
		_unit addweapon _rifle;
		{_unit addmagazine "Laserbatteries"} foreach [1];
		_unit addweapon "Laserdesignator";		
			// Put ammo in backpack. If not OA unit, then should add directly to inv of unit instead.
		if (_useBackpacks==1) then {
			_unit addBackpack _baglarge;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 1];
			(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 2];
		} else {
			{_unit addmagazine _MATmag1} foreach [1];
			{_unit addmagazine _MATmag2} foreach [1,2];
		};				
			
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
		{_unit addmagazine "Laserbatteries"} foreach [1];
		_unit addweapon "Laserdesignator";		
			// Put ammo in backpack. If not OA unit, then should add directly to inv of unit instead.
		if (_useBackpacks==1) then {
			_unit addBackpack _baglarge;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 1];
			(unitBackpack _unit) addMagazineCargoGlobal [_HATmag2, 2];
		} else {
			{_unit addmagazine _HATmag1} foreach [1];
			{_unit addmagazine _HATmag2} foreach [1];
		};					
	};		
	
// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		_unit addweapon _carbine;
			// If not an OA unit, this attachment cannot carry a mortar
			_unit addBackpack _MTR;
	};	
	
// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		_unit addweapon _carbine;
		{_unit addmagazine "Laserbatteries"} foreach [1];
		_unit addweapon "Laserdesignator";			
			// If not an OA unit, this attachment cannot carry a mortar 
			_unit addBackpack _MTRmount;
	};		
	
// LOADOUT: SNIPER
	case "sn":
	{
		{_unit addmagazine _SNriflemag} foreach [1,2];
		_unit addweapon _SNrifle;
		_unit addweapon "Binocular";
	};		
	
// LOADOUT: SPOTTER
	case "sp":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4];
		_unit addweapon _rifle;
		{_unit addmagazine "Laserbatteries"} foreach [1];
		_unit addweapon "Laserdesignator";		
			// There are no camoflaged backpacks so all spotters carry spare sniper ammo on themselves
			{_unit addmagazine _SNriflemag} foreach [1];
	};			
	
// LOADOUT: GROUND VEHICLE CREW
	case "c":
	{
		{_unit addmagazine _smgmag} foreach [1,2,3,4];
		_unit addweapon _smg;
	};			
	
// LOADOUT: AIR VEHICLE PILOTS
	case "p":
	{
		{_unit addmagazine _smgmag} foreach [1,2,3,4];
		_unit addweapon _smg;
		{_unit addmagazine _smokegrenade} foreach [1,2];					
	};		
	
// LOADOUT: ENGINEER
	case "eng":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4];
		_unit addweapon _carbine;
		{_unit addmagazine _smokegrenade} foreach [1];
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _satchel} foreach [1,2];
		{_unit addmagazine _mine} foreach [1];
			// Put ammo in backpack. If not OA unit, then should add directly to inv of unit instead.
		if (_useBackpacks==1) then {
			_unit addBackpack _baglarge;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_satchel, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_mine, 1];	
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];	
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
		}; // no else; engineer inventory already full with 4 mags, 1 gren, 1 smoke, 2 satchels, 1 mine		
	};	
		
// LOADOUT: RIFLEMAN
	case "r":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7];
		_unit addweapon _rifle;
	};

// LOADOUT: CARABINEER
	case "car":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		_unit addweapon _carbine;
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		{_unit addmagazine _smgmag} foreach [1,2,3,4];
		_unit addweapon _smg;
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