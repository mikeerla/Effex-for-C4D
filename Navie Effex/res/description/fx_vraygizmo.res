CONTAINER fx_vraygizmo
{
	NAME fx_vraygizmo;	
	INCLUDE Texpression;

	//Basic Tab
	GROUP ID_TAGPROPERTIES
	{				
		LINK DPIT_VRAYGIZMO_FSS {ACCEPT{fx_channel_scalar; fx_channel_vector; fx_group;}}
	}
}