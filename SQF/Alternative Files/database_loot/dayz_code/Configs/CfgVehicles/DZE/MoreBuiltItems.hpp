// TODO: Move to BuiltItems 
// class Plastic_Pole_EP1;
class Sign_1L_Noentry;
class Plastic_Pole_EP1_DZ: Sign_1L_Noentry
{
	scope = 2;
	// destrType = "DestructNo"; 
	offset[] = {0,2.5,0};
	displayName = "30m Plot Pole";
	vehicleClass = "Fortifications";
	removeoutput[] = {{"30m_plot_kit",1}};
	expansion = 1; 
	hiddenSelectionsTextures[] = {"\ca\signs_e\signm\data\sign_one_leg_h_no_entry_co.paa"}; 
};

/* Needs ASC EU Lights Mod http://www.armaholic.com/page.php?id=12076
class ASC_EU_LHVOld;
class LightPole_DZ: ASC_EU_LHVOld
{
	armor = 200;
	scope = 2;
	offset[] = {0,2.5,0};
	displayName = "Light Pole";
	vehicleClass = "Fortifications";
};
*/
