CONTAINER fx_channelvalue
{
	NAME fx_channelvalue;
	INCLUDE fx_force_base;
	
	HIDE Obaselist;
	HIDE ID_BASEOBJECT_GROUP1;
	
	GROUP ID_FORCE_BASE
	{
		DEFAULT 1;
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK	CHANNELVALUE_CHANNEL 
			{ 
				ACCEPT
				{ 
					fx_channel_scalar;
					fx_channel_fire;
					fx_channel_temp;
					fx_channel_fuel;
					fx_channel_levelset;
					fx_channel_vector; 
					fx_channel_velocity; 
					fx_fluid;
					fx_liquid; 
					fx_group;
				}
			}
			BUTTON	CHANNELVALUE_CHANNEL_SELECTOR { }
			LINK	CHANNELVALUE_PROPERTY { ACCEPT{fx_property_scalar;fx_property_vector;fx_property_state; fx_group;}}
			BUTTON	CHANNELVALUE_PROPERTY_SELECTOR { }
		}

		SEPARATOR{LINE;}

		REAL	CHANNELVALUE_SCALAR {CUSTOMGUI DOUBLE; DSIZE 70; DDIGITS 8; }
		VECTOR	CHANNELVALUE_VECTOR {HIDDEN;}
		BOOL	CHANNELVALUE_STATE {HIDDEN;}
		BOOL	CHANNELVALUE_VALUEMULTIPLIER {HIDDEN;}

		LONG	CHANNELVALUE_CHANNEL_SOLVER
		{
			HIDDEN;
			CYCLE
			{
				CHANNELVALUE_CHANNEL_SOLVER_DIVERGENCE;
				CHANNELVALUE_CHANNEL_SOLVER_SURFACE;
				CHANNELVALUE_CHANNEL_SOLVER_VELOCITY;
			}
		}
	}
}