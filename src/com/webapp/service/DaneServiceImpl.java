package com.webapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.webapp.dao.DaneDAO;
import com.webapp.entity.Dane;
@Service
public class DaneServiceImpl implements DaneService {

	//need to inject customer dao
	@Autowired
	private DaneDAO daneDao;
	
	@Override
	@Transactional
	public List<Dane> getDane() {
		return daneDao.getDane();
	}

	@Override
	@Transactional
	public void saveDane(Dane theDane) {
		daneDao.saveDane(theDane);
	}

	@Override
	@Transactional
	public Dane getDane(int theId) {
		return daneDao.getDane(theId);
	}

	@Override
	@Transactional
	public void deleteDane(int theId) {

		daneDao.deleteDane(theId);
		
	}

}
