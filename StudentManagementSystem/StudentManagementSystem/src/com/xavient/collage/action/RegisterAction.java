package com.xavient.collage.action;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.interceptor.validation.SkipValidation;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.corba.se.spi.orbutil.fsm.Input;
import com.xavient.collage.DAO.RegisterDao;

public class RegisterAction extends ActionSupport {
	private String name;
	private String password;
	private String email;
	private String address;
	private String type;
	private String cpassword;
	private String zipcode;
	private String state;
	private String city;
	private int course;

	public int getCourse() {
		return course;
	}

	public void setCourse(int course) {
		this.course = course;
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

	public void setCity(String city) {
		this.city = city;
	}

	public String getCpassword() {
		return cpassword;
	}

	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String processRegistration() {

		List lst = RegisterDao.getUserByEmailID(email);
		if (lst.isEmpty()) {
			RegisterDao.save(this);
			return SUCCESS;
		} else if (!lst.isEmpty()) {
			return ERROR;
		}
		return INPUT;
	}

	/*public String updateUser() {

		RegisterDao.update(this, getEmail());

		return "success";
	}*/

	@SkipValidation
	public String prepRegistration() {
		// int i = RegisterDao.save(this);
		return SUCCESS;
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
		if (StringUtils.isBlank(password)) {
			addFieldError("password", "The password is required");
		}
		if (StringUtils.isBlank(cpassword)) {
			addFieldError("cpassword", "Confirm Password is required");
		}
		if (StringUtils.isNotBlank(cpassword)&& StringUtils.isNotBlank(password)&& !(cpassword.equals(password))) {
			addFieldError("cpassword", "Password and Confirm Password is not matching");
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