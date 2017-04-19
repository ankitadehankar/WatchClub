package com.devops.onlineproject.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.Product;

public class ProductController {

	// add category, delete category, update category, edit category, showCategoryList
	
	private Product product;
	
	private ProductDAO productDAO;
	
	@PostMapping("/manage_product_create")
	public ModelAndView createCategory(@RequestParam("id")String id, 
			@RequestParam("name")String name, @RequestParam("price")String price)
	{
		product.setId(id);
		product.setName(name);
		product.setPrice(price);
		
		ModelAndView mv = new ModelAndView("Redirect:/manage_product");
		
		if (productDAO.save(product)) {
			mv.addObject("msg", "Successfully Created All Product");
		} else {
			mv.addObject("msg", "Not able to create, please contact Administrator");
		}
		return mv;
	}
}