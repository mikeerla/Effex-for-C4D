CONTAINER fx_gop_forces
{
	NAME fx_gop_forces;
	INCLUDE fx_force_base;
	INCLUDE fx_base_constraints;

	GROUP ID_FORCE_BASE
	{
		DEFAULT 1;
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK GOP_FORCES_VELOCITY
			{
				ACCEPT { fx_liquid;  fx_fluid; fx_channel_velocity; fx_group;};
			}
			BUTTON GOP_FORCES_VELOCITY_SELECTOR {}
			IN_EXCLUDE GOP_FORCES_INPUT
			{
				SCALE_H; SCALE_V;
				NUM_FLAGS 0; INIT_STATE 0; SEND_SELCHNGMSG 0;
				ACCEPT 
				{  
					fx_force_curl; 
					fx_force_plugin; 
					fx_force_base; 
					fx_force_vortex; 
					fx_force_trigowave; 
					fx_force_coffee; 
					fx_force_gravity; 
					fx_force_swirling; 
					fx_force_particleturbulence; 
					fx_force_buoyancy;
				}
			}
			BUTTON GOP_FORCES_INPUT_SELECTOR {SCALE_V; FIT_H;}

			LINK	GOP_FORCES_DURATION {ACCEPT{fx_duration; fx_group;}}
			BUTTON	GOP_FORCES_DURATION_SELECTOR {SCALE_V; FIT_H;}
		}
		BOOL GOP_FORCES_USEGRAVITY {}
		LONG GOP_FORCES_MODE
		{
			CYCLE
			{
				GOP_FORCES_MODE_ADD;
				GOP_FORCES_MODE_SET;
			}
		}
		REAL GOP_FORCES_INTENSITY { MIN 0.0; MAX 3000.0; MAXSLIDER 100.0; CUSTOMGUI REALSLIDER; UNIT PERCENT; }
	}
}
			