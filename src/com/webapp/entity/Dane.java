package com.webapp.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
//@Table(name="customer")

@Table(name="systems")
public class Dane {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="system")
	private String system;
	
	@Column(name="request")
	private int request;
	
	@Column(name="order_number")
	private String orderNumber;
	
	@Column(name="from_date")
	private Date fromDate;
	
	@Column(name="to_date")
	private Date toDate;
	
	@Column(name="amount")
	private double amount;
	
	@Column(name="amount_type")
	private String amountType;
	
	@Column(name="amount_period")
	private String amountPeriod;
	
	@Column(name="authorization_percent")
	private int authorizationPercent;
	
	@Column(name="active")
	private String active;
	
	@Column(name="description")
	private String description;
	
	@Column(name="technology")
	private String technology;
	
	@Column(name="owner")
	private String owner;
	
	public Dane() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSystem() {
		return system;
	}

	public void setSystem(String system) {
		this.system = system;
	}

	public int getRequest() {
		return request;
	}

	public void setRequest(int request) {
		this.request = request;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public Date getFromDate() {
		return fromDate;
	}

	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}

	public Date getToDate() {
		return toDate;
	}

	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getAmountType() {
		return amountType;
	}

	public void setAmountType(String amountType) {
		this.amountType = amountType;
	}

	public String getAmountPeriod() {
		return amountPeriod;
	}

	public void setAmountPeriod(String amountPeriod) {
		this.amountPeriod = amountPeriod;
	}

	public int getAuthorizationPercent() {
		return authorizationPercent;
	}

	public void setAuthorizationPercent(int authorizationPercent) {
		this.authorizationPercent = authorizationPercent;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTechnology() {
		return technology;
	}

	public void setTechnology(String technology) {
		this.technology = technology;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	@Override
	public String toString() {
		return "Dane [id=" + id + ", system=" + system + ", request=" + request + ", orderNumber=" + orderNumber
				+ ", fromDate=" + fromDate + ", toDate=" + toDate + ", amount=" + amount + ", amountType=" + amountType
				+ ", amountPeriod=" + amountPeriod + ", authorizationPercent=" + authorizationPercent + ", active="
				+ active + ", description=" + description + ", technology=" + technology + ", owner=" + owner + "]";
	}

	

	
	/*@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;*/
	
	/*@Column(name="first_name")
	private String firstName;
	
	/*@Column(name="last_name")
	private String lastName;
	
	@Column(name="email")
	private String email;
	
	public Dane() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Dane [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + "]";
	}*/
	
	

}
