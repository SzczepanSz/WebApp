package com.webapp.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.webapp.entity.Dane;
@Repository
public class DaneDAOImpl implements DaneDAO {

	
	//need to inject the sesion factory
	@Autowired
	private SessionFactory sessionFactory;
	
	
	
	@Override
	public List<Dane> getDane() {
		//get the curent hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//get a query
		Query<Dane>theQuery=currentSession.createQuery("from Dane",Dane.class);
		
		//execute query and get results list
		List<Dane> dane = theQuery.getResultList();
		
		//return the results
		return dane;
	}



	@Override
	public void saveDane(Dane theDane) {
		// get current hibernate sesion
		Session currentSession = sessionFactory.getCurrentSession();
		//save/update  the data
		currentSession.saveOrUpdate(theDane);
	}



	@Override
	
	public Dane getDane(int theId) {
		//get current hibernate sesion
		Session currentSession = sessionFactory.getCurrentSession();
		//now retrive/read from database using the primary key
		Dane theDane = currentSession.get(Dane.class, theId);
		return theDane;
	}

/////////skrypt sql
	
	///////////wa¿nw w¿ut do bazy 

	@Override
	public void deleteDane(int theId) {
		//get current hibernate sesion
		Session currentSession = sessionFactory.getCurrentSession();
		//delete with primary key
		Query theQuery = currentSession.createQuery("delete from Dane where id=:daneId");
		theQuery.setParameter("daneId", theId);
		theQuery.executeUpdate();
	
	}

}
