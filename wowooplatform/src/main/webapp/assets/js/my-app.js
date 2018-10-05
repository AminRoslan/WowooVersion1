$(function(){
	//solving active menu problem
	switch(menu){
		case 'Home':
			$('#home').addClass('active');
			break;
		case 'List Of Projects':
			$('#listOfProjects').addClass('active');
			break;
		case 'Wallet':
			$('#wallet').addClass('active');
			break;
		case 'KYC Info':
			$('#kycInfo').addClass('active');
			break;
	}
});