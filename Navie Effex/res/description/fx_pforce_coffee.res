CONTAINER fx_pforce_coffee
{
	NAME fx_pforce_coffee;
	INCLUDE fx_force_base;
	INCLUDE fx_coffee_extension;
	INCLUDE fx_base_constraints;
	INCLUDE fx_base_display_inspector;

	GROUP ID_FORCE_BASE
	{
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK PFORCE_COFFEE_DURATION {ACCEPT{fx_duration; fx_group;}}
			BUTTON PFORCE_COFFEE_DURATION_SELECTOR {}		
		}

		REAL PFORCE_COFFEE_INTENSITY { UNIT PERCENT; MIN -100000; MAX 100000; MINSLIDER -100; MAXSLIDER 100; CUSTOMGUI REALSLIDER;}		
	}
}
			