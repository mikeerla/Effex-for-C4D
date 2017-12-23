CONTAINER fx_grid_celliterator
{
	NAME fx_grid_celliterator;
	INCLUDE fx_force_base;
	INCLUDE fx_base_constraints;

	GROUP ID_FORCE_BASE
	{
		DEFAULT 1;
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK FX_CELLEMITTER_CHANNEL
			{
				ACCEPT 
				{ 
					fx_channel_scalar; 
					fx_channel_levelset;
					fx_channel_temp; 
					fx_channel_fuel; 
					fx_channel_fire; 
					fx_channel_vector; 
					fx_channel_velocity; 
					fx_fluid; 
					fx_liquid; 
					fx_group; 
				}
			}
			BUTTON FX_CELLEMITTER_CHANNEL_SELECTOR {}
				
			IN_EXCLUDE FX_CELLEMITTER_CELLOPERATORS
			{
				NUM_FLAGS 0; INIT_STATE 0; SEND_SELCHNGMSG 0;
				ACCEPT {  fx_channelop_coffee; fx_channelop_math; }
			}
			BUTTON FX_CELLEMITTER_CELLOPERATORS_SELECTOR {}
		}
		LONG	FX_CELLEMITTER_CHANNEL_SOLVER
		{
			HIDDEN;
			CYCLE
			{
				FX_CELLEMITTER_CHANNEL_SOLVER_DIVERGENCE;
				//FX_CELLEMITTER_CHANNEL_SOLVER_SURFACE;
				FX_CELLEMITTER_CHANNEL_SOLVER_VELOCITY;
			}
		}
	}
}
			