package com.cts.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cts.product.bean.Product;
import com.cts.product.service.ProductService;

@Controller
public class ProductController {
	 @Autowired
	  private ProductService productService; 

	@RequestMapping(value="addProduct.html", method=RequestMethod.GET)
	
	public String geProductPage()
	{
		return "addProduct";
	}
	

	@RequestMapping(value="updateProduct.html", method=RequestMethod.GET)
	public String getUpdatePage()
	{
		return "updateProduct";
	}
	
	@RequestMapping(value="deleteProduct.html", method=RequestMethod.GET)
	public String getDeletePage()
	{
		return "deleteProduct";
	}
	
	@RequestMapping(value="viewProduct.html", method=RequestMethod.GET)
	public String getViewPage(Model model)
	{
		// model.addAttribute("product", new Product());
	      model.addAttribute("products", productService.getAllProducts());

	      return "viewProduct";
	}
	
	
	@RequestMapping(value="addProduct.html", method=RequestMethod.POST)
	public ModelAndView addProduct(@ModelAttribute Product product) 
	{
		ModelAndView modelAndView = new ModelAndView();
		if("success".equals(productService.addProduct(product)))
			System.out.println("added product");
			modelAndView.setViewName("admin");
		
	return modelAndView;
	}
	
	@RequestMapping(value="updateProduct.html", method=RequestMethod.POST)
	public ModelAndView updateProduct(@ModelAttribute Product product) 
	{
		ModelAndView modelAndView = new ModelAndView();
		if("success".equals(productService.updateProduct(product)))
			System.out.println("updated product");
			modelAndView.setViewName("admin");
	
	return modelAndView;
	}
	
	@RequestMapping(value="deleteProduct.html", method=RequestMethod.POST)
	public ModelAndView deleteProduct(@ModelAttribute Product product) 
	{
		ModelAndView modelAndView = new ModelAndView();
		if("success".equals(productService.deleteProduct(product.getProductId())))
			System.out.println("deleted product");
			modelAndView.setViewName("admin");
		return modelAndView;
	}
	
	
}
	