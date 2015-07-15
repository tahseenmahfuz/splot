/**
 * 
 */
package com.test.splot.model;

/**
 * @author Tahseen
 *
 */
public interface IPerson {
	public String getFirstName();
	public void setFirstName(String firstName);
	public String getLastName();
	public void setLastName(String lastName);
	public void setEmailAddress(String emailAddress);
	public int getLotNumber();
	public void setLotNumber(int lotNumber);
}
