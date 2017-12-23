CONTAINER fx_mop_smoothing
{
	NAME fx_mop_smoothing;
	INCLUDE fx_force_base;
	INCLUDE fx_base_constraints;

	GROUP ID_FORCE_BASE
	{
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK FX_MOP_SMOOTHING_MESH { ACCEPT { fx_volume; fx_mesher; fx_mesh; fx_group; } }
			BUTTON FX_MOP_SMOOTHING_MESH_SELECTOR {}
			LINK FX_MOP_SMOOTHING_DURATION { ACCEPT { fx_duration; fx_group; }}
			BUTTON FX_MOP_SMOOTHING_DURATION_SELECTOR {}
		}

		LONG FX_MOP_SMOOTHING_ITERATIONS { MIN 1; MAX 100; }
	}
}
			