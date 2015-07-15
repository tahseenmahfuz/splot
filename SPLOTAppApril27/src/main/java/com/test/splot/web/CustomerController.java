package com.test.splot.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.splot.model.Customer;
import com.test.splot.service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired
	CustomerService customerService;
	
	@RequestMapping(value="/customer", method=RequestMethod.GET)
	public String listCustomers(ModelMap model)
	{
		model.addAttribute("customers", customerService.listCustomers());
		return "listCustomers";
		
	}
	
	@RequestMapping(value="/customer/create", method = RequestMethod.GET)
	public String createCustomer(ModelMap model)
	{
		Customer customer = new Customer();
		model.addAttribute(customer);
		return "createCustomer";
	}
	
	@RequestMapping(value="/customer/create", method = RequestMethod.POST)
	public String addCustomer(@ModelAttribute("customer") Customer customer)
	{
		customerService.addCustomer(customer.getLotNumber(), customer);
		return "redirect:/customer";
	}
	
	
}
