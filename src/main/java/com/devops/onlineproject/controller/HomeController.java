package com.devops.onlineproject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.domain.Product;
import com.niit.shoppingcart.domain.Supplier;
import com.niit.shoppingcart.domain.User;

@Controller
public class HomeController {
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private User user;
	
	@Autowired
	private HttpSession session;
	

	@Autowired
	private Category category;
	
	@Autowired
	private CategoryDAO categoryDAO; 
	
	@Autowired
	private Product product;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private Supplier supplier;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	//define 3 methods
	
	
	
	@RequestMapping("/manage_categories")
	public ModelAndView manageCategories()
	{
		System.out.println("manageCategories method called");
		ModelAndView mv = new ModelAndView("/Admin/Category");
		mv.addObject("isUserClickedCategories", "true");
		
		//get the categories from db.
		
		List<Category> categoryList= categoryDAO.list();
		mv.addObject("categoryList", categoryList);
		mv.addObject("category", category); 
		mv.addObject("cat",new Category());
		System.out.println("manageCategories method END");

		return mv;
		
	}
	
	@RequestMapping("/manage_products")
	public ModelAndView manageProducts()
	{
		System.out.println("manageProducts method called");
		ModelAndView mv = new ModelAndView("/Admin/Product");
		mv.addObject("isUserClickedProducts", "true");
		
		//get the products from db.
		
		List<Product> productList = productDAO.list();
		mv.addObject("productList", productList);
		mv.addObject("product", product);
		
		return mv;
		
	}
	
	@RequestMapping("/manage_suppliers")
	public ModelAndView manageSupplier()
	{
		System.out.println("manageSupplier method called");
		ModelAndView mv = new ModelAndView("/Admin/Supplier");
		mv.addObject("isUserClickedSuppliers", "true");
		
		//get the suppliers from db.
		
		List<Supplier> supplierList = supplierDAO.list();
		mv.addObject("supplierList", supplierList);
		mv.addObject("supplier", supplier);
		
		return mv;
		
	}
	

	
	
	
	
	//   http://localhost:8080/ShoppingCart/
	@RequestMapping("/")
	public ModelAndView showHomePage()
	{
		System.out.println("Starting the method showHomePage");
		//Specifying which page you have navigation
		ModelAndView mv = new ModelAndView("/Menu/home");
		
		//Specify what data you have to carry to home page
		
		mv.addObject("msg", "WELCOME TO SHOPPING CART");
		
		return mv;
	}
	
	
	@RequestMapping("/login")
	public ModelAndView showLoginPage()
	{
		System.out.println("Clicked on Login link");
		ModelAndView mv = new ModelAndView("/Menu/login");
		mv.addObject("isUserClickedLogin","true");
		
		return mv;
	}
	
	
	@RequestMapping("/register")
	public ModelAndView showRegisterPage()
	{
		System.out.println("Clicked on Register link");
		ModelAndView mv = new ModelAndView("/Menu/register");
		mv.addObject("isUserClickedRegister","true");
		
		return mv;
	}
	
	
	
	
	@RequestMapping("/contact")
	public ModelAndView showContactPage()
	{
		System.out.println("Clicked on Contact link");
		ModelAndView mv = new ModelAndView("/Menu/contact");
		mv.addObject("isUserClickedContact","true");
		return mv;
	}
	
	@RequestMapping("/aboutUs")
	public ModelAndView showAboutUsPage()
	{
		System.out.println("Clicked on About Us link");
		ModelAndView mv = new ModelAndView("/Menu/aboutUs");
		mv.addObject("isUserClickedAboutUs","true");
		return mv;
	}
	
	@RequestMapping("/admin")
	public ModelAndView showAdminPage()
	{
		System.out.println("Clicked on Admin link");
		ModelAndView mv = new ModelAndView("/Admin/AdminHome");
		mv.addObject("isAdmin","true");
		return mv;
	}
	
	@RequestMapping("/menAnalog")
	public ModelAndView showMenAnalogPage()
	{
		System.out.println("Clicked on MenAnalog link");
		ModelAndView mv = new ModelAndView("/Menu/MenAnalog");
		mv.addObject("isUserClickedMenAnalog","true");
		
		return mv;
	}
	
	@RequestMapping("/menDigi")
	public ModelAndView showMenDigiPage()
	{
		System.out.println("Clicked on MenDigi link");
		ModelAndView mv = new ModelAndView("/Menu/MenDigi");
		mv.addObject("isUserClickedMenDigi","true");
		
		return mv;
	}
	
	@RequestMapping("/menOther")
	public ModelAndView showMenOtherPage()
	{
		System.out.println("Clicked on menOther link");
		ModelAndView mv = new ModelAndView("/Menu/MenOther");
		mv.addObject("isUserClickedMenOther","true");
		
		return mv;
	}
	
	@RequestMapping("/wAnalog")
	public ModelAndView showWAnalogPage()
	{
		System.out.println("Clicked on WomenAnalog link");
		ModelAndView mv = new ModelAndView("/Menu/WomenAnalog");
		mv.addObject("isUserClickedWomenAnalog","true");
		
		return mv;
	}
	
	@RequestMapping("/wDigi")
	public ModelAndView showWomenDigiPage()
	{
		System.out.println("Clicked on WDigi link");
		ModelAndView mv = new ModelAndView("/Menu/WomenDigi");
		mv.addObject("isUserClickedWomenDigi","true");
		
		return mv;
	}
	
	@RequestMapping("/wOther")
	public ModelAndView showWomenOtherPage()
	{
		System.out.println("Clicked on WomenOther link");
		ModelAndView mv = new ModelAndView("/Menu/WomenOther");
		mv.addObject("isUserClickedWomenOther","true");
		
		return mv;
	}
	
	
	
	@RequestMapping("/kidAnalog")
	public ModelAndView showKidAnalogPage()
	{
		System.out.println("Clicked on kidAnalog link");
		ModelAndView mv = new ModelAndView("/Menu/KidAnalog");
		mv.addObject("isUserClickedKidAnalog","true");
		
		return mv;
	}
	
	@RequestMapping("/kidDigi")
	public ModelAndView showKidDigitalPage()
	{
		System.out.println("Clicked on KidDigi link");
		ModelAndView mv = new ModelAndView("/Menu/KidDigi");
		mv.addObject("isUserClickedKidDigi","true");
		
		return mv;
	}

	/*@RequestMapping(value="/search")
	public ModelAndView search(@RequestParam("name") String name)
	{
		
		List<Product> pd=productDAO.Search(name);
		ModelAndView mv= new ModelAndView("/Admin/Product","productList",pd);

		List<Product> productList = productDAO.list();
		mv.addObject("productList", productList);
		mv.addObject("product", product);
		
		return mv;
		
	}*/
	
	/*@RequestMapping(value="/search")
    public ModelAndView searchPage(@RequestParam( value="name") String name, HttpServletRequest request, HttpServletResponse response) 
	{
		List<Product> pd = productDAO.Search(name);
		ModelAndView mv= new ModelAndView("/Admin/Product","productList",pd);
		return mv;
		
	}*/
	
	@RequestMapping("/search")
	public ModelAndView showSearchPage()
	{
		System.out.println("Clicked on Search link");
		ModelAndView mv = new ModelAndView("/Admin/Search");
		mv.addObject("isUserClickedSearch","true");
		
		return mv;
	}
	

}
