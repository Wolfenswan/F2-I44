// F2 - Folk Assign Gear Script - British Armed Forces (BAF) Equipment
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


// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

_rifle = "I44_LeeEnfieldNo4Mk1"; _riflemag = "I44_10rd_77x56R_Ball_LeeEnfield";																			// Standard Riflemen (Spotter, HMG Assistant Gunner, MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, HAT Assistant Gunner, MTR Assistant Gunner, Rifleman)

_carbine = "I44_M1Carbine"; _carbinemag = "I44_15rd_762x33_Mix_M1Carbine"; 	 																		// Standard Carabineer (Medic, HMG Gunner, Rifleman (AT), Rifleman (AA), MAT Gunner, HAT Gunner, MTR Gunner, Carabineer)

_smg = "I44_StenMk5"; _smgmag = "I44_32rd_9x19_Ball_Sten";																									// Standard Submachine Gun/Personal Defence Weapon (Vehicle Crew, Aircraft Pilot, Submachinegunner)

_glrifle = "I44_M1Garand_M7"; _glriflemag = "I44_8rd_762x63_Mix_M1Garand"; _glmag1 = "I44_RifleGrenade_M17";_glmag2 = "I44_RifleGrenade_M9A1";_glmag3 = "I44_RifleGrenade_M1Mk2";_glflarewhite="I44_RifleGrenade_SignalM17A1";														// Rifle with GL and HE grenades (CO, DC, FTLs)

_pistol = "I44_WebleyMk6"; _pistolmag = "I44_6rd_12x20R_Ball_WebleyMk6";																								// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)

_grenade = "I44_HandGrenade_No36M"; _smokegrenade = "I44_SmokeGrenade_ANM8";																					// Grenades

_bagmedium = "I44_Bag_BABSten";		 
_baglarge =  "I44_Bag_BABPIAT"; 
_bagradio = "I44_Bag_BABRadio";
_bagmedic = "I44_Bag_BMedic";

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

_AR = "I44_BrenMk1"; _ARmag = "I44_30rd_77x56R_Mix_Bren";																						// Automatic Rifleman

_MMG = "I44_BrenMk1"; _MMGmag = "I44_30rd_77x56R_Mix_Bren";																						// Medium MG

_HMG = "I44_Bag_Vickers";																													// Heavy MG (note: HMG is an assembled weapon, gunner carries weapon)
_HMGmount = "I44_Bag_TripodV";																													// Assistant Heavy MG (note: HMG is an assembled weapon, assistant carries bipod/tripd)

_RAT = "I44_M1A1Bazooka"; _RATmag = "I44_Rocket_60mm_M6A1_M1A1Bazooka";																											// Rifleman AT

_MAT = "I44_M1A1Bazooka"; _MATmag1 = "I44_Rocket_60mm_M6A1_M1A1Bazooka"; _MATmag2 = "I44_Rocket_60mm_M6A1_M1A1Bazooka";																			// Medium AT

_MTR = "I44_Bag_M2Mortar";																													// Mortar Gunner (note: Mortar is an assembled weapon, gunner carries weapon)
_MTRmount = "I44_Bag_M2MortarBP";																													// Mortar Assistant Gunner (note: Mortar is an assembled weapon, assistant carries bipod/tripd)

_FLM = "I44_M2_flameThrower"; _FLMmag = "I44_m2_flamethrower_mag";	_FLMback = "I44_Backpack_M2flamethrower";																									// Rifleman AA (anti-air)

_SNrifle = "I44_LeeEnfieldNo4Mk1_T"; _SNriflemag = "I44_10rd_77x56R_Ball_LeeEnfield";																				// Sniper

_mine = "I44_Mine_AT_GrenadeNo75"; _satchel = "I44_Item_M2DemoCharge";_satchel2 = "I44_Item_M37DemoKit";
_bayonet = "I44_ItemBayonet";
_shovel = "I44_ItemShovel";																									// Engineer
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

//removeAllItems _unit;						// remove default items: map, compass, watch, radio (and GPS for team/squad leaders)
//_unit addweapon "I44_MedpackSmall";		// add universal Medpack for this faction (nb: misc items not cleared)
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
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];	
		_unit addweapon _carbine;
		{_unit addmagazine _smokegrenade;} foreach [1,2,3];
		_unit addWeapon _medpackl;
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
			(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_RATmag, 1];
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
		{_unit addmagazine _carbinemag} foreach [1,2,3];
		_unit addweapon _carbine;
		{_unit addmagazine _MATmag1} foreach [1,2];
		{_unit addmagazine _MATmag2} foreach [1];
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
			(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 2];
		} else {
			{_unit addmagazine _MATmag1} foreach [1];
			{_unit addmagazine _MATmag2} foreach [1];
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
		{_unit addmagazine _SNriflemag} foreach [1,2,3,4];
		_unit addweapon _SNrifle;
		_unit addweapon "Binocular";
		{_unit addmagazine _pistolmag} foreach [1,2,3,4,5,6];
		_unit addweapon _pistol;
	};		
	
// LOADOUT: SPOTTER
	case "sp":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6];
		_unit addweapon _rifle;
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
		{_unit addmagazine _smgmag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _smg;
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

// LOADOUT: GRENADIER
	case "gren":
	{
		{_unit addmagazine _glriflemag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _glrifle;
		{_unit addmagazine _glmag} foreach [1,2,3,4];
		{_unit addmagazine _glsmokewhite} foreach [1,2,3,4];
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		if (_useBackpacks==1) then {
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 2];
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
		_unit addMagazineCargoGlobal [_glmag, 4];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
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
		_unit addMagazineCargoGlobal [_glmag, 12];
		_unit addMagazineCargoGlobal [_glsmokewhite, 12];
	};
	
// CARGO: APC/APC
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
		_unit addMagazineCargoGlobal [_glmag, 8];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
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