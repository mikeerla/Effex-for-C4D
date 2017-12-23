CONTAINER fx_constraint_rotation
{
	NAME fx_constraint_rotation;
	INCLUDE fx_constraint;
	
	GROUP ID_FORCE_BASE
	{
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK CONSTRAINT_ROTATION_CHANNEL { ACCEPT{ fx_channel_vector; fx_channel_velocity; fx_liquid; fx_fluid; fx_group;} }
			BUTTON CONSTRAINT_ROTATION_CHANNEL_SELECTOR {}
		}

		GROUP CONSTRAINT_PARAMS_SID
		{			
			LONG CONSTRAINT_ROTATION_MODE
			{
				CYCLE
				{
					CONSTRAINT_ROTATION_MODE_CURL;
					CONSTRAINT_ROTATION_MODE_HELICITY;
				}
			}
			BOOL CONSTRAINT_ROTATION_ABSOLUTE {}
		}
	}
}