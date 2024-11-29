function confirmDeletion(event) {
           event.preventDefault(); // Prevent form submission

           // Show confirmation message
           var userConfirmation = confirm("Are you sure you want to delete this detail?");
           
           if (userConfirmation) {
               // If user clicks "Yes", submit the form
               event.target.submit();
           }
           // If "No", form will not be submitted
       } //will not be submitted