CONTAINER fx_operator_plugin
{
	NAME fx_operator_plugin;
	INCLUDE fx_force_base;
	
	GROUP ID_FORCE_BASE
	{
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK OPERATORPLUGIN_DURATION {ACCEPT{fx_duration; fx_group;}}
			BUTTON OPERATORPLUGIN_DURATION_SELECTOR {}		
		}
	}
}
			