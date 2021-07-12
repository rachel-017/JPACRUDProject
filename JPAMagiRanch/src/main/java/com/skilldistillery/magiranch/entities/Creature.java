package com.skilldistillery.magiranch.entities;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Creature {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String species;
	
	private String name;
	
	private int age;
	
	private String gender;
	
	private String diet;
	
	private String housing;
	
	private String personality;

	
	public Creature() {
		super();
	}

	public Creature(int id, String species, String name, int age, String gender, String diet, String housing,
			String personality) {
		super();
		this.id = id;
		this.species = species;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.diet = diet;
		this.housing = housing;
		this.personality = personality;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDiet() {
		return diet;
	}

	public void setDiet(String diet) {
		this.diet = diet;
	}

	public String getHousing() {
		return housing;
	}

	public void setHousing(String housing) {
		this.housing = housing;
	}

	public String getPersonality() {
		return personality;
	}

	public void setPersonality(String personality) {
		this.personality = personality;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSpecies() {
		return species;
	}

	public void setSpecies(String species) {
		this.species = species;
	}

	@Override
	public String toString() {
		return "Creature id: " + id + ", species: " + species + ", name: " + name + ", age: " + age + ", gender: " + gender
				+ ", diet: " + diet + ", housing: " + housing + ", personality: " + personality ;
	}
	
}
