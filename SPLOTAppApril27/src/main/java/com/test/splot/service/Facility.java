/**
 * 
 */
package com.test.splot.service;

import java.io.FileNotFoundException;
import java.util.*;

import javax.annotation.PostConstruct;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

import com.test.splot.model.IPerson;

/**
 * @author Tahseen
 *
 */
public class Facility implements ApplicationContextAware {
	private ApplicationContext ctx;
	private String faciltyName;
	private int numOfLots;
	ISpace lot;

	private ArrayList<ISpace> allLots;
	private HashSet<Integer> lotsReserved = new HashSet<Integer>();

	/**
	 * @return the allLots
	 */
	public ArrayList<ISpace> getAllLots() {
		if (allLots == null) {
			allLots = new ArrayList<ISpace>();
		}

		return allLots;
	}
	/**
	 * @return the lot
	 */
	public ISpace getLot() {
		return lot;
	}
	@PostConstruct
	public void init_setAllLots() throws FileNotFoundException{
		addLots(numOfLots);	
	}
	/**
	 * @return the faciltyName
	 */
	public String getFaciltyName() {
		return faciltyName;
	}
	/**
	 * @param faciltyName the faciltyName to set
	 */
	public void setFaciltyName(String faciltyName) {
		this.faciltyName = faciltyName;
	}
	/**
	 * @param lot the lot to set
	 */
	public void setLot(ISpace lot) {
		this.lot = lot;
	}
	/**
	 * @return the total number of lots in this facility
	 */
	public int getNumOfLots() {
		return getAllLots().size();
	}
	/**
	 * @param addNumLots
	 * add lots in the facility
	 * @throws FileNotFoundException 
	 */
	public void addLots(int addNumLots) throws FileNotFoundException {
		//insert new lots into arrayList		
		for(int i = 1; i <= addNumLots; i++){
			ISpace lot = (Lot) ctx.getBean("lotBean");
			lot.setLotNumber(i);
			lot.ReleaseSpot();
			getAllLots().add(lot);
		}

		System.out.println("Lots updated: " + addNumLots);
	}
	/**
	 * @param removeNumLots
	 * subtract lots from the facility
	 */
	public void removeLots(int removeNumLots) {		
		//subtract existing lots from arrayList
		for(int i = 0; i < removeNumLots; i++){
			if(allLots.get(allLots.size()).getIsReserved() == true){
				System.out.println("Cannot perform remove operation: "
						+ "lot " + (allLots.size()+1) + " still reserved!");
				break;
			}
			allLots.remove(allLots.size());
		}
		numOfLots = allLots.size();
		System.out.println("After remove operation, number of Lots: " + allLots.size());
	}
	/**
	 * @param newNumOfLots 
	 * size of facility is changed to newNumOfLots
	 */
	public void setNumOfLots(int newNumOfLots) {		
		this.numOfLots = newNumOfLots;		
	}
	/**
	 * @return the number of lots reserved
	 */
	public int getNumLotsReserved() {
		return lotsReserved.size();
	}
	/**
	 * @return the number of lots that are available
	 */
	public int getNumLotsAvailable() {
		return (allLots.size() - lotsReserved.size());
	}

	public void reserveLot(int lotNumber, IPerson driver) {
		if(lotNumber > 0 && lotNumber < allLots.size() + 1) { 
			if(allLots.get(lotNumber - 1).ReserveSpot(driver) == 0) {	
				//Subtracting 1 to match with the ArrayList index
				lotsReserved.add(lotNumber);
			} else System.out.println("Failed to reserve lot!");
		} else System.out.println("Error: No such lot as " + lotNumber + "!");
	}

	public void releaseLot(int lotNumber) {
		if(lotNumber > 0 && lotNumber < allLots.size() + 1 && allLots.get(lotNumber-1).getIsReserved()) { 
			allLots.get(lotNumber - 1).ReleaseSpot();	
			//Subtracting 1 to match with the ArrayList index
			System.out.println("Lot " + lotNumber + " is now empty.");
			lotsReserved.remove(lotNumber);
		} else System.out.println("Error: No such lot as " + lotNumber + " that is reserved!");
	}

	public void editNameOfPerson(int lotNumber, String newNameOfPerson) {
		if(allLots.get(lotNumber-1).editNameOfPerson(newNameOfPerson) == 0)
			System.out.println("Lot " + lotNumber + " is now reserved by " + newNameOfPerson);
		else System.out.println("Failed to edit name!");
	}

	public void editArrivalTime(int lotNumber, Calendar reserveTime) {
		if(allLots.get(lotNumber - 1).editReserveTime(reserveTime) == 0)
			System.out.println("Lot " + lotNumber + " has been re-reserved starting at " + reserveTime.getTime());
		else System.out.println("Failed to edit reservation time!");
	}

	public String toString(){
		return lotsReserved.toString();
	}

	public HashSet<Integer> getLotsReserved (){
		return lotsReserved;
	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		ctx = applicationContext;
	}
}
