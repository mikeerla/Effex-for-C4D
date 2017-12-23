CONTAINER fx_mop_vertexnormals
{
	NAME fx_mop_vertexnormals;
	INCLUDE fx_force_base;

	GROUP ID_FORCE_BASE
	{
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK FX_MOP_VNORMALS_MESH { ACCEPT { fx_volume; fx_mesher; fx_mesh;  fx_group;} }
			BUTTON FX_MOP_VNORMALS_MESH_SELECTOR {}
			LINK FX_MOP_VNORMALS_DURATION { ACCEPT { fx_duration; fx_group; }}
			BUTTON FX_MOP_VNORMALS_DURATION_SELECTOR {}
		}
	}
}
			