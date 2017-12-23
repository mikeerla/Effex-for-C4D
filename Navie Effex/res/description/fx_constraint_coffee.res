CONTAINER fx_constraint_coffee
{
	NAME fx_constraint_coffee;
	INCLUDE fx_constraint;
	INCLUDE fx_coffee_extension;
	
	GROUP ID_FORCE_BASE
	{
		GROUP CONSTRAINT_PARAMS_SID
		{			
			REAL   CONSTRAINT_COFFEE_INTENSITY {MIN 0; MAX 100; UNIT PERCENT; CUSTOMGUI REALSLIDER;}
		}
	}

}