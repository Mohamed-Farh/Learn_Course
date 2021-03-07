$(function() {
	

	// $("#upload_btn").on('click',function(e)
	//  {
	// 	e.preventDefault(); //stop page from reloading on click on botton 
	// 	if($("#upload_btn").attr('class') !="btn btn-success save_image")
	// 	{
 //    		$("#image_file").trigger('click');
 //    	}
 //    	else
 //    	{
 //    		//for making Submit
 //    		$("#form").submit();
 //    	}		
	//  });
	
	// $("#image_file").on('change',function()
	//  {
	//  	let image_value = $(this).val();
	//  	$("#upload_btn").html("<i class='fa fa-camera'></i> SAVE");
	//  	$("#upload_btn").attr('class', 'btn btn-success save_image');
	//  	$("#upload_btn").css('width','120px');
	//  });

	//form submit ajax
	// $("#form").on('submit', function(event)
	//  {
 //        event.preventDefault();
	// 	console.log("FFFFFFFFFFFFF");
	// 	$.ajax({
	// 		 url: "/edit-profile",
	// 		 type: "POST",
	// 		 data: new FormData(this),
	// 		 dataType: 'JSON',
	// 		 contentType: false, // you can also use multipart/form-data replace of false
	// 		 cache: false,
	// 		 processData: false,
			 
	// 		success:function(data)
	// 	     {
	// 		  $("#message").css('display', 'block');
	// 		  $("#message").text(data.message);
	// 		  $("#uploaded_image").html(data.uploaded_image);
	// 		 },
	// 	});
	//  });

	//Update Profile form submit ajax
	// $("#user_info_form").on('submit', function(event)
	//  {
 //        event.preventDefault();
	// 	$.ajax({
	// 		 url: "/edit-profile",
	// 		 type: "POST",
	// 		 data: new FormData(this),
	// 		 dataType: 'JSON',
	// 		 contentType: false, // you can also use multipart/form-data replace of false
	// 		 cache: false,
	// 		 processData: false,
			 
	// 		success:function(data)
	// 	     {
	// 		  $("#message").css('display', 'block');
	// 		  $("#message").text(data.message);
	// 		 },
	// 	});
	//  });




});