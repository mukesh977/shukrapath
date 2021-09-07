<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>

<style>
	.mail-template h4 {
		margin-bottom: 10px;

	}

	.mail-template h4 strong {
		color: #a4730e;

	}

	.mail-template p {
		background-color: #fbfbfb;
		padding: 15px 20px;
		border: 1px solid #f9f9f9;
		font-size: 15px;
		line-height: 24px;
		text-align: justify;
	}

	.mail-template ul {
		padding: 0;
		margin-top: 10px;

	}

	.mail-template ul li {
		padding-bottom: 10px;
		list-style: none;

	}

	.mail-template ul li span {
		font-weight: 600;
		color: #a4730e;
		margin-right: 5px
	}

	.mail-salutaion {
		color: #a4730e;
		font-size: 30px;
		text-transform: uppercase;
		font-weight: 600;
	}
</style>

<body>
	<div class="mail-template">
		<h4 class="mail-greetings">
			Hello, <br>
			<strong> {{ucfirst($data['name'])}} </strong> has applied online.
		</h4>		

		<ul>
			<li> <span>Full Name:</span> {{ $data['name'] }}</li>
			<li> <span>Date Of Birth:</span> {{ $data['date_of_birth'] }}</li>
			<li> <span>Father Name:</span> {{ $data['father_name'] }}</li>
			<li> <span>Mother Name:</span> {{ $data['mother_name'] }}</li>
			<li> <span>Grandfather Name:</span> {{ $data['grandfather_name'] }}</li>
		</ul>
		<span class="mail-salutaion">See all info in <a href="{{ route('home') }}">Shukrapath Dashboard</a> Thank You !!</span>
	</div>
</body>

</html>