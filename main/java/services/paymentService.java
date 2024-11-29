package services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import model.Payment;
import utils.DBConnection;

public class paymentService {
	
	public void createPayment(Payment pay) {
		
		try {
			
			String query = "insert into payment value('"+pay.getEmail()+"','"+pay.getName()+"','"+pay.getMobileNumber()+"','"+pay.getAddress()+"','"+pay.getZipcode()+"','"+pay.getCreditCardName()+"','"+pay.getCardNumber()+"','"+pay.getExpYear()+"','"+pay.getCvv()+"')";
			Statement statement = DBConnection.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	// Display all customers
    public ArrayList<Payment> getAllPayment(){
        ArrayList<Payment> listpay = new ArrayList<Payment>();
        try {
            String query = "SELECT * FROM payment";
            Statement statement = DBConnection.getConnection().createStatement();
            ResultSet rs = statement.executeQuery(query);
            
         while(rs.next()) {
                Payment pay = new Payment();
                pay.setEmail(rs.getString("email"));
                pay.setName(rs.getString("name"));
                pay.setMobileNumber(rs.getString("mobileNumber"));
                pay.setAddress(rs.getString("address"));
                pay.setZipcode(rs.getString("zipCode"));
                pay.setCreditCardName(rs.getString("creditCardName"));
                pay.setCardNumber(rs.getString("cardNumber"));
                pay.setExpYear(rs.getString("expYear"));
                pay.setCvv(rs.getString("cvv"));
                
                listpay.add(pay);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return listpay; // Moved outside the loop
    }
    
    //delete
    public void deletePayment(Payment pay) {
    	
    	try {
    		String query = "delete from payment where email = '"+pay.getEmail()+"'";
    		Statement statement = DBConnection.getConnection().createStatement();
    		statement.executeUpdate(query);
    		
		} catch (Exception e) {
			e.printStackTrace();
		}
    }
    
    // Update feedback based on email
    public void updatePayment(Payment payment) {
        try {
            // Corrected SQL update query
            String query = "UPDATE payment SET name = '"
                + payment.getName() + "', mobileNumber= '"
                + payment.getMobileNumber() + "', address = '"
                + payment.getAddress() + "', zipcode = '"
                + payment.getZipcode() + "', creditCardName = '"
                + payment.getCreditCardName() + "', cardNumber = '"
                + payment.getCardNumber() + "', expYear= '"
                + payment.getExpYear()+ "', cvv = '"
                + payment.getCvv() + "' WHERE email = '"
                + payment.getEmail() + "'";

            Statement statement = DBConnection.getConnection().createStatement();
            statement.executeUpdate(query);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
	
}
