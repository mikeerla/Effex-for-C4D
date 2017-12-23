CONTAINER fx_force_c4dforces
{
	NAME fx_force_c4dforces;
	INCLUDE fx_force_base;
	INCLUDE fx_base_constraints;

	GROUP ID_FORCE_BASE
	{
		IN_EXCLUDE FORCE_C4DFORCES
		{
			NUM_FLAGS 0; INIT_STATE 0; SEND_SELCHNGMSG 1;
			ACCEPT { Oattractor; Odeflector; Ogravitation; Orotation; Owind;Ofriction;Oturbulence; Odestructor; fx_fluidmodifier;};
		}
		REAL FORCE_C4DFORCES_INTENSITY {MIN 0; MAXSLIDER 100; UNIT PERCENT; CUSTOMGUI REALSLIDER;}
	}
}
			