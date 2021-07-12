package com.skilldistillery.magiranch.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.magiranch.entities.Creature;

@Service
@Transactional
public class MagiRanchDAOImpl implements MagiRanchDAO{
	
	@PersistenceContext
	private EntityManager em;
	
	public Creature findCreatureById(int id) {
		Creature creature = em.find(Creature.class, id);
		return creature;
	}
	

	public Creature createCreature(Creature creature) {
		em.getTransaction().begin();

		em.persist(creature);

		em.flush();
		em.getTransaction().commit();
		em.close();

		return creature;

	}

	public Creature updateCreature(int id, Creature creature) {
		Creature updated = em.find(Creature.class, id);
		em.getTransaction().begin();
		
		updated.setSpecies(creature.getSpecies());
		updated.setName(creature.getName());
		updated.setAge(creature.getAge());
		updated.setGender(creature.getGender());
		updated.setDiet(creature.getDiet());
		updated.setHousing(creature.getHousing());
		updated.setPersonality(creature.getPersonality());
		
		em.flush();
		em.getTransaction().commit();
		em.close();
		
		return updated;
	}
	
	public Creature destroyCreature(int id) {
		Creature removedCreature = em.find(Creature.class, id);
		
		em.getTransaction().begin();
		em.remove(removedCreature);
		em.getTransaction().commit();
		em.close();
		
		return removedCreature;
	}

}
