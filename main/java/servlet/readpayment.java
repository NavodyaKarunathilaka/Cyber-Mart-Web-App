package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Payment;
import services.paymentService;


@WebServlet("/readpayment")
public class readpayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public readpayment() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		paymentService service =new paymentService();
		ArrayList<Payment>Payment=service.getAllPayment();
		request.setAttribute("Payment", Payment);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("payview.jsp");
		
		
		dispatcher.forward(request, response);
	}

}
