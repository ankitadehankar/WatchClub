package com.devops.onlineproject.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.domain.Category;

public class CategoryController {

	// add category, delete category, update category, edit category, showCategoryList
	
	public static Logger log = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Category category;
	
	/*@PostMapping("/manage_category_create")
	public ModelAndView createCategory(@RequestParam("id")String id, 
			@RequestParam("name")String name, @RequestParam("description")String description)
	{
		category.setId(id);
		category.setName(name);
		category.setDescription(description);
		
		ModelAndView mv = new ModelAndView("Redirect:/manage_categories");
		
		if (categoryDAO.save(category)) {
			mv.addObject("msg", "Successfully Created All Category");
		} else {
			mv.addObject("msg", "Not able to create, please contact Administrator");
		}
		return mv;
	}*/
	
	@RequestMapping(value="/manage_category_create",method=RequestMethod.POST)
	public ModelAndView createNewCategory(@ModelAttribute("cat") @Validated Category category,BindingResult result, Model model){
		
		
		ModelAndView mv = new ModelAndView("/Admin/category");
		if (result.hasErrors()) {
			

			
		} else {
		categoryDAO.save(category);
		
		mv.addObject("msg","Category added Successfully");
		
		}
//		session.setAttribute("categoryList", categoryDAO.list());
		return mv;
		
	}
	
	@RequestMapping("/manage_category_edit/{id}")
	public ModelAndView editCategory(@PathVariable("id") String id){
		ModelAndView mv = new ModelAndView("/Admin/Category");
		Category ct=categoryDAO.getCategoryByID(id);
	    
		if (categoryDAO.update(category)) {
			mv.addObject("msg", "Successfully Edited Category");
		} else {
			mv.addObject("msg", "Not able to Edit, please contact Administrator");
		}
		mv.addObject("cat",ct); 
		mv.addObject("editing",true);
		return mv;
				
		
		
	}
	
	@RequestMapping("manage_category_delete/{id}")
//	public ModelAndView deleteCategory(@PathVariable("id") String id, Model model) throws Exception {
	public String deleteCategory(@PathVariable("id") String id, Model model) throws Exception {
		boolean flag = categoryDAO.delete(id);

		String msg = "Successfully done the operation";
		if (flag != true) {
			msg = "The operation could not success";
		}
		/*
		 * model.addAttribute("category", category);
		 * model.addAttribute("categoryList", this.categoryDAO.list());
		 */
		model.addAttribute("msg", msg);
	//	ModelAndView mv = new ModelAndView("forward:/manage_categories");
		//return mv;

		return "forward:/manage_categories";
	}

	
	/*public String editCategory(@PathVariable("id") String id, Model model) {
		// categoryDAO.saveOrUpdate(category);
		log.debug(" Starting of the method editCategory");

		category = categoryDAO.getCategoryByID(id);
		//model.addAttribute("category", category);
		log.debug(" End of the method editCategory");
		return "forward:/manage_categories";
	}*/
}
