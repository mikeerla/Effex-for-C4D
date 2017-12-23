CONTAINER fx_rigid_forces
{
	NAME fx_rigid_forces;
	INCLUDE fx_force_base;
	INCLUDE fx_base_constraints;

	GROUP ID_FORCE_BASE
	{
		DEFAULT 1;
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LONG RIGID_FORCES_VOLUMES_MODE
			{
				CYCLE
				{
					RIGID_FORCES_VOLUMES_MODE_INCLUDE;
					RIGID_FORCES_VOLUMES_MODE_EXCLUDE;
				}
			} STATICTEXT {}
			IN_EXCLUDE RIGID_FORCES_VOLUMES
			{
				NUM_FLAGS 0; INIT_STATE 0; SEND_SELCHNGMSG 0; SCALE_H;
				ACCEPT {  fx_volume; /*fx_volume_multi; fx_mesh; fx_mesh_multi;*/ }
			}
			BUTTON RIGID_FORCES_VOLUMES_SELECTOR {SCALE_V;}
			IN_EXCLUDE RIGID_FORCES_FORCES
			{
				NUM_FLAGS 0; INIT_STATE 0; SEND_SELCHNGMSG 0;
				ACCEPT { fx_pforce_acceleration; fx_pforce_coffee; fx_force_vortex; fx_force_trigowave;fx_force_buoyancy; }
			}
			BUTTON RIGID_FORCES_FORCES_SELECTOR {SCALE_V;}
		}		
		
		LONG RIGID_FORCES_MODE
		{
			CYCLE
			{
				RIGID_FORCES_MODE_NODE;
				RIGID_FORCES_MODE_VERTEX;
				RIGID_FORCES_MODE_VOLUME;
			}
		}
	}
}
			