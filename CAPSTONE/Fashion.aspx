<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fashion.aspx.cs" Inherits="CAPSTONE.Fashion" %>

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
                    <h1>Fashion</h1>
     
                    <img src="https://ik.imagekit.io/pzvnaziyh/Fashion-1_ks8F5pwkyl.webp?ik-sdk-version=javascript-1.4.3&updatedAt=1669801726204" />
        <p>Price : &#x20b9; 1000</p>
            <button type="button" class="btn btn-success">BuyNow</button>
           <button type="button" class="btn btn-primary">Add To Cart</button>

                </div>
                <div class="col-6">
                    
     
                      <img src="https://ik.imagekit.io/pzvnaziyh/Fashion-2_iVgXEDYf2.webp?ik-sdk-version=javascript-1.4.3&updatedAt=1669801741708" />
       <p>Price : &#x20b9; 500</p>
            <button type="button" class="btn btn-success">BuyNow</button>
           <button type="button" class="btn btn-primary">Add To Cart</button>

                </div>
            </div>
            
        </div>
    </form>
</body>
</html>
