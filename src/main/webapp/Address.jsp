<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<c:import url="Shared.jsp" />
<c:import url="Header.jsp" />
<script src="https://kit.fontawesome.com/9e7eeea313.js"></script>

</head>
<style>
body
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

.col-25,
.col-50,
.col-75 

.container {
  background-color: lightblue;
  padding: 45px 30px 10px 30px;

  border-radius: 8px;
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




</style>
<body>
	<h1 style="text-align:left ;font-family:Comic Sans MS, cursive, sans-serif  ">Delivery Address</h1>
         
         <form action="AddAddressToDB">   
          <div class="row">
              <div class="col-50">
         
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="firstname" placeholder="name">
            
            <br>
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="email">
            
            <br>
           <div class="form-row">
    <div class="form-group col-md-4">
      <label for="addressPhone"><i class="fa fa-phone"></i>Phone</label>
      <input type="text" class="form-control" name="Phone" placeholder="phoneNumber" maxlength="10">
           </div>
             </div>
             
                
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="Address">
            
            <br>
            
              <div class="col-20">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="city">

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="State">
              </div>
              <div class="col-50">
                <label for="Pincode">Pincode</label>
                <input type="text" id="Pincode" name="Pincode" placeholder="Pincode">
              </div>
            </div>
          </div>
          
          <div style="margin-left: 5px;" class="row">
				<div class="col-lg-12" style="text-align: center;">
				
					<button style="height: 40px;width: 200px;" class="btn btn-danger">
						<i class="fas fa-plus">Delivery Here!!</i>
						</button>
				</div>
		</div>
    </div>
 </div>
 </form>
</body>
</html>