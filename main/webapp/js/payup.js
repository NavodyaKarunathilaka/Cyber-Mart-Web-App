function validateForm() {
    var cardNumber = document.getElementById("cardNumber").value.replace(/\s/g, ''); // Remove spaces
    var expYear = document.getElementById("expYear").value;
    var cvv = document.getElementById("cvv").value;

    // Check if card number is valid
    if (cardNumber.length < 13 || cardNumber.length < 16 || isNaN(cardNumber)) {
        alert("Card number must be between 13 and 16 digits.");
        return false; // Prevent form submission
    }

    // Check card number prefix
    if (!/^4[0-9]{12}(?:[0-9]{3})?$/.test(cardNumber) && !/^(5[1-5][0-9]{14}|222[1-9][0-9]{12}|22[2-7][0-9]{13})$/.test(cardNumber)) {
        alert("Card number must start with 4 for Visa or between 51-55 or 2221-2720 for MasterCard.");
        return false; // Prevent form submission
    }

    // Check if expiration year is valid
    var currentYear = new Date().getFullYear();
    if (expYear < currentYear) {
        alert("Expiration year must be greater than or equal to the current year.");
        return false; // Prevent form submission
    } else if (expYear > currentYear + 20) { // Optional: limit to 20 years in the future
        alert("Expiration year cannot be more than 20 years in the future.");
        return false; // Prevent form submission
    }

    // Check if CVV is only digits and has a valid length
    if (!/^\d+$/.test(cvv)) {
        alert("CVV must contain only digits.");
        return false; // Prevent form submission
    } else if (cvv.length < 3 || cvv.length > 4) { // Allow 3 digits for CVV
        alert("CVV must be 3 digits long.");
        return false; // Prevent form submission
    }

    return true; // Allow form submission
}
