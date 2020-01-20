package com.cognizant.teacherStudentConnect.model;

import java.io.Serializable;

public class Student implements Serializable {

	String studentId;
	String studentName;
	String specialization;
	String batch;
	int noOfDocuments;
	String imageCode;

	public Student(String studentId, String studentName, String specialization, String batch, int noOfDocuments,
			String imageCode) {
		super();
		this.studentId = studentId;
		this.studentName = studentName;
		this.specialization = specialization;
		this.batch = batch;
		this.noOfDocuments = noOfDocuments;
		this.imageCode = imageCode;
	}

	public Student(String studentId, String studentName, String specialization, String batch, int noOfDocuments) {
		super();
		this.studentId = studentId;
		this.studentName = studentName;
		this.specialization = specialization;
		this.batch = batch;
		this.noOfDocuments = noOfDocuments;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getSpecialization() {
		return specialization;
	}

	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}

	public String getBatch() {
		return batch;
	}

	public void setBatch(String batch) {
		this.batch = batch;
	}

	public int getNoOfDocuments() {
		return noOfDocuments;
	}

	public void setNoOfDocuments(int noOfDocuments) {
		this.noOfDocuments = noOfDocuments;
	}

	public String getImageCode() {
		return imageCode;
	}

	public void setImageCode(String imageCode) {
		this.imageCode = imageCode;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((batch == null) ? 0 : batch.hashCode());
		result = prime * result + ((imageCode == null) ? 0 : imageCode.hashCode());
		result = prime * result + noOfDocuments;
		result = prime * result + ((specialization == null) ? 0 : specialization.hashCode());
		result = prime * result + ((studentId == null) ? 0 : studentId.hashCode());
		result = prime * result + ((studentName == null) ? 0 : studentName.hashCode());
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
		Student other = (Student) obj;
		if (batch == null) {
			if (other.batch != null)
				return false;
		} else if (!batch.equals(other.batch))
			return false;
		if (imageCode == null) {
			if (other.imageCode != null)
				return false;
		} else if (!imageCode.equals(other.imageCode))
			return false;
		if (noOfDocuments != other.noOfDocuments)
			return false;
		if (specialization == null) {
			if (other.specialization != null)
				return false;
		} else if (!specialization.equals(other.specialization))
			return false;
		if (studentId == null) {
			if (other.studentId != null)
				return false;
		} else if (!studentId.equals(other.studentId))
			return false;
		if (studentName == null) {
			if (other.studentName != null)
				return false;
		} else if (!studentName.equals(other.studentName))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Student [studentId=" + studentId + ", studentName=" + studentName + ", specialization=" + specialization
				+ ", batch=" + batch + ", noOfDocuments=" + noOfDocuments + ", imageCode=" + imageCode + "]";
	}

}
