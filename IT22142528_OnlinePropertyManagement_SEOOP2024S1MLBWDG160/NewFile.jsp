<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Payment page</title>

	<style>
		.error-message {
			color: red;
		}

		* {
			font-family: 'Poppins', sans-serif;
			margin: 0;
			padding: 0;
			box-sizing: border-box;
			outline: none;
			border: none;
			text-transform: capitalize;
			transition: all .2s linear;
		}

		.container {
			display: flex;
			justify-content: center;
			align-items: center;
			padding: 25px;
			min-height: 100vh;
			background: linear-gradient(90deg, #2ecc71 60%, #27ae60 40.1%);
		}

		.container form {
			padding: 20px;
			width: 700px;
			background: #fff;
			box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
		}

		.container form .row {
			display: flex;
			flex-wrap: wrap;
			gap: 15px;
		}

		.container form .row .col {
			flex: 1 1 250px;
		}

		.container form .row .col .title {
			font-size: 20px;
			color: #333;
			padding-bottom: 5px;
			text-transform: uppercase;
		}

		.container form .row .col .inputBox {
			margin: 15px 0;
		}

		.container form .row .col .inputBox span {
			margin-bottom: 10px;
			display: block;
		}

		.container form .row .col .inputBox input {
			width: 100%;
			border: 1px solid #ccc;
			padding: 10px 15px;
			font-size: 15px;
			text-transform: none;
		}

		.container form .row .col .inputBox input:focus {
			border: 1px solid #000;
		}

		.container form .row .col .flex {
			display: flex;
			gap: 15px;
		}

		.container form .row .col .flex .inputBox {
			margin-top: 5px;
		}

		.container form .row .col .inputBox img {
			height: 34px;
			margin-top: 5px;
			filter: drop-shadow(0 0 1px #000);
		}

		.container form .submit-btn {
			width: 100%;
			padding: 12px;
			font-size: 17px;
			background: #27ae60;
			color: #fff;
			margin-top: 5px;
			cursor: pointer;
		}

		.container form .submit-btn:hover {
			background: #2ecc71;
		}

		/* Set the background image for the body */
		

		/* Style the header */
		.header {
			background-color: #ffefdbb7;
			/* Background color */
			color: #d9de6a;
			/* Text color */
			display: flex;
			/* Use flex layout for alignment */
			align-items: center;
			justify-content: space-between;
			/* Space between the logo and navigation */
			padding: 10px 20px;
			/* Padding around the header */
		}

		/* Style the left logo */
		.logo-left {
			width: 120px;
			height: 85px;
		}

		/* Style the right logo */
		.logo-right {
			width: 70px;
			height: 70px;
		}

		/* Style the navigation menu */
		.nav {
			list-style-type: none;
			align-items: center;
			overflow: hidden;
			margin: 0;
			padding: 0;
		}

		.nav li {
			float: left;
			/* Horizontal alignment of list items */
			margin: 0;
			padding: 0;
		}

		.nav li a {
			display: block;
			color: solid black;
			/* Text color for menu items */
			text-align: center;
			padding: 14px 16px;
			text-decoration: none;
		}

		.nav li a:hover {
			background-color: #fbfbfb;
			/* Background color on hover */
		}

		/* Add a horizontal line */
		.line1 {
			border-top: 2px solid rgb(0, 0, 0);
		}

		/* Style the home image */
		.imghome {
			display: block;
			margin-left: auto;
			margin-right: auto;
		}

		/* Style the footer */
		footer {
			background-color: #ffefdbb7;
			color: #010101;
			padding: 20px;
			display: flex;
			justify-content: space-between;
			align-items: flex-start;
			flex-wrap: wrap;
		}

		/* Style footer section headers and paragraphs */
		.footer-section h3 {
			font-size: 18px;
			margin-bottom: 10px;
		}

		.footer-section p {
			font-size: 14px;
			margin: 0;
		}

		/* Style social media icons */
		.social-icons {
			display: flex;
			gap: 10px;
			margin-top: 10px;
		}

		.social-icons a img {
			width: 30px;
			height: 30px;
		}

		/* Style the vertical tabs section */
		.vertical-tabs {
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
			margin-top: 20px;
		}

		/* Style individual tabs in the vertical tab section */
		.tab {
			background-color: #ffefdbf1;
			color: #010101;
			padding: 10px 20px;
			margin: 10px;
			border-radius: 5px;
			text-align: center;
		}

		.tab a {
			text-decoration: none;
			color: #010101;
			font-weight: bold;
			font-size: 16px;
		}

		/* Style for a logo */
		.logo {
			display: block;
			margin-left: auto;
			margin-right: auto;
		}

		/* Style for a slideshow */
		.Slideshow {
			max-width: 500px;
			margin: 0 auto;
			/* This centers the element horizontally */
			text-align: center;
			/* This centers the content inside the slideshow */
		}

		.mySlides {
			display: none;
		}

		.view {
			color: rebeccapurple;
		}
	</style>
</head>

<body>


	<from action="SaveServlet" method="post">
		<div class="container">

			<form action="SaveServlet" method="post">

				<div class="row">

					<div class="col">

						<h3 class="title">user details</h3>

						<div class="inputBox">
							<span>fullname :</span>
							<input type="text" name="name" placeholder="Full Name">
						</div>
						<div class="inputBox">
							<span>email :</span>
							<input type="email" name="email" placeholder="example@example.com">
						</div>
						<div class="inputBox">
							<span>PassportID :</span>
							<input type="text" name="passportid" placeholder="passport id">
						</div>
						<div class="inputBox">
							<span>amount :</span>
							<input type="text" name="amount" placeholder="">
						</div>



					</div>


					<div class="col">

						<h3 class="title">payment</h3>

						<div class="inputBox">
							<span>cards accepted :</span>
							<img src="./images/card_img.png" alt="">
						</div>
						<div class="inputBox">
							<span>cardname :</span>
							<input type="text" name="cardname" placeholder="enter name">
						</div>
						<div class="inputBox">
							<span>cardnumber :</span>
							<input type="text" name="cardnumber" placeholder="1111-2222-3333-4444" maxlength="12">
						</div>
						<div class="inputBox">
							<span>exp month :</span>
							<input type="text" name="expmonth" placeholder="january">
						</div>

						<div class="flex">
							<div class="inputBox">
								<span>exp year :</span>
								<input type="text " name="expyear" placeholder="2023" maxlength="4" required>
							</div>
							<div class="inputBox">
								<span>CVV :</span>
								<input type="password" placeholder="1234" maxlength="3" required>
							</div>
						</div>

					</div>

				</div>

				<input type="submit" value="proceed to checkout" class="submit-btn">

			</form>

		</div>





		<input type="submit" value="proceed to checkout" class="submit-btn">
		</form>
		<div class="view">
			<a href="ViewServlet">view</a>
		</div>
		</div>

		<script>
			document.getElementById('checkoutForm').addEventListener('submit', function (event) {
				// Reset error messages
				document.querySelectorAll('.error-message').forEach(function (el) {
					el.innerText = '';
				});

				// Perform validation
				const cardNumber = document.querySelector('input[name="cardNumber"]').value;
				const expYear = document.querySelector('input[name="expYear"]').value;

				let hasError = false;

				if (!/^\d{4}-\d{4}-\d{4}-\d{4}$/.test(cardNumber)) {
					document.querySelector('.cardNumber-error').innerText = 'Invalid card number format (e.g., 1111-2222-3333-4444)';
					hasError = true;
				}

				if (isNaN(expYear) || expYear.length !== 4) {
					document.querySelector('.expYear-error').innerText = 'Invalid expiry year (e.g., 2023)';
					hasError = true;
				}

				if (hasError) {
					event.preventDefault();
				}
			});
		</script>



</body>

</html>