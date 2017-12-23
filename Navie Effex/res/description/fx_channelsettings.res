CONTAINER fx_channelsettings
{
	NAME fx_channelsettings;
	INCLUDE fx_force_base;
	
	HIDE Obaselist;
	HIDE ID_BASEOBJECT_GROUP1;
	
	GROUP ID_FORCE_BASE
	{
		DEFAULT 1;
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK	CHANNELSETTINGS_CHANNEL  { ACCEPT{fx_channel_scalar;fx_channel_temp;fx_channel_fire;fx_channel_fuel;fx_fluid;fx_liquid;fx_group;} }
			BUTTON	CHANNELSETTINGS_CHANNEL_SELECTOR { }
			LINK	CHANNELSETTINGS_SETTINGS { ACCEPT{fx_emission_setting; fx_group;} }
			BUTTON	CHANNELSETTINGS_SETTINGS_SELECTOR { }
		}
	}
}