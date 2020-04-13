<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Service</title>
<script type="text/javascript" src="script.js"></script>
<link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form name="myForm" action="CustomerLoginServlet" method="post">
      
        <div class="row">
          <div class="col-50">
            <h3 >Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" class="input1" id="fname" name="firstname"  required placeholder="John M. Doe">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" class="input1" id="email" name="email" required  placeholder="john@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" class="input1" name="address" required  placeholder="542 W. 15th Street">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" class="input1" name="city" required  placeholder="New York">

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" class="input1" id="state" name="state"  required placeholder="NY">
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" class="input1" id="zip" name="zip" required  placeholder="10001">
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment Accepted Cards&emsp;&emsp;&emsp;&emsp;&emsp;Amount</h3>
            <div class="icon-container">
            	<img src="gatewayimage.PNG" alt="image" width="150" required  height="50">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span style="color:orange;font-size: 50px">${amount}</span>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" class="input1" id="cname" name="cardname" placeholder="John More Doe" required>
            <label for="ccnum">Credit card number</label>
            <input type="text" class="input1" id="ccnum" name="cardnumber" required placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" class="input1" id="expmonth" name="expmonth" required  placeholder="September">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" class="input1" id="expyear" name="expyear" required  placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" class="input1" id="cvv" name="cvv" required  placeholder="352">
              </div>
            </div>
          </div>
          
        </div>
        <br>
        
        <input type="submit" value="Paynow" name="submit" class="btn">
        </form>
        <form action="CustomerLoginServlet" method="post">
        <div style="text-align: center;"><h3><span style="color:red;">(Or)</span></h3></div>
        <h3 style="color:navy;">UPI Payments</h3>
        <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" class="input1" id="fname" name="firstname1"  required placeholder="John M. Doe">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" class="input1" id="email" name="email1" required  placeholder="Enter your email">
        <b>UPI ID&emsp;&emsp;&emsp;</b><input required type="text" name="upiid" class="input2" size="30" placeholder="Enter your upi id">&emsp;&emsp;
        <input type="submit" value="Check" name="submit" style="background-color: green;padding:10px 20px;border-radius: 20px;">
      </form>
    </div>
</div>
</body>
</html>