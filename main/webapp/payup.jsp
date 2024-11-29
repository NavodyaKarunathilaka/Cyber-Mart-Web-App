<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/bootstrap.min.css">
    <title>Update Payment</title>
    <link rel="stylesheet" href="css/payup.css">
    <style>
       <link rel="stylesheet" href="CSS/bootstrap.min.css">
    </style>
    <script src="js/payup.js">
       
    </script>
</head>
<body>
    <div class="container">
        <h2 class="mt-4">Update Payment Details</h2>
        
        <!-- Update payment form -->
        <form action="updatepayment" method="post" onsubmit="return validateForm();">
            
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" class="form-control" id="name" name="name" value="${param.name}" required>
            </div>
            
            <div class="form-group">
                <label for="mobileNumber">Mobile Number:</label>
                <input type="text" class="form-control" id="mobileNumber" name="mobileNumber" value="${param.mobileNumber}" required>
            </div>
            
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" class="form-control" id="address" name="address" value="${param.address}" required>
            </div>
            
            <div class="form-group">
                <label for="zipcode">Zip Code:</label>
                <input type="text" class="form-control" id="zipcode" name="zipcode" value="${param.zipcode}" required>
            </div>
            
            <div class="form-group">
                <label for="creditCardName">Credit Card Name:</label>
                <input type="text" class="form-control" id="creditCardName" name="creditCardName" value="${param.creditCardName}" required>
            </div>
            
            <div class="form-group">
                <label for="cardNumber">Card Number:</label>
                <input type="text" class="form-control" id="cardNumber" name="cardNumber" value="${param.cardNumber}" required>
            </div>
            
            <div class="form-group">
                <label for="expYear">Expiration Year:</label>
                <input type="text" class="form-control" id="expYear" name="expYear" value="${param.expYear}" required>
            </div>
            
            <div class="form-group">
                <label for="cvv">CVV:</label>
                <input type="text" class="form-control" id="cvv" name="cvv" value="${param.cvv}" required>
            </div>
            
            <!-- Hidden field for email (cannot be updated) -->
            <input type="hidden" name="email" value="${param.email}">
            
            <button type="submit" class="btn-update">Update Payment</button>
        </form>
    </div>
</body>
</html>
