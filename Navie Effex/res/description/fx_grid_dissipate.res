CONTAINER fx_grid_dissipate
{
	NAME fx_grid_dissipate;
	INCLUDE fx_force_base;
	INCLUDE fx_base_constraints;

	GROUP ID_FORCE_BASE
	{
		DEFAULT 1;
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK GRID_DISSIPATE_CHANNEL
			{
				ACCEPT { fx_channel_scalar;  fx_group;fx_channel_temp; fx_channel_fuel; fx_channel_fire; fx_channel_vector; };
			}
			BUTTON GRID_DISSIPATE_CHANNEL_SELECTOR {}
		}

		SEPARATOR {LINE;}

		REAL	GRID_DISSIPATE_FACTOR { MIN 0.0; MAX 3000.0; MAXSLIDER 100.0; CUSTOMGUI REALSLIDER; UNIT PERCENT; }
	}
}
			