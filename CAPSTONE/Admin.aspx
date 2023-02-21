<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CAPSTONE.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Container">
            <div class="row">
                <div class="col-6">
                    <h1 style="padding:30px">Customers Data</h1>
                    <img style="border-radius:50px" src="https://ik.imagekit.io/pzvnaziyh/c-1_XDELMgZ9ob.webp?ik-sdk-version=javascript-1.4.3&updatedAt=1669954738784" />
                      <a href="https://thirustars.sharepoint.com/sites/demo2/_layouts/15/workbench.aspx" target="_blank">View Customers Data</a>
                </div> 
                <div class="col-6">
                    <h1 style="padding:30px">Products</h1>

                    <img style="border-radius:50px" src="https://ik.imagekit.io/pzvnaziyh/p-2_yHkyOlKMh.webp?ik-sdk-version=javascript-1.4.3&updatedAt=1669956062310" />
                      <a href="https://localhost:7241/swagger/index.html" target="_blank">View Products Data</a>
                    
                </div> 
                <div >
                    <h1 style="padding-left:375px">Products Data Through Angular</h1>

                    <img style="border-radius:60px; border-top-left-radius:60px; border-bottom-left-radius:60px; padding-left:375px;" src="https://ik.imagekit.io/pzvnaziyh/angular-1_PT5aUWKlY.webp?ik-sdk-version=javascript-1.4.3&updatedAt=1670310714277" /><br />
                      <a style="padding-left:400px;" href="http://localhost:4200/"target="_blank"> View Products Data Through Angular JSON</a>
                    
                </div> 
            </div>
        </div>
    </form>
</body>
</html>
