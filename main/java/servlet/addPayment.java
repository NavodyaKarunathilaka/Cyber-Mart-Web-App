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


@WebServlet("/addPayment")
public class addPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public addPayment() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Payment pay = new Payment();
		pay.setName(request.getParameter("name"));
		pay.setAddress(request.getParameter("address"));
		pay.setEmail(request.getParameter("email"));
		pay.setMobileNumber(request.getParameter("mobileNumber"));
		pay.setZipcode(request.getParameter("zipCode"));
		pay.setCreditCardName(request.getParameter("cardname"));
		pay.setCardNumber(request.getParameter("cardno"));
		pay.setCvv(request.getParameter("cvv"));
		pay.setExpYear(request.getParameter("expyear"));
		
		paymentService service = new paymentService();
		service.createPayment(pay);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("payhome.jsp");
		
		dispatcher.forward(request, response);
		
	}

}
