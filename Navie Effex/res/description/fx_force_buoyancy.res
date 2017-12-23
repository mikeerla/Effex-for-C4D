CONTAINER fx_force_buoyancy
{
	NAME fx_force_buoyancy;
	INCLUDE fx_force_base;
	INCLUDE fx_base_constraints;
	INCLUDE fx_base_display_inspector;

	GROUP ID_FORCE_BASE
	{
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK  FORCE_BOUYANCY_TEMPERATURE
			{
				ACCEPT {  fx_channel_scalar; fx_channel_temp; fx_group;};
			}
			BUTTON FORCE_BOUYANCY_TEMPERATURE_SELECTOR {}
			LINK  FORCE_BOUYANCY_SMOKE
			{
				ACCEPT {  fx_channel_scalar;  fx_group;};
			}
			BUTTON FORCE_BOUYANCY_SMOKE_SELECTOR {}
			LINK  FORCE_BOUYANCY_FUEL
			{
				ACCEPT {  fx_channel_fuel;  fx_group;};
			}
			BUTTON FORCE_BOUYANCY_FUEL_SELECTOR {}
			LINK FORCE_BOUYANCY_DURATION {ACCEPT{fx_duration; fx_group;}}
			BUTTON FORCE_BOUYANCY_DURATION_SELECTOR {}		
		}
		SEPARATOR {LINE;}

		VECTOR FORCE_BOUYANCY_DIRECTION {MIN -1 -1 -1; MAX 1 1 1; STEP 0.01;}
		REAL FORCE_BOUYANCY_RISING {MIN -100; MAX 100; STEP 0.001; CUSTOMGUI DOUBLE; DDIGITS 6; }	
		REAL FORCE_BOUYANCY_FALLING {STEP 0.01;}
	}
}
			