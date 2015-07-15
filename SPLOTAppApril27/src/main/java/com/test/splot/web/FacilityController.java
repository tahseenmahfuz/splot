package com.test.splot.web;

import java.io.*;
import java.util.*;

import net.glxn.qrgen.QRCode;
import net.glxn.qrgen.image.ImageType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.splot.model.Customer;
import com.test.splot.model.IPerson;
import com.test.splot.service.Facility;
import com.test.splot.service.ISpace;

@Controller
public class FacilityController {

	@Autowired
	Facility downtownFacility;

	@RequestMapping(value="/downtown", method=RequestMethod.GET)
	public String listCustomers(ModelMap model) throws FileNotFoundException
	{
		for(ISpace lot:downtownFacility.getAllLots()){
			//	if(lot.getDriver() == null)	//Remove the if statement, to make the webapp completely dependent (and functional) with the beaglebone
			lot.ReleaseSpot();
		}  

		/*//////////////remove following lines while connecting to the bone//////////////
		FileReader file = new FileReader("C:/Users/Tahseen/Desktop/splotWebDev/SPLOTAppApril27/lotsReserved2.txt");    
		try{
			Scanner sc = new Scanner(file);
			int i = 0;
			String a = "";
			while(sc.hasNext())
			{	
				if(!(a = sc.next()).equals("E")) {
					System.out.println("Spot " + (i+1) + " is reserved");
					downtownFacility.getAllLots().get(i).ReserveSpot(null); 
				}
				i++;
			}
			System.out.println("Parsed through " + i + " spots");
			sc.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}		
		///////////////remove above lines while connecting to the bone////////////*/

		String sentence;
		String modifiedSentence;

		try {
			/*//////////////UNcomment below lines while connecting to the bone//////////////
			Socket clientSocket = new Socket("172.17.62.232", 8888);	//or hostname or IP localhost 
			DataOutputStream outToServer = new DataOutputStream(clientSocket.getOutputStream());
			BufferedReader inFromServer = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));

			sentence = "a";
			outToServer.write(sentence.getBytes());
			modifiedSentence = inFromServer.readLine();	//if all spots are available, just send a " "(space) from the bone
			System.out.println("FROM SERVER: " + modifiedSentence);

			clientSocket.close();
			///////////////UNcomment above lines while connecting to the bone/////////////*/

			///////////////remove following lines while connecting to the bone//////////////
			modifiedSentence = "0 1 5 11"; 

			List<String> list = new ArrayList<String>();
			System.out.println("list size -> " + list.size());
			for(int i = 0; i < 12; i++){
				list.add(i, "false");
			}
			System.out.println("list size -> " + list.size());
			///////////////remove above lines while connecting to the bone//////////////

			List<String> list_fromServer = Arrays.asList(modifiedSentence.split("\\s"));
			System.out.println("List_fromServer size -> " + list_fromServer.size());
			System.out.println("List_fromServer -> " + list_fromServer.toString());

			int foo;
			for (int i = 0; i < list_fromServer.size() && list_fromServer.size() != 0; i++) {
				foo = Integer.parseInt(list_fromServer.get(i));
				list.set(foo, "true");
				downtownFacility.getAllLots().get(foo).ReserveSpot(null);				
			}

			System.out.println("List -> " + list.toString());
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("Custom Message: Server not alive!");
		}		

		model.addAttribute("lots", downtownFacility.getAllLots());
		return "listReservations";		
	}

	@RequestMapping(value="/downtown/reserve", method = RequestMethod.GET)
	public String createCustomer(ModelMap model)
	{
		Customer customer = new Customer();
		model.addAttribute(customer);
		return "reserveLot";
	}

