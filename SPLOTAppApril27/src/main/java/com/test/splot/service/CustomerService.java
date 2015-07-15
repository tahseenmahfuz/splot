package com.test.splot.service;

import java.util.HashMap;
import com.test.splot.model.Customer;

public class CustomerService {

	HashMap<Integer, Customer> customers; 

	public void addCustomer(int lotNumber, Customer customer)
	{
		customers.put(lotNumber, customer);
	}

	public int removeCustomer(int lotNumber, Customer customer)
	{
		customers.remove(lotNumber);
		return 0;
	}

	public HashMap<Integer, Customer> listCustomers()
	{
		if(customers == null)
			customers = new HashMap<Integer, Customer>();

		return customers;
	}

}
