/**
 * 
 */
package com.test.splot.service;

import java.util.Calendar;

import com.test.splot.model.IPerson;

/**
 * @author Tahseen
 *
 */
public interface ISpace {
	
	public IPerson getDriver();
	
	public void setDriver(IPerson driver);
	
	public void setLotNumber(int lotNumber);
	
	public int getLotNumber();
	
	public Boolean getIsReserved();
	
	public int ReserveSpot(IPerson driver);
	
	public void ReleaseSpot();
	
	public String getNameOfPerson();
	
	public int editNameOfPerson(String nameOfPerson);
	
	public Calendar getReserveTime();
	
	public int editReserveTime(Calendar reserveTime) ;
}
