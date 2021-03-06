// F2 - Folk Assign Gear Script - Czech Republic Equipment
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
//
//		v_car	- car/4WD
//		v_tr	- truck
//		v_apc	- apc
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

_rifle = "I44_K98k"; _riflemag = "I44_5rd_792x57_Mix_K98";																					// Standard bolt-action rifle

_carbine = "I44_G43"; _carbinemag = "I44_10rd_792x57_Mix_G43"; 																				// Standard semi-automatic carbine / rifle

_smg = "I44_MP40"; _smgmag = "I44_32rd_9x19_Ball_MP40";																						// Standard Submachine Gun
_smg2 = "I44_MP43"; _smg2mag = "I44_30rd_792x33_Ball_MP43";																					// Alternative Submachine Gun				
																						

_glrifle = "I44_K98k_GGrGer"; _glriflemag = "I44_5rd_792x57_Mix_K98"; _glmag1 = "I44_RifleGrenade_GSprgr";	_glmag2 = "I44_RifleGrenade_GPzgr30";_glmag3="I44_RifleGrenade_GPzgr40";_glflarewhite="I44_RifleGrenade_GFlgr";														// Rifle with GL and HE grenades

_pistol = "I44_P38"; _pistolmag = "I44_8rd_9x19_Ball_P38";																	// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)

_grenade = "I44_HandGrenade_StiHgr24"; _smokegrenade = "I44_SmokeGrenade_NbHgr39";											// Grenades

_bagmedium = "I44_Bag_G_FSJ";																								// Backpack for assistant gunners (AAR, AMMG, AMAT, AHAT), so that they don't have to drop ammo themselves
_baglarge =  "I44_Bag_G_FSJ";
_bagradio = "I44_Bag_G_FSJ_Radio";
_bagmedic = "I44_Bag_G_FSJ_Medic";

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

_AR = "I44_MG34"; _ARmag = "I44_50rd_792x57_Mix_MG34";																			// Automatic Rifleman

_MMG = "I44_MG42"; _MMGmag = "I44_50rd_792x57_Mix_MG42";																		// Medium MG

_HMG = "I44_Bag_MG42";																											// Heavy MG (note: HMG is an assembled weapon, gunner carries weapon)
_HMGmount = "I44_Bag_Tripod_Lafette";																							// Assistant Heavy MG (note: HMG is an assembled weapon, assistant carries bipod/tripd)

_RAT = "I44_PzFaust60"; _RATmag = "I44_Rocket_149mm_PzF_60";																	// Rifleman AT

_MAT = "I44_RPzB54"; _MATmag1 = "I44_Rocket_88mm_RPzBGr4322_RPzB54";															// Medium AT

_MTR = "I44_Bag_GrW34";																											// Mortar Gunner (note: Mortar is an assembled weapon, gunner carries weapon)
_MTRmount = "I44_Bag_GrW34BP";																									// Mortar Assistant Gunner (note: Mortar is an assembled weapon, assistant carries bipod/tripd)

_FLM = "I44_M2_flameThrower"; _FLMmag = "I44_m2_flamethrower_mag";_FLMback = "I44_Backpack_M2flamethrower";						// Flamethrower Gunner

_SNrifle = "I44_K98kZf42"; _SNriflemag = "I44_5rd_792x57_Mix_K98";																// Sniper / Marksman

_mine = "I44_Mine_AT_TMi42"; _satchel = "I44_Item_GbLadung3kg";	_satchel2 = "I44_Item_GbLadung10kg";							// Engineer equipment

_bayonet = "I44_ItemBayonet";																									// Misc. items		
_shovel = "I44_ItemShovel";																										
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
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7,8];	//_COriflemag
		_unit addweapon _carbine;									//_COrifle
		{_unit addmagazine _pistolmag} foreach [1,2,3,4];
		_unit addweapon _pistol;		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addWeapon "Binocular";
		if (_useBackpacks==1) then {
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];	
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
		};
	};
  
// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7,8];	
		_unit addweapon _carbine;									
		{_unit addmagazine _pistolmag} foreach [1,2,3,4];
		_unit addweapon _pistol;		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addWeapon "Binocular";
		if (_useBackpacks==1) then {
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];	
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
		};
	};  

// LOADOUT: MEDIC
	case "m":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7];	
		_unit addweapon _rifle;
		{_unit addmagazine _smokegrenade;} foreach [1,2,3,4,5];
		_unit addWeapon _medpackl;
		if (_useBackpacks==1) then {
			_unit addBackpack _bagmedic;
		};
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7,8];	
		_unit addweapon _carbine;									
		{_unit addmagazine _pistolmag} foreach [1,2,3,4];
		_unit addweapon _pistol;		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addWeapon "Binocular";
		if (_useBackpacks==1) then {
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];	
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
		};
	};
	
// LOADOUT: FIRE TEAM LEADER SMG LOADOUT
	case "ftl2":
	{
		{_unit addmagazine _smg2mag} foreach [1,2,3,4,5,6,7,8];	
		_unit addweapon _smg2;									
		{_unit addmagazine _pistolmag} foreach [1,2,3,4];
		_unit addweapon _pistol;		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addWeapon "Binocular";
		if (_useBackpacks==1) then {
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 5];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];	
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 3];
		};
	};	

// LOADOUT: RADIO OPERATOR
	case "ro":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];	
		_unit addweapon _rifle;
		{_unit addmagazine _grenade;} foreach [1,2];
		_unit addBackpack _bagradio;
	};

// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		{_unit addmagazine _ARmag} foreach [1,2,3,4,5];
		_unit addweapon _AR;
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _smokegrenade;} foreach [1];
		{_unit addmagazine _pistolmag} foreach [1,2,3,4];
		_unit addweapon _pistol;
	};	
	
// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6];
		_unit addweapon _rifle;		
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _smokegrenade;} foreach [1];
			// Put ammo in backpack. If not OA unit, then should add directly to inv of unit instead.
		if (_useBackpacks==1) then {
			{_unit addmagazine _riflemag} foreach [1,2];
			{_unit addmagazine _grenade} foreach [1];
			{_unit addmagazine _smokegrenade;} foreach [1];
			_unit addBackpack _baglarge;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 3];
			(unitBackpack _unit) addMagazineCargoGlobal [_RATmag, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		} else {
			{_unit addmagazine _ARmag} foreach [1,2];
		};
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
		{_unit addmagazine _grenade} foreach [1,2,3,4];
		if (_useBackpacks==1) then {
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];	
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
		};
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
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6];
		_unit addweapon _rifle;
		_unit addweapon "Binocular";
		{_unit addmagazine _grenade} foreach [1,2];
		if (_useBackpacks==1) then {
			{_unit addmagazine _carbinemag} foreach [1,2];
			{_unit addmagazine _grenade} foreach [1];
			{_unit addmagazine _smokegrenade;} foreach [1];
			_unit addBackpack _baglarge;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		} else {
			{_unit addmagazine _MMGmag} foreach [1,2];
		};				
	};
	
// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _rifle;
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1];
			// If not an OA unit, this attachment cannot carry an HMG
			_unit addBackpack _HMG;
	};	
	
// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _rifle;
		_unit addWeapon "Binocular";
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1];		
			// If not an OA unit, this attachment cannot carry an HMG 
			_unit addBackpack _HMGmount;
	};		

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6];
		_unit addweapon _rifle;
		{_unit addmagazine _MATmag1} foreach [1,2,3];
		_unit addweapon _MAT;			
	};	
	
// LOADOUT: MEDIUM AT ASSISTANT GUNNER	
	case "matag":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5];
		_unit addweapon _rifle;
		_unit addWeapon "Binocular";
		{_unit addmagazine _smokegrenade;} foreach [1];		
			// Put ammo in backpack. If not OA unit, then should add directly to inv of unit instead.
		if (_useBackpacks==1) then {
			{_unit addmagazine _riflemag} foreach [1,2];
			{_unit addmagazine _grenade} foreach [1];
			{_unit addmagazine _smokegrenade;} foreach [1];
			_unit addBackpack _baglarge;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 4];
		} else {
			{_unit addmagazine _MATmag1} foreach [1,2];
		};				
			
	};
		
// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _rifle;
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1];
			// If not an OA unit, this attachment cannot carry a mortar
			_unit addBackpack _MTR;
	};	
	
// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _rifle;
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1];	
		_unit addWeapon "Binocular";			
			// If not an OA unit, this attachment cannot carry a mortar 
			_unit addBackpack _MTRmount;
	};		
	
// LOADOUT: SNIPER
	case "sn":
	{
		{_unit addmagazine _SNriflemag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _SNrifle;
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addweapon "Binocular";
		{_unit addmagazine _pistolmag} foreach [1,2,3,4,5,6];
		_unit addweapon _pistol;
	};		
	
// LOADOUT: SPOTTER
	case "sp":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _rifle;
		_unit addweapon "Binocular";
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		if (_useBackpacks==1) then {
			_unit addBackpack _baglarge;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [__SNriflemag, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
		};
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
		if (_useBackpacks==1) then {
			_unit addBackpack _baglarge;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_satchel, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_mine, 1];	
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];	
			(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 2];
		}; 	
	};	
		
// LOADOUT: RIFLEMAN
	case "r":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _rifle;
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		if (_useBackpacks==1) then {
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
		};
	};

// LOADOUT: CARABINEER
	case "car":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _carbine;
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		if (_useBackpacks==1) then {
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
		};
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		{_unit addmagazine _smg2mag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _smg2;
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		if (_useBackpacks==1) then {
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
		};
	};
	
// LOADOUT: SUBMACHINEGUNNER ALTERNATIVE LOADOUT
	case "smg2":
	{
		{_unit addmagazine _smg2mag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _smg2;
		{_unit addmagazine _grenade} foreach [1,2,3];
		{_unit addmagazine _smokegrenade;} foreach [1];
		if (_useBackpacks==1) then {
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 6];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 3];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
		};
	};

// LOADOUT: GRENADIER
	case "gren":
	{
		{_unit addmagazine _glriflemag} foreach [1,2,3,4,5,6,7];
		_unit addweapon _glrifle;
		{_unit addmagazine _glmag1} foreach [1,2,3];
		{_unit addmagazine _glmag2} foreach [1,2];
		if (_useBackpacks==1) then {
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_glflarewhite, 1];
			(unitBackpack _unit) addMagazineCargoGlobal [_glmag1, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_glmag2, 1];
		};
	};

// CARGO: CAR
	case "v_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_rifle, 2];
		_unit addMagazineCargoGlobal [_riflemag, 8];
		_unit addMagazineCargoGlobal [_glriflemag, 8];
		_unit addMagazineCargoGlobal [_carbinemag, 10];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_ratmag, 1];
		_unit addMagazineCargoGlobal [_grenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag1, 4];
		_unit addMagazineCargoGlobal [_glmag2, 2];
	};	
	
// CARGO: TRUCK
	case "v_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_rifle, 10];
		_unit addMagazineCargoGlobal [_riflemag, 40];
		_unit addMagazineCargoGlobal [_glriflemag, 40];
		_unit addMagazineCargoGlobal [_carbinemag, 40];
		_unit addMagazineCargoGlobal [_armag, 22];
		_unit addMagazineCargoGlobal [_ratmag, 6];
		_unit addMagazineCargoGlobal [_grenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 4];
		_unit addMagazineCargoGlobal [_glmag1, 12];
		_unit addMagazineCargoGlobal [_glmag2, 6];
	};
	
// CARGO: APC
	case "v_apc":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_rifle, 4];
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_armag, 8];
		_unit addMagazineCargoGlobal [_ratmag, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag1, 8];
		_unit addMagazineCargoGlobal [_glmag2, 4];
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