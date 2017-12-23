CONTAINER fx_channelop_coffee
{
	NAME fx_channelop_coffee;
	INCLUDE fx_force_base;
	INCLUDE fx_coffee_extension;
	INCLUDE fx_base_constraints;

	GROUP ID_FORCE_BASE
	{
		REAL   CHANNELOP_COFFEE_INTENSITY {MIN 0; MAX 100; UNIT PERCENT; CUSTOMGUI REALSLIDER;}
	}
}
			