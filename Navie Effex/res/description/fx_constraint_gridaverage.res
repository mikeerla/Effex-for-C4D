CONTAINER fx_constraint_gridaverage
{
	NAME fx_constraint_gridaverage;
	INCLUDE fx_constraint;
	
	GROUP ID_FORCE_BASE
	{
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK CONSTRAINT_GRIDAVERAGE_CHANNEL { ACCEPT { fx_channel_scalar; fx_channel_temp;fx_channel_fire; fx_channel_fuel; fx_group;}; }
			BUTTON CONSTRAINT_GRIDAVERAGE_CHANNEL_SELECTOR {}
		}

		GROUP CONSTRAINT_PARAMS_SID
		{			
			REAL CONSTRAINT_GRIDAVERAGE_THRESHOLD { MIN 0; MAX 100; UNIT PERCENT; CUSTOMGUI REALSLIDER;}	
		}
	}
}