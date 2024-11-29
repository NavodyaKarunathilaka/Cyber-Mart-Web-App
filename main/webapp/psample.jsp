<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Billing and Payment</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktE8qitBRzN3ujHFnuhQacsGHcYz9XZm7K3aVOqm2" crossorigin="anonymous">
    <link rel="stylesheet" href="css/psample.css">
     
    <style>
        <link rel="stylesheet" href="CSS/bootstrap.min.css">
    </style>
</head>
<body>

<div class="form-container">
    <form class="needs-validation" novalidate action="addPayment" method="post">
        <!-- Billing Address Section -->
        <h4 class="form-title">Payment Details</h4>

        <div class="form-group">
            <label for="name" class="form-label">Name:</label>
            <input type="text" class="form-control" id="name" name="name" required>
            <div class="invalid-feedback">
                Please enter your name.
            </div>
        </div>

        <div class="form-group">
            <label for="mobilenumber" class="form-label">Mobile Number:</label>
            <input type="text" class="form-control" id="mobilenumber" name="mobileNumber" required>
            <div class="invalid-feedback">
                Please enter a valid mobile number.
            </div>
        </div>

        <div class="form-group">
            <label for="email" class="form-label">Email:</label>
            <input type="text" class="form-control" id="email" name="email" required>
            <div class="invalid-feedback">
                Please enter a valid email address.
            </div>
        </div>

        <div class="form-group">
            <label for="address" class="form-label">Address:</label>
            <input type="text" class="form-control" id="address" name="address" required>
            <div class="invalid-feedback">
                Please enter your address.
            </div>
        </div>

        <div class="form-group">
            <label for="zipcode" class="form-label">Zip Code:</label>
            <input type="text" class="form-control" id="zipcode" name="zipCode" required>
            <div class="invalid-feedback">
                Please enter your zip code.
            </div>
        </div>

        <!-- Payment Section -->
        <h4 class="form-title">Card Details</h4>

        <div class="form-group">
            <label for="creditCardName" class="form-label">Name on Card:</label>
            <input type="text" class="form-control" id="creditCardName" name="cardname" required>
            <div class="invalid-feedback">
                Please enter the name on your card.
            </div>
        </div>

        <div class="form-group">
            <label for="cardNumber" class="form-label">Card Number:</label>
            <input type="text" class="form-control" id="cardNumber" name="cardno" required>
            <div class="invalid-feedback">
                Please enter your card number (16 digits).
            </div>
        </div>

        <div class="form-group">
            <label for="expYear" class="form-label">Expiration Year:</label>
            <input type="text" class="form-control" id="expYear" name="expyear" required>
            <div class="invalid-feedback">
                Please enter the expiration year.
            </div>
        </div>

        <div class="form-group">
            <label for="cvv" class="form-label">CVV:</label>
            <input type="text" class="form-control" id="cvv" name="cvv" pattern="\d{3,3}" maxlength="3" minlength="3" required>
            <div class="invalid-feedback">
                Please enter a valid CVV (3 digits).
            </div>
        </div>

        <!-- Submit Button -->
        <button type="submit" class="btn btn-submit w-100">Submit</button>
        	
    </form>
    
    <form action ="readpayment" method="post">

<button type="submit"class="btn btn-submit w-100">View Payment Details</button>

</form>
</div>

<!-- Bootstrap JS and validation script -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-wo6Lk49XcZv9Yl5vOnkpY/nH3DTkFB2ff93k6SFMyhsl+syvokl5q6PqYNaFIRy" crossorigin="anonymous"></script>
<script src="js/psample.js">
  
</script>

</body>
</html>
