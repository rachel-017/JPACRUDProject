package com.skilldistillery.magiranch.entities;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.time.LocalDate;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class MagiRanchTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Creature creature;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("MagiRanchPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		creature = em.find(Creature.class, 9);
	}

	@AfterEach
	void tearDown() throws Exception {
		creature = null;
		em.close();
	}

	@Test
	@DisplayName("testing creature")
	void test1() {
		LocalDate arrived = LocalDate.of(1915, 05, 13);
		assertNotNull(creature);
		assertEquals("Dragon", creature.getSpecies());
		assertEquals("Dolly", creature.getName());
		assertEquals(986, creature.getAge());
		assertEquals("Female", creature.getGender());
		assertEquals("Carnivore", creature.getDiet());
		assertEquals("Sky Hut", creature.getHousing());
		assertEquals("Wise, calm when not playing", creature.getPersonality());
		
		System.out.println(creature);
	}

}
