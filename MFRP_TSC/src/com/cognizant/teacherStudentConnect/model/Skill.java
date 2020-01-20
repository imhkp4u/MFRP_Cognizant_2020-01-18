package com.cognizant.teacherStudentConnect.model;

import java.io.Serializable;

public class Skill implements Serializable {


	/**
	 * 
	 */
	private static final long serialVersionUID = 2813171265668544619L;
	String skillName;
	String competancyLevel;
	String intendedAudience;
	
	public Skill(String skillName, String competancyLevel, String intendedAudience) {
		super();
		this.skillName = skillName;
		this.competancyLevel = competancyLevel;
		this.intendedAudience = intendedAudience;
	}

	public String getSkillName() {
		return skillName;
	}

	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}

	public String getCompetancyLevel() {
		return competancyLevel;
	}

	public void setCompetancyLevel(String competancyLevel) {
		this.competancyLevel = competancyLevel;
	}

	public String getIntendedAudience() {
		return intendedAudience;
	}

	public void setIntendedAudience(String intendedAudience) {
		this.intendedAudience = intendedAudience;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((competancyLevel == null) ? 0 : competancyLevel.hashCode());
		result = prime * result + ((intendedAudience == null) ? 0 : intendedAudience.hashCode());
		result = prime * result + ((skillName == null) ? 0 : skillName.hashCode());
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
		Skill other = (Skill) obj;
		if (competancyLevel == null) {
			if (other.competancyLevel != null)
				return false;
		} else if (!competancyLevel.equals(other.competancyLevel))
			return false;
		if (intendedAudience == null) {
			if (other.intendedAudience != null)
				return false;
		} else if (!intendedAudience.equals(other.intendedAudience))
			return false;
		if (skillName == null) {
			if (other.skillName != null)
				return false;
		} else if (!skillName.equals(other.skillName))
			return false;
		return true;
	}
	
}