	@RequestMapping(value="/downtown/reserve", method = RequestMethod.POST)
	public String reserveLot(@ModelAttribute("customer") Customer customer, BindingResult result)
	{
		if (result.hasErrors()) 
			return "reserveLot";

		downtownFacility.reserveLot(customer.getLotNumber(), customer);

		File fileName = new File("C:/Users/Tahseen/Desktop/splotWebDev/SPLOTAppApril27/CustomerReservations.txt");
		//Write (or append) the customer details to the file
		try {
			PrintWriter output = new PrintWriter(new BufferedWriter(new FileWriter(fileName, true))); //change to false if want overwrite 
			output.write("\r\n\r\n" + "Name: " + customer.getFirstName() + " ");
			output.write(customer.getLastName() + "\r\n");
			output.write("Lot Reserved: " + String.valueOf(customer.getLotNumber())+ "\r\n");
			output.write("Email Address: " + customer.getEmailAddress());

			output.close();
		} catch (IOException e) {
			System.out.println(e);
		}

		return "ReservationSuccess";
	}

	@RequestMapping(value="/downtown/customers", method=RequestMethod.GET)
	public String listAllCustomers(ModelMap model)
	{	
		HashSet<Integer> lotsReserved = downtownFacility.getLotsReserved();
		ArrayList<ISpace> allLots = downtownFacility.getAllLots();
		HashMap<Integer, IPerson> reservationList = new HashMap<Integer, IPerson>(); 

		for(int lotNumber: lotsReserved) {
			reservationList.put(lotNumber, allLots.get(lotNumber-1).getDriver());
		}

		model.addAttribute("reservationList", reservationList);
		return "listCustomers";		
	}

	@RequestMapping(value="/downtown/cancel", method = RequestMethod.GET)
	public String removeCustomer(ModelMap model)
	{
		Customer customer = new Customer();
		model.addAttribute(customer);
		return "cancelReservation";
	}

	@RequestMapping(value="/downtown/cancel", method = RequestMethod.POST)
	public String releaseLot(@ModelAttribute("customer") Customer customer, BindingResult result)
	{
		if (result.hasErrors()) 
			return "reserveLot";

		downtownFacility.releaseLot(customer.getLotNumber());
		//return "redirect:/downtown";
		return "CancellationSuccess";
	}
	/*	
	@RequestMapping(value="/downtown/downtown/reserve", method = RequestMethod.GET)
	public String reserveLot_bug(@ModelAttribute("customer") Customer customer)
	{
		return "redirect:/downtown/reserve";
	}
	 */

	@RequestMapping(value="/booking", method=RequestMethod.GET)
	public String blueBooking(ModelMap model) throws Exception
	{
		for(ISpace lot:downtownFacility.getAllLots()){
			//	if(lot.getDriver() == null)	//Remove the if statement, to make the webapp completely dependent (and functional) with the beaglebone
			lot.ReleaseSpot();
		}  

		String modifiedSentence = "";
		///////////////remove following lines while connecting to the bone//////////////
		FileReader file = new FileReader("C:/Users/Tahseen/Desktop/splotWebDev/SPLOTAppApril27/lotsReserved.txt");    
		try{
			Scanner sc = new Scanner(file);
			
			while(sc.hasNext())
			{	
				modifiedSentence += sc.next();
				modifiedSentence += " ";
			}
		//	System.out.println("Parsed through " + i + " spots");
			sc.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}		
		///////////////remove above lines while connecting to the bone////////////*/

	//	String sentence;

		try {
			/*//////////////UNcomment below lines while connecting to the bone//////////////
			Socket clientSocket = new Socket("172.17.62.232", 8888);	//or hostname or IP localhost 
			DataOutputStream outToServer = new DataOutputStream(clientSocket.getOutputStream());
			BufferedReader inFromServer = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));

			sentence = "a";
			outToServer.write(sentence.getBytes());
			modifiedSentence = inFromServer.readLine();	//if all spots are available, just send a " "(space) from the bone
			System.out.println("FROM SERVER: " + modifiedSentence);

			clientSocket.close();
			///////////////UNcomment above lines while connecting to the bone/////////////*/

			///////////////remove following lines while connecting to the bone//////////////
		//	modifiedSentence = "0 2 3 8 10 11"; 

			List<String> list = new ArrayList<String>();
			//System.out.println("list size -> " + list.size());
			for(int i = 0; i < 12; i++){
				list.add(i, "false");
			}
			//System.out.println("list size -> " + list.size());
			///////////////remove above lines while connecting to the bone/////////////*/

			List<String> list_fromServer = Arrays.asList(modifiedSentence.split("\\s"));
			//System.out.println("List_fromServer size -> " + list_fromServer.size());
			//System.out.println("List_fromServer -> " + list_fromServer.toString());

			int foo;
			for (int i = 0; i < list_fromServer.size() && list_fromServer.size() != 0; i++) {
				foo = Integer.parseInt(list_fromServer.get(i));
				list.set(foo, "true");
				downtownFacility.getAllLots().get(foo).ReserveSpot(null);				
			}

			//System.out.println("List -> " + list.toString());
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("Custom Message: Server not alive!");
		}		

		for(ISpace lot:downtownFacility.getAllLots()){
			if(lot.getIsReserved())	
				model.addAttribute("lot" + String.valueOf(lot.getLotNumber()), 1);
			else model.addAttribute("lot" + String.valueOf(lot.getLotNumber()), 0);
		}

		model.addAttribute("lots", downtownFacility.getAllLots());
		Customer customer = new Customer();
		model.addAttribute(customer);
		return "booking";		
	}

