package com.greatlearning.customerRelationshipManagement.service;

import java.util.List;

import com.greatlearning.customerRelationshipManagement.entity.Customer;

public interface CustomerService {

	public List<Customer> findAll();

	public Customer findById(int Id);

	public void save(Customer customer);

	public void deleteById(int id);

}
