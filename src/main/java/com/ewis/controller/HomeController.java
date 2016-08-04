package com.ewis.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger log = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : home ---->  Enter");

		log.info(this.getClass().getName() + "Method : home ---->  Exit");

		return new ModelAndView("home");
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/material", method = {RequestMethod.GET,RequestMethod.POST})
	public String material(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : material ---->  Enter");

		log.info(this.getClass().getName() + "Method : material ---->  Exit");

		return "home";
	}

	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/addMaterial", method = {RequestMethod.GET,RequestMethod.POST})
	public String addMaterial(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : addMaterial ---->  Enter");

		log.info(this.getClass().getName() + "Method : addMaterial ---->  Exit");

		return "addMaterial";
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/addMaterialData", method = {RequestMethod.GET,RequestMethod.POST})
	public RedirectView addMaterialData(HttpServletRequest request, HttpServletResponse response, final RedirectAttributes redirectAttributes) {
		log.info(this.getClass().getName() + "Method : addMaterialData ---->  Enter");

		redirectAttributes.addFlashAttribute("message", "Metarial has been added Successfully ");
		log.info(this.getClass().getName() + "Method : addMaterialData ---->  Exit");

		return new RedirectView("material", true);
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/materialAttributes", method = {RequestMethod.GET,RequestMethod.POST})
	public String materialAttributes(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : materialAttributes ---->  Enter");

		log.info(this.getClass().getName() + "Method : materialAttributes ---->  Exit");

		return "materialAttributes";
	}
	
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/inventory", method = {RequestMethod.GET,RequestMethod.POST})
	public String inventory(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : inventory ---->  Enter");

		log.info(this.getClass().getName() + "Method : inventory ---->  Exit");

		return "inventory";
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/addInventory", method = {RequestMethod.GET,RequestMethod.POST})
	public String addInventory(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : addInventory ---->  Enter");

		log.info(this.getClass().getName() + "Method : addInventory ---->  Exit");

		return "addInventory";
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/addInventoryData", method = {RequestMethod.GET,RequestMethod.POST})
	public RedirectView addInventoryData(HttpServletRequest request, HttpServletResponse response, final RedirectAttributes redirectAttributes) {
		log.info(this.getClass().getName() + "Method : addInventoryData ---->  Enter");

		redirectAttributes.addFlashAttribute("message", "Inventory has been added Successfully ");
		log.info(this.getClass().getName() + "Method : addInventoryData ---->  Exit");

		return new RedirectView("inventory", true);
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/adjustInventory", method = {RequestMethod.GET,RequestMethod.POST})
	public String adjustInventory(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : adjustInventory ---->  Enter");

		log.info(this.getClass().getName() + "Method : adjustInventory ---->  Exit");

		return "adjustInventory";
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/adjustInventoryData", method = {RequestMethod.GET,RequestMethod.POST})
	public RedirectView adjustInventoryData(HttpServletRequest request, HttpServletResponse response, final RedirectAttributes redirectAttributes) {
		log.info(this.getClass().getName() + "Method : adjustInventoryData ---->  Enter");

		redirectAttributes.addFlashAttribute("message", "Inventory has been updated successfully ");
		log.info(this.getClass().getName() + "Method : adjustInventoryData ---->  Exit");

		return new RedirectView("inventory", true);
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/inventoryProperties", method = {RequestMethod.GET,RequestMethod.POST})
	public String inventoryProperties(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : inventoryProperties ---->  Enter");

		log.info(this.getClass().getName() + "Method : inventoryProperties ---->  Exit");

		return "inventoryProperties";
	}
}
