package com.realestateedits.beans;

import java.io.Serializable;

public class Users implements Serializable
{

	private static final long serialVersionUID = -171177701579004222L;

	private String	userName;

	private String	password;

	private String	fullName;

	private String	emailId;

	private String	mobileNumber;

	public String getUserName()
	{
		return userName;
	}

	public void setUserName(String userName)
	{
		this.userName = userName;
	}

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

	public String getFullName()
	{
		return fullName;
	}

	public void setFullName(String fullName)
	{
		this.fullName = fullName;
	}

	public String getEmailId()
	{
		return emailId;
	}

	public void setEmailId(String emailId)
	{
		this.emailId = emailId;
	}

	public String getMobileNumber()
	{
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber)
	{
		this.mobileNumber = mobileNumber;
	}

	@Override
	public String toString()
	{
		StringBuilder builder = new StringBuilder();
		builder.append("Users [userName=");
		builder.append(userName);
		builder.append(", password=");
		builder.append(password);
		builder.append(", fullName=");
		builder.append(fullName);
		builder.append(", emailId=");
		builder.append(emailId);
		builder.append(", mobileNumber=");
		builder.append(mobileNumber);
		builder.append("]");
		return builder.toString();
	}

}
