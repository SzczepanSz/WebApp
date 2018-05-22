package com.webapp.service;

import java.util.List;

import com.webapp.entity.Dane;

public interface DaneService {
	
	public List<Dane> getDane();

	public void saveDane(Dane theDane);

	public Dane getDane(int theId);

	public void deleteDane(int theId);

}
