CONTAINER fx_gop_redistance
{
	NAME fx_gop_redistance;
	INCLUDE fx_force_base;
	INCLUDE fx_base_constraints;

	GROUP ID_FORCE_BASE
	{
		DEFAULT 1;
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK   GOP_REDISTANCE_TARGET { ACCEPT{ fx_channel_scalar; fx_channel_levelset; fx_group; } }
			BUTTON GOP_REDISTANCE_TARGET_SELECTOR {}

			LINK	GOP_REDISTANCE_DURATION {ACCEPT{fx_duration; fx_group;}}
			BUTTON	GOP_REDISTANCE_DURATION_SELECTOR {SCALE_V; FIT_H;}
		}
		//FX_FORCE_BASE_ITERATIONS
		LONG GOP_REDISTANCE_MODE
		{
			HIDDEN;
			CYCLE
			{
				GOP_REDISTANCE_MODE_SWEEP;
				GOP_REDISTANCE_MODE_MARCH;
			}
		}
	}
}
			