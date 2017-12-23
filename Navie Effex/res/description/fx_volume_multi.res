CONTAINER fx_volume_multi
{
	NAME fx_volume_multi;
	INCLUDE fx_volume;
	
	GROUP ID_FORCE_BASE
	{		
		GROUP ID_PORT_BASE
		{
			IN_EXCLUDE MULTIVOLUME_MESHES 
			{
				NUM_FLAGS 0; INIT_STATE 0; SEND_SELCHNGMSG 1; SCALE_H;
				ACCEPT {  fx_mesh; fx_mesh_multi; };
			}
			BUTTON MULTIVOLUME_MESHES_SELECTOR {}
		}
	}
}