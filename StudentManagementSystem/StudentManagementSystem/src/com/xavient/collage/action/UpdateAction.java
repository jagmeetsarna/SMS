package com.xavient.collage.action;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang3.StringUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.xavient.collage.DAO.RegisterDao;

public class UpdateAction extends ActionSupport {
	private String name;
	private String email;
	private String address;
	private String type;
	private String zipcode;
	private String state;
	private String city;
	private String oldEmail;
	private String course;

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public String getOldEmail() {
		return oldEmail;
	}

	public void setOldEmail(String oldEmail) {
		this.oldEmail = oldEmail;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String updateUser() {

		RegisterDao.update(this,getOldEmail());

		return "success";
	}
	public void validate() {
		if (StringUtils.isBlank(name)) {
			addFieldError("name", "The name is required");
		} else if (isNameNotValid(name)) {
			addFieldError("name", "The name is required");
		}
		if (StringUtils.isBlank(email)) {
			addFieldError("email", "The email is required");
		} else if (!isValidEmailId(email)) {
			addFieldError("email", "Please enter vailid email");
		}

		if (StringUtils.isBlank(address)) {
			addFieldError("address", "The address is required");
		}
		if (StringUtils.isBlank(zipcode)) {
			addFieldError("zipcode", "The zipcode is required");
		} else if (!isValidZipcode(zipcode)) {
			addFieldError("zipcode", "Please enter a valid zipcode");
		}
		if (StringUtils.isBlank(state)) {
			addFieldError("state", "The state is required");
		}
		if (StringUtils.isBlank(city)) {
			addFieldError("city", "The city is required");
		} else if (isCityNotValid(city)) {
			addFieldError("city", "Please enter a valid city name");
		}

	}

	public static boolean isValidEmailId(String email) {
		String emailPattern = "^[\\w!#$%&’*+/=?`{|}~^-]+(?:\\.[\\w!#$%&’*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$";
		Pattern p = Pattern.compile(emailPattern);
		Matcher m = p.matcher(email);
		return m.matches();
	}

	public static boolean isValidZipcode(String zipcode) {
		String zipcodePattern = "^\\d{6}$";
		Pattern p = Pattern.compile(zipcodePattern);
		Matcher m = p.matcher(zipcode);
		return m.matches();
	}

	public static boolean isNameNotValid(String name) {
		boolean containsDigit = false;

		if (name != null && !name.isEmpty()) {
			for (char c : name.toCharArray()) {
				if (containsDigit = Character.isDigit(c)) {
					break;
				}
			}
		}

		return containsDigit;
	}

	public static boolean isCityNotValid(String city) {
		boolean containsDigit = false;

		if (city != null && !city.isEmpty()) {
			for (char c : city.toCharArray()) {
				if (containsDigit = Character.isDigit(c)) {
					break;
				}
			}
		}

		return containsDigit;
	}

}
