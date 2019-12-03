<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	font-family: Arial;
	font-size: 17px;
	padding: 8px;
	background-color: lightblue;
}

* {
	box-sizing: border-box;
}

.row {
	display: -ms-flexbox; 
	display: flex;
	-ms-flex-wrap: wrap; 
	flex-wrap: wrap;
	margin: 0 -16px;
}



.col-25, .col-50, .col-75 {
	padding: 0 16px;
}



input[type=text] {
	width: 30%;
	margin-bottom: 20px;
	padding: 12px;
	border: 1px solid black;
	border-radius: 3px;
}

label {
	margin-bottom: 10px;
	display: block;
}

.icon-container {
	margin-bottom: 20px;
	padding: 7px 0;
	font-size: 44px;
}

.btn {
	background-color: #4CAF50;
	color: white;
	padding: 12px;
	margin: 20px 0;
	border: none;
	width: 50%;
	border-radius: 3px;
	cursor: pointer;
	font-size: 17px;
}

.btn:hover {
	background-color: #45a049;
}

</style>
</head>
<body>

	<form action="DeleteCurrentOrderFromDB"></form>
	<h1>Payment</h1>
	
	<label for="fname">Accepted Cards</label>
	<div class="icon-container">
		<i class="fa fa-cc-visa" style="color: navy;"></i> <i
			class="fa fa-cc-amex" style="color: blue;"></i> <i
			class="fa fa-cc-mastercard" style="color: red;"></i> <i
			class="fa fa-cc-discover" style="color: orange;"></i>
	</div>
	<form action="CardDetailsToDB">

		<label for="cname">Name on Card</label> <input type="text" id="cname"
			name="cardName" placeholder="cardName"> <label
			for="ccnum">Credit card number</label> <input type="text" id="ccnum"
			name="cardNumber" placeholder="1111-2222-3333-4444"> <label
			for="expmonth">Exp Month</label> <input type="text" id="expmonth"
			name="expMonth" placeholder="Expired mouth">
		<div class="row">
			<div class="col-50">
				<label for="expyear">Exp Year</label> <input type="text"
					id="expyear" name="expYear" placeholder="Expired year">
			</div>
			<div class="col-50">
				<label for="cvv">CVV</label> <input type="text" id="cvv" name="cvv"
					placeholder="cvv">
			</div>
		</div>

		 <a
			href="
DeleteCurrentOrderFromDB?userId=${sessionScope.currentUser.getId()}"
			class="btn btn-success" style="width: 100%">Confirm Order</a>
	</form>
</body>
</html>