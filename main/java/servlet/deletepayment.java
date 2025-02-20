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


@WebServlet("/deletepayment")
public class deletepayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public deletepayment() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Payment pay = new Payment();
		pay.setEmail(request.getParameter("email"));
		
		paymentService service = new paymentService();
		service.deletePayment(pay);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("readpayment");
		
		dispatcher.forward(request, response);
	}

}
