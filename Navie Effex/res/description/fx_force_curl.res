CONTAINER fx_force_curl
{
	NAME fx_force_curl;
	INCLUDE fx_force_base;
	INCLUDE fx_base_constraints;
	INCLUDE fx_base_display_inspector;

	GROUP ID_FORCE_BASE
	{
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK	FORCE_CURL_DURATION {ACCEPT{fx_duration; fx_group;}}
			BUTTON	FORCE_CURL_DURATION_SELECTOR {}
		}

		SEPARATOR {LINE;}

		REAL FORCE_CURL_INTENSITY { MINSLIDER -100; MAXSLIDER 100; UNIT PERCENT; CUSTOMGUI REALSLIDER;}
		REAL FORCE_CURL_SAMPLERADIUS { MIN 0.001; STEP 0.1; }
	}
}