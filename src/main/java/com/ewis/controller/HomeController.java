package com.ewis.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.ewis.pojo.Material;

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
	public ModelAndView root(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : root ---->  Enter");

		log.info(this.getClass().getName() + "Method : root ---->  Exit");

		return new ModelAndView("redirect:/login");
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : home ---->  Enter");

		log.info(this.getClass().getName() + "Method : home ---->  Exit");

		return new ModelAndView("home");
	}
	
	@RequestMapping(value = "/login", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView login(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : login ---->  Enter");

		log.info(this.getClass().getName() + "Method : login ---->  Exit");

		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "/loginVarification", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView loginVarification(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : loginVarification ---->  Enter");

		log.info(this.getClass().getName() + "Method : loginVarification ---->  Exit");

		return new ModelAndView("redirect:/home");
	}
	
	@RequestMapping(value = "/material", method = {RequestMethod.GET,RequestMethod.POST})
	public String material(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : material ---->  Enter");

		log.info(this.getClass().getName() + "Method : material ---->  Exit");

		return "material";
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/addMaterial", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addMaterial(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : addMaterial ---->  Enter");

		log.info(this.getClass().getName() + "Method : addMaterial ---->  Exit");

		return new ModelAndView("addMaterial");
	}
	
	@RequestMapping(value = "/editMaterial", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView editMaterial(ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
		log.info(this.getClass().getName() + "Method : editMaterial ---->  Enter");
		
		Material material = new Material();
		
		material.setName("Unlablled Vial");
		material.setDiscription("Material disctiption");
		material.setStatus("New");
		material.setEffactiveDate("09/20/2016");
		material.setExpirationDate("08/01/2016");
		material.setQuantity("200");
		material.setType("Raw Material");
		material.setStorageClass("Storage Class 1");
		request.setAttribute("material", material);
		
		request.setAttribute("name", "abcd");
		
		log.info(this.getClass().getName() + "Method : editMaterial ---->  Exit");

		return new ModelAndView("addMaterial");
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
	@RequestMapping(value = "/editInventory", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView adjustInventory(ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
		log.info(this.getClass().getName() + "Method : editInventory ---->  Enter");

		request.setAttribute("lotID", "LOT003");
		request.setAttribute("quantity", "200");
		request.setAttribute("area", "Area Detail");
		request.setAttribute("location", "Location detail");
		log.info(this.getClass().getName() + "Method : editInventory ---->  Exit");

		return new ModelAndView("addInventory");
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
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/container", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView container(ModelMap modelMap,HttpServletRequest request, HttpServletResponse response) {

		log.info(this.getClass().getName() + "Method : container ---->  Enter");

		if(request.getParameter("lotId") != null ){
			HttpSession session = request.getSession();
			session.setAttribute("lotId", request.getParameter("lotId"));
		}
		
		log.info(this.getClass().getName() + "Method : container ---->  Exit");

		return new ModelAndView("container");
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/order", method = {RequestMethod.GET,RequestMethod.POST})
	public String order(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : order ---->  Enter");

		log.info(this.getClass().getName() + "Method : order ---->  Exit");

		return "order";
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/newOrder", method = {RequestMethod.GET,RequestMethod.POST})
	public String newOrder(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : newOrder ---->  Enter");

		log.info(this.getClass().getName() + "Method : newOrder ---->  Exit");

		return "newOrder";
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/newOrderData", method = {RequestMethod.GET,RequestMethod.POST})
	public RedirectView newOrderData(HttpServletRequest request, HttpServletResponse response, final RedirectAttributes redirectAttributes) {
		log.info(this.getClass().getName() + "Method : newOrderData ---->  Enter");

		redirectAttributes.addFlashAttribute("message", "Order has been added Successfully ");
		log.info(this.getClass().getName() + "Method : newOrderData ---->  Exit");

		return new RedirectView("order", true);
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/equipmentCheckin", method = {RequestMethod.GET,RequestMethod.POST})
	public String equipmentCheckin(HttpServletRequest request, HttpServletResponse response) {
		log.info(this.getClass().getName() + "Method : equipmentCheckin ---->  Enter");
		System.out.println(this.getClass().getName() + "Method : equipmentCheckin");
		log.info(this.getClass().getName() + "Method : equipmentCheckin ---->  Exit");

		return "equipmentCheckin";
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/materialCheckin", method = {RequestMethod.GET,RequestMethod.POST})
	public String materialCheckin(HttpServletRequest request, HttpServletResponse response) {
		log.info(this.getClass().getName() + "Method : materialCheckin ---->  Enter");

		log.info(this.getClass().getName() + "Method : materialCheckin ---->  Exit");

		return "materialCheckin";
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/doubleVerification", method = {RequestMethod.GET,RequestMethod.POST})
	public String doubleVerification(HttpServletRequest request, HttpServletResponse response) {
		log.info(this.getClass().getName() + "Method : doubleVerification ---->  Enter");

		log.info(this.getClass().getName() + "Method : doubleVerification ---->  Exit");

		return "doubleVerification";
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/areaManagement", method = {RequestMethod.GET,RequestMethod.POST})
	public String areaManagement(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : areaManagement ---->  Enter");

		log.info(this.getClass().getName() + "Method : areaManagement ---->  Exit");

		return "areaManagement";
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/pallete", method = {RequestMethod.GET,RequestMethod.POST})
	public String pallete(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : pallete ---->  Enter");

		log.info(this.getClass().getName() + "Method : pallete ---->  Exit");

		return "pallete";
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/createPallete", method = {RequestMethod.GET,RequestMethod.POST})
	public String createPallete(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : createPallete ---->  Enter");

		log.info(this.getClass().getName() + "Method : createPallete ---->  Exit");

		return "createPallete";
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/addPallete", method = {RequestMethod.GET,RequestMethod.POST})
	public RedirectView addPallete(ModelMap modelMap , RedirectAttributes redirectAttributes) {
		log.info(this.getClass().getName() + "Method : addPallete ---->  Enter");
		
		redirectAttributes.addFlashAttribute("message", "New pallete crated");
		
		log.info(this.getClass().getName() + "Method : addPallete ---->  Exit");

		
		return new RedirectView("pallete", true);
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/supervisorVerification", method = {RequestMethod.GET,RequestMethod.POST})
	public String supervisorVerification(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : supervisorVerification ---->  Enter");

		log.info(this.getClass().getName() + "Method : supervisorVerification ---->  Exit");

		return "supervisorVerification";
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/addArea", method = {RequestMethod.GET,RequestMethod.POST})
	public RedirectView addArea(HttpServletRequest request, HttpServletResponse response, final RedirectAttributes redirectAttributes) {
		log.info(this.getClass().getName() + "Method : addArea ---->  Enter");

		redirectAttributes.addFlashAttribute("message", "Area has been added Successfully ");
		log.info(this.getClass().getName() + "Method : addArea ---->  Exit");

		return new RedirectView("areaManagement", true);
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/updateArea", method = {RequestMethod.GET,RequestMethod.POST})
	public RedirectView updateArea(HttpServletRequest request, HttpServletResponse response, final RedirectAttributes redirectAttributes) {
		log.info(this.getClass().getName() + "Method : updateArea ---->  Enter");

		redirectAttributes.addFlashAttribute("message", "Area has been updated Successfully ");
		log.info(this.getClass().getName() + "Method : updateArea ---->  Exit");

		return new RedirectView("areaManagement", true);
	}
	
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/locations", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView locations(ModelMap modelMap,HttpServletRequest request) {
		log.info(this.getClass().getName() + "Method : locations ---->  Enter");
		
		if(request.getParameter("areaName") != null ){
			HttpSession session = request.getSession();
			session.setAttribute("areaName", request.getParameter("areaName"));
		}
		
		log.info(this.getClass().getName() + "Method : locations ---->  Exit");

		return new ModelAndView("locations");
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/addLocation", method = {RequestMethod.GET,RequestMethod.POST})
	public RedirectView addLocation(HttpServletRequest request, HttpServletResponse response, final RedirectAttributes redirectAttributes) {
		log.info(this.getClass().getName() + "Method : addLocation ---->  Enter");

		redirectAttributes.addFlashAttribute("message", "Location has been added Successfully ");
		log.info(this.getClass().getName() + "Method : addLocation ---->  Exit");

		return new RedirectView("locations", true);
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/updateLocation", method = {RequestMethod.GET,RequestMethod.POST})
	public RedirectView updateLocation(HttpServletRequest request, HttpServletResponse response, final RedirectAttributes redirectAttributes) {
		log.info(this.getClass().getName() + "Method : updateLocation ---->  Enter");

		redirectAttributes.addFlashAttribute("message", "Location has been updated Successfully ");
		log.info(this.getClass().getName() + "Method : updateLocation ---->  Exit");

		return new RedirectView("locations", true);
	}

	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/recipe", method = {RequestMethod.GET,RequestMethod.POST})
	public String recipe(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : recipe ---->  Enter");

		log.info(this.getClass().getName() + "Method : recipe ---->  Exit");

		return "recipe";
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/newRecipe", method = {RequestMethod.GET,RequestMethod.POST})
	public String newRecipe(ModelMap modelMap) {
		log.info(this.getClass().getName() + "Method : newRecipe ---->  Enter");

		log.info(this.getClass().getName() + "Method : newRecipe ---->  Exit");

		return "newRecipe";
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/newRecipeData", method = {RequestMethod.GET,RequestMethod.POST})
	public RedirectView newRecipeData(HttpServletRequest request, HttpServletResponse response, final RedirectAttributes redirectAttributes) {
		log.info(this.getClass().getName() + "Method : newRecipeData ---->  Enter");

		redirectAttributes.addFlashAttribute("message", "Recipe has been added Successfully ");
		log.info(this.getClass().getName() + "Method : newRecipeData ---->  Exit");

		return new RedirectView("recipe", true);
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/addStep", method = {RequestMethod.GET,RequestMethod.POST})
	public String addStep(@RequestParam("Recipe") String selectedStep, HttpServletRequest request, HttpServletResponse response, final RedirectAttributes redirectAttributes) {
		log.info(this.getClass().getName() + "Method : addStep ---->  Enter");
		
		if(selectedStep.equalsIgnoreCase("Equipement Selection")){
			
			return "equipmentSelectionStep";
		}else if(selectedStep.equalsIgnoreCase("Material Selection")){
			
			return "materialSelectionStep";
		}else if(selectedStep.equalsIgnoreCase("Standing Instruction")){
			
			return "standingInstructionStep";
		}else if(selectedStep.equalsIgnoreCase("Verification Instruction")){
			
			return "verificationInstructionStep";
		}
		redirectAttributes.addFlashAttribute("message", "Step has been added Successfully ");
		
		log.info(this.getClass().getName() + "Method : addStep ---->  Exit");
		
		return "newRecipe";
	}

	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/saveEquipmentStep", method = {RequestMethod.GET,RequestMethod.POST})
	public RedirectView saveEquipmentStep(HttpServletRequest request, HttpServletResponse response, final RedirectAttributes redirectAttributes) {
		log.info(this.getClass().getName() + "Method : saveEquipmentStep ---->  Enter");

		redirectAttributes.addFlashAttribute("message", "Equipment Selection Step has been added Successfully ");
		log.info(this.getClass().getName() + "Method : saveEquipmentStep ---->  Exit");

		return new RedirectView("newRecipe", true);
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/saveMaterialStep", method = {RequestMethod.GET,RequestMethod.POST})
	public RedirectView saveMaterialStep(HttpServletRequest request, HttpServletResponse response, final RedirectAttributes redirectAttributes) {
		log.info(this.getClass().getName() + "Method : saveMaterialStep ---->  Enter");

		redirectAttributes.addFlashAttribute("message", "Material Selection Step has been added Successfully ");
		log.info(this.getClass().getName() + "Method : saveMaterialStep ---->  Exit");

		return new RedirectView("newRecipe", true);
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/saveStandingVerificationStep", method = {RequestMethod.GET,RequestMethod.POST})
	public RedirectView saveStandingVerificationStep(HttpServletRequest request, HttpServletResponse response, final RedirectAttributes redirectAttributes) {
		log.info(this.getClass().getName() + "Method : saveStandingVerificationStep ---->  Enter");

		redirectAttributes.addFlashAttribute("message", "Standing Verification Step has been added Successfully ");
		log.info(this.getClass().getName() + "Method : saveStandingVerificationStep ---->  Exit");

		return new RedirectView("newRecipe", true);
	}
	
	/**
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/saveVerificationInstructionStep", method = {RequestMethod.GET,RequestMethod.POST})
	public RedirectView saveVerificationInstructionStep(HttpServletRequest request, HttpServletResponse response, final RedirectAttributes redirectAttributes) {
		log.info(this.getClass().getName() + "Method : saveVerificationInstructionStep ---->  Enter");

		redirectAttributes.addFlashAttribute("message", "Verification Instruction Step has been added Successfully ");
		log.info(this.getClass().getName() + "Method : saveVerificationInstructionStep ---->  Exit");

		return new RedirectView("newRecipe", true);
	}
}
