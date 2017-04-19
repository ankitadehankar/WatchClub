package com.devops.onlineproject.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.domain.Supplier;

public class SupplierController {

	// add category, delete category, update category, edit category, showCategoryList
	
		@Autowired
		private SupplierDAO supplierDAO;
		
		@Autowired
		private Supplier supplier;
		
		@PostMapping("/manage_supplier_create")
		public ModelAndView createCategory(@RequestParam("id")String id, 
				@RequestParam("name")String name, @RequestParam("address")String address)
		{
			supplier.setId(id);
			supplier.setName(name);
			supplier.setAddress(address);
			
			ModelAndView mv = new ModelAndView("Redirect:/manage_supplier");
			
			if (supplierDAO.save(supplier)) {
				mv.addObject("msg", "Successfully Created All Supplier");
			} else {
				mv.addObject("msg", "Not able to create, please contact Administrator");
			}
			return mv;
		}
	}

