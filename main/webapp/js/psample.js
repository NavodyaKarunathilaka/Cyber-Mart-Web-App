(function () {
    'use strict';

    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.querySelectorAll('.needs-validation');

    // Loop over them and prevent submission
    Array.prototype.slice.call(forms)
        .forEach(function (form) {
            form.addEventListener('submit', function (event) {
                var currentYear = new Date().getFullYear();
                var expYearField = document.getElementById('expYear');
                var expYear = parseInt(expYearField.value);
                var cvvField = document.getElementById('cvv');
                var cvv = cvvField.value;
                var cardNumberField = document.getElementById('cardNumber');
                var cardNumber = cardNumberField.value.replace(/\s/g, ''); // Remove spaces
                var emailField = document.getElementById('email');
                var email = emailField.value;

                // Email validation: Check if '@' symbol is present
                if (!email.includes('@')) {
                    alert("Email must contain an '@' symbol.");
                    emailField.focus();
                    event.preventDefault();
                    return;
                }

                // Check card number length and prefix
                if (cardNumber.length < 13 || cardNumber.length < 16 || isNaN(cardNumber)) {
                    alert("Card number must be between 13 and 16 digits.");
                    cardNumberField.focus();
                    event.preventDefault();
                    return;
                }

                // Check prefix for Visa and MasterCard
                if (!/^4[0-9]{12}(?:[0-9]{3})?$/.test(cardNumber) && !/^(5[1-5][0-9]{14}|222[1-9][0-9]{12}|22[2-7][0-9]{13})$/.test(cardNumber)) {
                    alert("Card number must start with 4 for Visa or between 51-55 or 2221-2720 for MasterCard.");
                    cardNumberField.focus();
                    event.preventDefault();
                    return;
                }

                // Check expiration year
                if (expYear < currentYear) {
                    alert("Expiration year must be greater than or equal to the current year.");
                    expYearField.focus();
                    event.preventDefault();
                    return;
                }

                // Check CVV is digits and has valid length (3 digits)
                var cvvPattern = /^\d{3}$/; // Allow 3 digits for CVV
                if (!cvvPattern.test(cvv)) {
                    alert("CVV must be 3 digits.");
                    cvvField.focus();
                    event.preventDefault();
                    return;
                }

                // If form is invalid, prevent submission
                if (!form.checkValidity()) {
                    event.preventDefault();
                    event.stopPropagation();
                }

                form.classList.add('was-validated');
            }, false);
        });
})();
