CONTAINER fx_grid_diffusion
{
	NAME fx_grid_diffusion;
	INCLUDE fx_force_base;

	//Basic Tab
	GROUP ID_FORCE_BASE
	{			
		DEFAULT 1;
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK GRID_DIFFUSION_CHANNEL {ACCEPT{fx_channel_scalar;  fx_group;fx_channel_vector; fx_channel_fire; fx_channel_fuel; fx_channel_temp;}; }
			BUTTON GRID_DIFFUSION_CHANNEL_SELECTOR {}
		}

		LONG GRID_DIFFUSION_TYPE
		{
			CYCLE
			{
				GRID_DIFFUSION_TYPE_KERNEL;
				GRID_DIFFUSION_TYPE_NEARESTNEIGHBOR;
			}
		}
		REAL GRID_DIFFUSION {MIN 0.0; STEP 0.1;}
		LONG GRID_DIFFUSION_ITER { MIN 1; MAX 1000; }
		SPLINE GRID_DIFFUSION_ITER_INTENSITY
		{
			SHOWGRID_H; X_MIN 0; X_MAX 1; Y_MIN 0; Y_MAX 1; X_STEPS 0.01; Y_STEPS 0.01; 
		}
	}
}