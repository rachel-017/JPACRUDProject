package com.skilldistillery.magiranch.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.magiranch.data.MagiRanchDAO;
import com.skilldistillery.magiranch.entities.Creature;

@Controller
public class MagiRanchController {
	
	@Autowired
	private MagiRanchDAO dao;
	
	
	@RequestMapping(path= {"/", "home.do"})
	public String index() {
		return "index";
	}
	
	
	@RequestMapping("getCreature.do")
	public String getCreatureById(Integer cid, Model model) {
		
		model.addAttribute("creature", dao.findCreatureById(cid));
		return "idSearchResults";
	}

	
	@RequestMapping("addCreature.do")
	public String addCreature(Creature creature, Model model) {
		
		model.addAttribute("creature", dao.createCreature(creature));
		return "redirect:addedCreature.do"; 
	}
	
	
	@RequestMapping("addedCreature.do")
	public String creatureCreated() {

		return "addResults"; 
	}
	
	
	@RequestMapping("deleteCreature.do")
	public String deleteCreatureById(Integer id, Model model) {
		
		model.addAttribute("creature", dao.destroyCreature(id));
		return "redirect:creatureDeleted.do"; 
		
	}
	
	
	@RequestMapping("creatureDeleted.do")
	public String creatureDeleted() {
		
		return "deleteResults"; 
	}
	
	
	@RequestMapping("updateCreature.do")
	public String updateCreature(Integer id, Creature creature, Model model) {
		
		model.addAttribute("creature", dao.updateCreature(id, creature));
		return "redirect:updatedCreature.do"; 
	}
	

	@RequestMapping("updatedCreature.do")
	public String creatureUpdated() {
		
		return "updateResults"; 
	}

}
