/**
 * 
 */
package com.test.splot.service;

import java.util.Calendar;
import java.util.GregorianCalendar;

import com.test.splot.model.IPerson;

/**
 * @author Tahseen
 *
 */

public class Lot implements ISpace {
	int lotNumber;
	Boolean isReserved;
	private IPerson driver;
	private Calendar reserveTime = new GregorianCalendar();	
	
	/**
	 * @return the driver
	 */
	public IPerson getDriver() {
		return driver;
	}
	/**
	 * @param driver the driver to set
	 */
	public void setDriver(IPerson driver) {
		this.driver = driver;
	}
	/**
	 * @param lotNumber the lotNumber to set
	 */
	public void setLotNumber(int lotNumber) {
		this.lotNumber = lotNumber;
	}
	/**
	 * @return the lotNumber
	 */
	public int getLotNumber() {
		return lotNumber;
	}
	/**
	 * @param isReserved the isReserved to set
	 */
/*	public void setReserved(boolean isReserved) {
		this.isReserved = isReserved;
	}
	*/
	/**
	 * @return the isReserved
	 */
	public Boolean getIsReserved() {
		return isReserved;
	}
	/**
	 * @param isReserved is set
	 * @param nameOfPerson is set
	 * @param reserveTime is set 
	 */
	public int ReserveSpot(IPerson driver) {
		if(isReserved == false) {
			this.isReserved = true;
			this.driver = driver;
			return 0;
		}
		System.out.print("Lot " + lotNumber + " is already reserved! ");
		return -1;
	}
	/**
	 * @param isReserved is UnSet
	 * @param nameOfPerson is UnSet
	 * @param reserveTime is UnSet
	 */
	public void ReleaseSpot() {
		this.isReserved = false;
		this.driver = null;
		this.reserveTime.clear();		
	}
	/**
	 * @return the nameOfPerson
	 */
	public String getNameOfPerson() {
		if(this.isReserved == false){
			System.out.println("This lot is empty!");
			return null;
		}
		return driver.getFirstName();
	}
	/**
	 * @param nameOfPerson the nameOfPerson to set
	 */
	public int editNameOfPerson(String nameOfPerson) {
		if(isReserved == false) {
			System.out.print("Make a Reservation on Lot " + lotNumber + " first!");			
			return -1;
		}
		this.driver.setFirstName(nameOfPerson);
		return 0;
	}
	/**
	 * @return the reserveTime
	 */
	public Calendar getReserveTime() {
		if(isReserved == false) 
			System.out.println("This lot is empty!");

		return reserveTime;
	}
	/**
	 * @param reserveTime the reserveTime to set
	 */
	public int editReserveTime(Calendar reserveTime) {
		if(isReserved == false) {
			System.out.print("Make a Reservation on Lot " + lotNumber + " first! ");			
			return -1;
		}
		this.reserveTime = reserveTime;
		return 0;
	}
}