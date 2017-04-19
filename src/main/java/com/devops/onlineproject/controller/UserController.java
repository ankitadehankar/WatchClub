package com.devops.onlineproject.controller;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.domain.Product;
import com.niit.shoppingcart.domain.Supplier;
import com.niit.shoppingcart.domain.User;

@Controller
public class UserController {

	public static Logger log = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private UserDAO userDAO;
	

	@Autowired
	private User user;

	/*@Autowired
	private MyCartDAO cartDAO;

	@Autowired
	private MyCart myCart;*/

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private Category category;

	@Autowired
	private SupplierDAO supplierDAO;

	@Autowired
	private Supplier supplier;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private Product product;

	
	@Autowired
	private HttpSession session;

	/**
	 * if invalid credentials -> Home page , login , error message if valid
	 * credentials && he is admin -> AdminHome page ,logout link if valid
	 * credentials && he is end user -> Home page, myCart, logout link
	 * 
	 * @param userID
	 * @param password
	 * @return it will return data and page name where to return
	 */


	@RequestMapping("/logout")
	public ModelAndView logout() {
		log.debug("Starting of the method logout");
		ModelAndView mv = new ModelAndView("/Menu/home");
		session.invalidate(); // will remove the attributes which are added
								// session
		session.setAttribute("category", category);
		session.setAttribute("categoryList", categoryDAO.list());

		mv.addObject("logoutMessage", "You successfully logged out");
		mv.addObject("loggedOut", "true");
		
	    log.debug("Ending of the method logout");
		return mv;
	}

	/*public ModelAndView registerUser(@ModelAttribute User user) {
		log.debug("Starting of the method registerUser");
		ModelAndView mv = new ModelAndView("/Menu/home");
		if (userDAO.getUser(user.getId()).equals("notNull")) {
			user.setRole("ROLE_USER"); // all the users are end users by default
			userDAO.save(user);
			log.debug("You are successfully register");
			mv.addObject("successMessage", "You are successfully registered");
		} else {
			log.debug("User exist with this id");
			mv.addObject("errorMessage", "User exist with this id");
		}
		log.debug("Ending of the method registerUser");
		return mv;
	}*/
//@RequestParam("email") String mail,

	@RequestMapping(value = "/registerUser", method = RequestMethod.GET)
    public String userRegistration(@RequestParam("id") String id,@RequestParam("name") String name, @RequestParam("contact")
    String contact,@RequestParam("password") String password,RedirectAttributes redir){
		log.debug("Starting of the method registerUser");

	if(userDAO.getUser(id) == null) {
		try{
	//user.setId(id);
	user.setName(name);
	user.setContact(contact);
	//user.setMail(mail);
	user.setPassword(password);
	user.setRole("ROLE_USER");
	userDAO.save(user);
	
	redir.addFlashAttribute("msg","Registration Success, Please Login Here");
	log.debug("User Registered Successfully");

	return "redirect:/login";
		}
		catch(Exception e){
			e.printStackTrace();
			redir.addFlashAttribute("errorMessage","Password length must be in between 2-14");
			return "redirect:/home";
		}
	}
	
	else {
		redir.addFlashAttribute("errorMessage","ID is not available");	
		return "redirect:/home";
	}
	
	}	
	
}
	
	/*//authentication-failure-forward-url="/loginError"
	@RequestMapping(value = "/loginError", method = RequestMethod.GET)
	public String loginError(Model model) {
		log.debug("Starting of the method loginError");
		model.addAttribute("errorMessage", "Invalid Credentials.  Please try again.");
		log.debug("Ending of the method loginError");
		return "home";

	}
//<security:access-denied-handler error-page="/accessDenied" />
	@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	public String accessDenied(Model model) {
		log.debug("Starting of the method accessDenied");
		model.addAttribute("errorMessage", "You are not authorized to access this page");
		log.debug("Ending of the method accessDenied");
		return "home";

	}*/

