package com.jwalterwilkos.model;

import javax.persistence.*;

@Entity
@Table(name = "employees")
public class Employee {
	
	@Id
	@GeneratedValue(strategy =  GenerationType.IDENTITY)
	private long id;
	
	@Column(name = "first_name")
	private String firstName;
	
	@Column(name = "last_name")
	private String lastName;
	
	@Column(name = "email")
	private String email;

	@Column(name="funcLvl")
	private String funcLvl;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinTable(name = "emp_car",
			joinColumns =
					{ @JoinColumn(name = "employee_id", referencedColumnName = "id") },
			inverseJoinColumns =
					{ @JoinColumn(name = "car_id", referencedColumnName = "id") })
	private Car car;




	public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	public String getFuncLvl() {
		return funcLvl;
	}

	public void setFuncLvl(String funcLvl) {
		this.funcLvl = funcLvl;
	}

	public long getId() {
		return id;
	}
	public void setId(long id) {
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
}