	@RequestMapping(value="/booking", method = RequestMethod.POST)
	public String blueReserveLot(@ModelAttribute("customer") Customer customer, BindingResult result) throws Exception
	{
		if (result.hasErrors()) 
			return "booking";

		downtownFacility.reserveLot(customer.getLotNumber(), customer);

		File fileName = new File("C:/Users/Tahseen/Desktop/splotWebDev/SPLOTAppApril27/CustomerReservations.txt");
		//Write (or append) the customer details to the file
		try {
			PrintWriter output = new PrintWriter(new BufferedWriter(new FileWriter(fileName, false))); //change to false if want overwrite 
			output.write("\r\n\r\n" + "Name: " + customer.getFirstName() + " ");
			output.write(customer.getLastName() + "\r\n");
			output.write("Lot Reserved: " + String.valueOf(customer.getLotNumber())+ "\r\n");
			output.write("Email Address: " + customer.getEmailAddress());

			output.close();
		} catch (IOException e) {
			System.out.println(e);
		}

		/*//////////////UNcomment below lines while connecting to the bone//////////////
		String sentence;
		String modifiedSentence;

		try {
			Socket clientSocket = new Socket("172.17.62.232", 8888);	//or hostname or IP localhost 
			DataOutputStream outToServer = new DataOutputStream(clientSocket.getOutputStream());
			BufferedReader inFromServer = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));

			//remove the following hard coded value to go live!
			//sentence = "c 4 Haque";	
			
			sentence = "c" + " " + String.valueOf(customer.getLotNumber()) + " " + customer.getFirstName();

			outToServer.write(sentence.getBytes());
			modifiedSentence = inFromServer.readLine();	//if all spots are available, just send a " "(space) from the bone
			System.out.println("FROM SERVER: " + modifiedSentence);

			clientSocket.close();				

			System.out.println("QR code -> " + modifiedSentence);
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("Custom Message: Server not alive!");
		}		
		///////////////UNcomment above lines while connecting to the bone/////////////*/



		return "services";
	}

	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String blueHome(ModelMap model)
	{
		//return "index";	
		return "redirect:/";
	}

	@RequestMapping(value="/services", method=RequestMethod.GET)
	public String blueServices(ModelMap model)
	{
		String modifiedSentence = "1111";	//comment out this line while connecting to the bone
		model.addAttribute("QRcode", modifiedSentence);
		return "services";		
	}

	@RequestMapping(value="/about", method=RequestMethod.GET)
	public String blueAbout(ModelMap model)
	{
		return "about";		
	}

	@RequestMapping(value="/booking2", method=RequestMethod.GET)
	public String blueBooking2(ModelMap model)
	{
		return "booking";		
	}

	@RequestMapping(value="/contact", method=RequestMethod.GET)
	public String blueContact(ModelMap model)
	{
		return "contact";		
	}	
}
