package com.cognizant.teacherStudentConnect.model;

import java.io.Serializable;
import java.io.InputStream;

public class User implements Serializable {

	String userId;
	String firstName;
	String lastname;
	int age;
	String gender;
	long contactNumber;
	String category;
	String password;
	InputStream image;

	public User(String userId, String firstName, String lastname, int age, String gender, long contactNumber,
			String category, String password) {
		super();
		this.userId = userId;
		this.firstName = firstName;
		this.lastname = lastname;
		this.age = age;
		this.gender = gender;
		this.contactNumber = contactNumber;
		this.category = category;
		this.password = password;
	}

	public User(String userId, String firstName, String lastname, int age, String gender, long contactNumber,
			String category, String password, InputStream image) {
		super();
		this.userId = userId;
		this.firstName = firstName;
		this.lastname = lastname;
		this.age = age;
		this.gender = gender;
		this.contactNumber = contactNumber;
		this.category = category;
		this.password = password;
		this.image = image;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public long getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(long contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public InputStream getImage() {
		return image;
	}

	public void setImage(InputStream image) {
		this.image = image;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + age;
		result = prime * result + ((category == null) ? 0 : category.hashCode());
		result = prime * result + (int) (contactNumber ^ (contactNumber >>> 32));
		result = prime * result + ((firstName == null) ? 0 : firstName.hashCode());
		result = prime * result + ((gender == null) ? 0 : gender.hashCode());
		result = prime * result + ((image == null) ? 0 : image.hashCode());
		result = prime * result + ((lastname == null) ? 0 : lastname.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (age != other.age)
			return false;
		if (category == null) {
			if (other.category != null)
				return false;
		} else if (!category.equals(other.category))
			return false;
		if (contactNumber != other.contactNumber)
			return false;
		if (firstName == null) {
			if (other.firstName != null)
				return false;
		} else if (!firstName.equals(other.firstName))
			return false;
		if (gender == null) {
			if (other.gender != null)
				return false;
		} else if (!gender.equals(other.gender))
			return false;
		if (image == null) {
			if (other.image != null)
				return false;
		} else if (!image.equals(other.image))
			return false;
		if (lastname == null) {
			if (other.lastname != null)
				return false;
		} else if (!lastname.equals(other.lastname))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", firstName=" + firstName + ", lastname=" + lastname + ", age=" + age
				+ ", gender=" + gender + ", contactNumber=" + contactNumber + ", category=" + category + ", password="
				+ password + ", image=" + image + "]";
	}

}
