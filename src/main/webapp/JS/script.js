console.log("jQuery loaded:", typeof $ !== "undefined");

$(document).ready(function() {
    console.log("Document is ready..."); // Debugging log
		
		 $('#reg-form').on('submit', function(event) {
        event.preventDefault();
        console.log("Form submission event triggered...");  // Debugging log

        let form = new FormData(this);

		$("#submit-btn").hide();
		$("#loader").show();

		 $.ajax({
            url: "Register-Servlet",
            type: 'POST',
            data: form,
            
            success: function (data, textStatus, jqXHR) {
		        console.log("AJAX Success:", data);
		        $("#submit-btn").show();
				$("#loader").hide();
				
				if(data.trim()==='done')
				{
					swal("Registered Successfully1 We are redirecting to the Login page.")
						.then((value) => {
						  window.location="login_page.jsp";
						});
				}
				else
				{
					swal(data);
				}
		    },
		    error: function (jqXHR, textStatus, errorThrown) {
		        console.log("AJAX Error:", textStatus);
		        $("#submit-btn").show();
				$("#loader").hide();
				
				swal("Something went wrong...try again")
						
		    },
		    
		    processData: false,
            contentType: false
		  });
    });
});
                                                    
                               

                        
                        
     
