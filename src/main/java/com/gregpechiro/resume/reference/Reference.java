package com.gregpechiro.resume.reference;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Reference {

	@Id
	@GeneratedValue
	private Long id;

	private String firstName;
	private String lastName;
	private String title;
	private Integer yearsKnown;
	private String phoneType;
	private String phoneNumber;

	public Reference() {
	}

	public Reference(String firstName, String lastName, String title, Integer yearsKnown, String phoneType, String phoneNumber) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.title = title;
		this.yearsKnown = yearsKnown;
		this.phoneType = phoneType;
		this.phoneNumber = phoneNumber;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getYearsKnown() {
		return yearsKnown;
	}

	public void setYearsKnown(Integer yearsKnown) {
		this.yearsKnown = yearsKnown;
	}

	public String getPhoneType() {
		return phoneType;
	}

	public void setPhoneType(String phoneType) {
		this.phoneType = phoneType;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

}
