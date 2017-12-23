CONTAINER fx_force_vortex
{
	NAME fx_force_vortex;
	INCLUDE fx_force_base;
	INCLUDE fx_base_constraints;
	INCLUDE fx_base_display_inspector;

	GROUP ID_FORCE_BASE
	{
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK	FORCE_VORTEX_DURATION {ACCEPT{fx_duration; fx_group;}}
			BUTTON	FORCE_VORTEX_DURATION_SELECTOR {}
		}

		SEPARATOR {LINE;}

		REAL FORCE_VORTEX_INTENSITY { STEP 1; MINSLIDER -1000; MAXSLIDER 1000;}
	}
}