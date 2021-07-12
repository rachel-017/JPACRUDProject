package com.skilldistillery.magiranch.data;

import com.skilldistillery.magiranch.entities.Creature;

public interface MagiRanchDAO {
	
	Creature findCreatureById(int id);
	Creature destroyCreature(int id);
	Creature updateCreature(int id, Creature creature);
	Creature createCreature(Creature creature);
}
