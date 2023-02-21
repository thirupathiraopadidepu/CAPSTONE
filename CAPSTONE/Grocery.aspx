<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grocery.aspx.cs" Inherits="CAPSTONE.Grocery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-6">
                    <h1>Groceries</h1>
     
                    <img src="https://ik.imagekit.io/pzvnaziyh/Grocery-1_d7sHOWon06.webp?ik-sdk-version=javascript-1.4.3&updatedAt=1669801530276" />
       <p>Price : &#x20b9; 99</p>
           <button class="btn btn-success">BuyNow</button>
           <button type="button" class="btn btn-primary">Add To Cart</button>

                </div>
                <div class="col-6">
                    
     
                   <img src="https://ik.imagekit.io/pzvnaziyh/Grocery-2_O4dkNbtdt.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1669801553310" />
       <p>Price : &#x20b9; 500</p>
           <button type="button" class="btn btn-success">BuyNow</button>
           <button type="button" class="btn btn-primary">Add To Cart</button>

                </div>
            </div>
            
        </div>
        
        
    </form>
</body>
</html>
