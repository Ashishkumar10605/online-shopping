
$(function(){
//	solving active menu problems
	switch(menu)
	{
		case 'About Us':
			   $('#about').addClass('active');
			   break;
		case 'Contact Us':
			   $('#contact').addClass('active');
			   break;
		case 'view Products':
			   $('#listProducts').addClass('active');
			   break;
		default :
			$('#home').addClass('active');
		   break;
	}
})