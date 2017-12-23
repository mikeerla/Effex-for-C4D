CONTAINER fx_particle_advection
{
	NAME fx_particle_advection;
	INCLUDE fx_force_base;
	INCLUDE fx_base_constraints;

	GROUP ID_FORCE_BASE
	{
		DEFAULT 1;
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK FX_PARTICLEADVECTION_PARTICLES
			{
				ACCEPT { fx_particlegroup;  fx_group;}
			}
			BUTTON FX_PARTICLEADVECTION_PARTICLES_SELECTOR {SCALE_V; FIT_H;}
			
			IN_EXCLUDE FX_PARTICLEADVECTION_OPERATORS
			{
				NUM_FLAGS 0; INIT_STATE 0; SEND_SELCHNGMSG 0;
				ACCEPT { fx_iop_volumeproject; fx_iop_spawn; fx_iop_repulsion; fx_group;}
			}
			BUTTON FX_PARTICLEADVECTION_OPERATORS_SELECTOR {SCALE_V; FIT_H;}
			IN_EXCLUDE FX_PARTICLEADVECTION_DYNAMICS
			{
				NUM_FLAGS 0; INIT_STATE 0; SEND_SELCHNGMSG 0;
				ACCEPT { fx_channel_velocity; fx_fluid; fx_liquid;  fx_group;}
			}
			BUTTON FX_PARTICLEADVECTION_DYNAMICS_SELECTOR {SCALE_V; FIT_H;}
		}
							
		LONG FX_PARTICLEADVECTION_DYNAMICS_MODE
		{
			CYCLE
			{
				FX_PARTICLEADVECTION_DYNAMICS_MODE_INCLUDE;
				FX_PARTICLEADVECTION_DYNAMICS_MODE_EXCLUDE;
			}
		}
		LONG FX_PARTICLEADVECTION_INPUT_FACTORY
		{
			CYCLE
			{
				FX_PARTICLEADVECTION_INPUT_FACTORY_PASSIVE;
				FX_PARTICLEADVECTION_INPUT_FACTORY_VORTICITY;
				FX_PARTICLEADVECTION_INPUT_FACTORY_IMPLICIT;
				FX_PARTICLEADVECTION_INPUT_FACTORY_DIFFUSE;
			}
		}		
		LONG FX_PARTICLEADVECTION_MODE
		{
			CYCLE
			{
				FX_PARTICLEADVECTION_MODE_OFF;
				FX_PARTICLEADVECTION_MODE_DYNAMIC;
				FX_PARTICLEADVECTION_MODE_PROJECTILE;
				FX_PARTICLEADVECTION_MODE_DYNAMIC_PROJECTILE;
			}
		}
		
		SEPARATOR {LINE;}
		//DYNAMICS
		LONG FX_PARTICLEADVECTION_INTEGRATOR
		{
			CYCLE
			{ 
				FX_PARTICLEADVECTION_INTEGRATOR_EULER1ST;
				FX_PARTICLEADVECTION_INTEGRATOR_RUNGA2ND;
				FX_PARTICLEADVECTION_INTEGRATOR_RUNGA3RD;
				FX_PARTICLEADVECTION_INTEGRATOR_RUNGA4TH;
			}
		}

		//BALLISTIC
		LONG FX_PARTICLEADVECTION_INTEGRATOR_BALLISTIC
		{
			CYCLE
			{ 
				FX_PARTICLEADVECTION_INTEGRATOR_BALLISTIC_EULER;
				FX_PARTICLEADVECTION_INTEGRATOR_BALLISTIC_VERLET;
				FX_PARTICLEADVECTION_INTEGRATOR_BALLISTIC_PBF;
			}
		}			
		REAL FX_PARTICLEADVECTION_TIMESTEP { MIN 0.0; STEP 0.001; }
		LONG FX_PARTICLEADVECTION_SUBSTEPS {MIN 0; MAX 100;}

		SEPARATOR {LINE;}

		BOOL FX_PARTICLEADVECTION_KILLOUTSIDE {}
		LONG FX_PARTICLEADVECTION_COLLISIONS 
		{
			CYCLE
			{
				FX_PARTICLEADVECTION_COLLISIONS_OFF;
				FX_PARTICLEADVECTION_COLLISIONS_VOLUMES;
				FX_PARTICLEADVECTION_COLLISIONS_DYNAMICSBOUNDARY;
			}
		}
		REAL FX_PARTICLEADVECTION_MARGIN { MIN 0.0; STEP 0.01;}
		
	}
}
			