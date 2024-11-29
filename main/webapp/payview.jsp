<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Payment Details</title>  <!-- Title for the browser tab -->
    
    <link rel="stylesheet" href="CSS/bootstrap.min.css">
    <link rel="stylesheet" href="css/payview.css">
    
    <!-- Custom CSS Styles -->
    <style>
        .Payment-card {
            margin-bottom: 20px; /* Spacing between cards */
        }
    </style>
    
    <!-- Adding JavaScript for delete confirmation -->
    <script src="js/payview.js">
       
    </script>
</head>
<body>
    <div class="container">
        <h2 class="mt-4">Payment List</h2>  <!-- Header title for the content -->

        <div class="row">
            <c:forEach var="pay" items="${Payment}">
                <div class="col-md-4">
                    <div class="card Payment-card">
                        <div class="card-body">
                            <p class="card-text">
                                <strong>Name:</strong> ${pay.name}<br>
                                <strong>Mobile Number:</strong> ${pay.mobileNumber}<br>
                                <strong>Address:</strong> ${pay.address}<br>
                                <strong>Zip Code:</strong> ${pay.zipcode}<br>
                                <strong>Credit Card Name:</strong> ${pay.creditCardName}<br>
                                <strong>Card Number:</strong> ${pay.cardNumber}<br>
                                <strong>Expiration Year:</strong> ${pay.expYear}<br>
                                <strong>CVV:</strong> ${pay.cvv}
                            </p>
                            <div class="d-flex justify-content-between align-items-center">
                            
                                <!-- Update Button -->
                                <a href="payup.jsp?email=${pay.email}&name=${pay.name}&mobileNumber=${pay.mobileNumber}&address=${pay.address}&zipcode=${pay.zipcode}&creditCardName=${pay.creditCardName}&cardNumber=${pay.cardNumber}&expYear=${pay.expYear}&cvv=${pay.cvv}" class="btn btn-update">
                                    Update
                                </a>
                                <!-- Separator between buttons -->
                                <div class="button-separator"></div>
                                
                                <!-- Delete Button -->
                                <form action="deletepayment" method="post" onsubmit="confirmDeletion(event)">
                                    <input type="hidden" name="email" value="${pay.email}">
                                    <button class="btn btn-delete" type="submit">Delete</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
