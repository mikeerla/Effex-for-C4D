CONTAINER fx_mop_curvature
{
	NAME fx_mop_curvature;
	INCLUDE fx_force_base;
	INCLUDE fx_base_constraints;

	GROUP ID_FORCE_BASE
	{
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK FX_MOP_MESH { ACCEPT { fx_volume; fx_mesher; fx_mesh;  fx_group;} }
			BUTTON FX_MOP_MESH_SELECTOR {}
			LINK FX_MOP_DURATION { ACCEPT { fx_duration; fx_group; }}
			BUTTON FX_MOP_DURATION_SELECTOR {}
		}

		BOOL FX_MOP_AREASMOOTHING {}
	}
}
			