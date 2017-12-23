CONTAINER fx_constraint_volume
{
	NAME fx_constraint_volume;
	INCLUDE fx_constraint;
	
	GROUP ID_FORCE_BASE
	{
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK CONSTRAINT_VOLUME 
			{ 
				ACCEPT 
				{ 
					fx_csg; 
					fx_volume; 
					fx_volume_multi;
					fx_channel_levelset;
					fx_liquid; 
					fx_group;
				}
			}
			BUTTON CONSTRAINT_VOLUME_SELECTOR {}
		}
		GROUP CONSTRAINT_PARAMS_SID
		{		
			REAL CONSTRAINT_VOLUME_OFFSET { STEP 0.001; }
			BOOL CONSTRAINT_VOLUME_USEFALLOFF {}
			SPLINE CONSTRAINT_VOLUME_SPLINE { HIDDEN; SHOWGRID_H; X_MIN 0; X_MAX 1; Y_MIN 0; Y_MAX 1; X_STEPS 0.01; Y_STEPS 0.01; }
		}
	}
}