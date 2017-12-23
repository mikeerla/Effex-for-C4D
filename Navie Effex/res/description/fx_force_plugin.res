CONTAINER fx_force_plugin
{
	NAME fx_force_plugin;
	INCLUDE fx_force_base;
	
	GROUP ID_FORCE_BASE
	{
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK FORCEPLUGIN_DURATION {ACCEPT{fx_duration; fx_group;}}
			BUTTON FORCEPLUGIN_DURATION_SELECTOR {}		
		}
	}
}
			