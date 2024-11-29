package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Payment;
import services.paymentService;


 
@WebServlet("/updatepayment")
public class updatepayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public updatepayment() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Create a feedback object and populate it with request parameters
        Payment pay = new Payment();
        pay.setName(request.getParameter("name"));
		pay.setAddress(request.getParameter("address"));
		pay.setMobileNumber(request.getParameter("mobileNumber"));
		pay.setZipcode(request.getParameter("zipcode"));
		pay.setCreditCardName(request.getParameter("creditCardName"));
		pay.setCardNumber(request.getParameter("cardNumber"));
		pay.setCvv(request.getParameter("cvv"));
		pay.setExpYear(request.getParameter("expYear"));
		pay.setEmail(request.getParameter("email"));

        // Call the service to update feedback in the database
        paymentService service = new paymentService();
        service.updatePayment(pay);

        // Redirect back to feedback display page after update
        RequestDispatcher dispatcher = request.getRequestDispatcher("readpayment");
        dispatcher.forward(request, response);
		
	}

}
