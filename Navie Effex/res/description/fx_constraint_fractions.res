CONTAINER fx_constraint_fractions
{
	NAME fx_constraint_fractions;
	INCLUDE fx_constraint;
	
	GROUP ID_FORCE_BASE
	{
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK CONSTRAINT_FRACTIONS_CHANNEL { ACCEPT{ fx_channel_vector; fx_liquid; fx_fluid; fx_group;} }
			BUTTON CONSTRAINT_FRACTIONS_CHANNEL_SELECTOR {}
		}

		GROUP CONSTRAINT_PARAMS_SID
		{			
		}
	}
}