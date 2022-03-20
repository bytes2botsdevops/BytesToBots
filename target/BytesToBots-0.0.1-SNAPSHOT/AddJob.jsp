<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #fd6802;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body>

<h1>Checkout PhonePe accept-payments-v4</h1>
<p>Pre-Internship, we cordially invite engineering students, freshers, engineering graduates to join our Network to acquire Real Time Industry Experience and Exposure.<br/> 
<a href="https://www.facebook.com/neojobhunter"> Join us on Facebook </a><br/>
<a href="https://www.youtube.com/channel/UCr1W4phAWQDIJbit__n-A8Q">Subscribe us on YouTube</a><br/></p>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="action_page.jsp">
      
        <div class="row">
          <div class="col-50">
            <h3>PhonePe</h3>
            <label for="mobileNumber"><i class="fa fa-institution"></i> Customer Mobile Number</label>
            <input type="text" id="mobileNumber" name="mobileNumber" placeholder="Mobile Number">
            <label for="emailID"><i class="fa fa-institution"></i> Customer Email ID</label>
            <input type="text" id="emailID" name="emailID" placeholder="Email ID">
            <label for="transactionMessage"><i class="fa fa-institution"></i> Transaction Message</label>
            <input type="text" id="transactionMessage" name="transactionMessage" placeholder="Transaction Message">
            <label for="transactionAmout"><i class="fa fa-envelope"></i> Transaction Amount</label>
            <input type="text" id="transactionAmout" name="transactionAmout" placeholder="Transaction Amount">
            <hr style="border: solid;">
            <label for="merchantId"><i class="fa fa-user"></i> Merchant ID</label>
            <input type="text" id="merchantId" name="merchantId" placeholder="UATMERCHANT">
            <label for="transactionId"><i class="fa fa-envelope"></i> Transaction ID</label>
            <input type="text" id="transactionId" name="transactionId" placeholder="Transaction ID">
            <label for="merchantUserId"><i class="fa fa-address-card-o"></i> Merchant UserID</label>
            <input type="text" id="merchantUserId" name="merchantUserId" placeholder="Merchant UserID">
            <label for="merchantOrderId"><i class="fa fa-institution"></i> Merchant Order ID</label>
            <input type="text" id="merchantOrderId" name="merchantOrderId" placeholder="Merchant Order ID">

		  </div>
          
        </div>
        <label>
          <input type="checkbox" name="sameadr"> I Agree to Terms & Conditions 
        </label>
        <input type="submit" value="Continue to checkout" class="btn">
      </form>
    </div>
  </div>
  <div class="col-25">
    <div class="container">
      <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b>4</b></span></h4>
      <p><a href="#">Product 1</a> <span class="price">$15</span></p>
      <p><a href="#">Product 2</a> <span class="price">$5</span></p>
      <p><a href="#">Product 3</a> <span class="price">$8</span></p>
      <p><a href="#">Product 4</a> <span class="price">$2</span></p>
      <hr>
      <p>Total <span class="price" style="color:black"><b>$30</b></span></p>
    </div>
  </div>
</div>

</body>
</html>
