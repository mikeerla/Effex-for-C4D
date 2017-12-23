CONTAINER fx_gop_tolevelset
{
	NAME fx_gop_tolevelset;
	INCLUDE fx_force_base;
	INCLUDE fx_base_constraints;

	GROUP ID_FORCE_BASE
	{
		DEFAULT 1;
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			IN_EXCLUDE GOP_TL_SOURCE
			{
				NUM_FLAGS 0; INIT_STATE 0; SEND_SELCHNGMSG 0; SCALE_H;
				ACCEPT
				{
					fx_channel_scalar;
					fx_channel_temp;
					fx_channel_fire;
					fx_channel_fuel;
				}
			}
			BUTTON GOP_TL_SOURCE_SELECTOR {}

			LINK   GOP_TL_TARGET { ACCEPT{ fx_channel_levelset; fx_group;} }
			BUTTON GOP_TL_TARGET_SELECTOR {}

			LINK	GOP_TL_DURATION {ACCEPT{fx_duration; fx_group;}}
			BUTTON	GOP_TL_DURATION_SELECTOR {SCALE_V; FIT_H;}
		}
		BOOL GOP_TL_MERGE {}
		LONG GOP_TL_MODE
		{
			HIDDEN;
			CYCLE
			{
				GOP_TL_MODE_DENSITY;
				GOP_TL_MODE_SPHERE;
			}
		}
		REAL GOP_TL_MODE_DENSITY_THRESHOLD { MIN 0.0; STEP 0.01;}
		REAL GOP_TL_MODE_SPHERE_RADIUS { MIN 10; MAXSLIDER 300; UNIT PERCENT; HIDDEN;}
	}
}
			