package com.greatlearning.customerRelationshipManagement.service;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.greatlearning.customerRelationshipManagement.entity.Customer;

@Repository
public class CustomerServiceImpl implements CustomerService {

	private SessionFactory sessionFactory;

	private Session session;

	@Autowired
	CustomerServiceImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		try {
			session = sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = sessionFactory.openSession();

		}
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Customer> findAll() {

		Transaction tx = session.beginTransaction();

		List<Customer> customers = session.createQuery("from Customer").list();

		tx.commit();

		return customers;

	}

	@Transactional
	public Customer findById(int Id) {

		Transaction tx = session.beginTransaction();

		Customer customer = session.get(Customer.class, Id);

		tx.commit();

		return customer;

	}

	@Transactional
	public void save(Customer customer) {

		Transaction tx = session.beginTransaction();

		session.saveOrUpdate(customer);

		tx.commit();

	}

	@Transactional

	public void deleteById(int Id) {

		Transaction tx = session.beginTransaction();

		Customer customer = session.get(Customer.class, Id);

		session.delete(customer);

		tx.commit();

	}

}
