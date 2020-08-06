<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoryUpdateUi.aspx.cs" Inherits="StockDBApp.UI.CategoryUpdateUi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
   
<link href="../Content/css/shop-homepage.css" rel="stylesheet" />
  
    



 
</head>
<body>
    <form id="form1" runat="server">
        
          <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">Stock Management System</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="HomeUI.aspx">
                            Home
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.aspx">About</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="contactUs.aspx">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
   <div>
      <br />
        <table style="width:100%">
            <tr>
                <td style="width:100%" align ="center"> </td>
            </tr>

            <tr>
                <td style="width:100%" align ="center">
                    <p style="font-size: 25px">Category Update</p>
                </td>
            </tr>
         </table>
        <br />
        <br />
        <table style="width:100%">
            <tr>
                <td style="width:45%" align ="right"><asp:Label ID="CategoryNameLabel" runat="server" Text="Name" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
                <td style="width:55%" align ="left"><asp:TextBox ID="categoryNameUpdateTextBox" runat="server" Font-Size="X-Large"></asp:TextBox></td>
             

            </tr>
            </table>
            <table style="width: 100%">
                <tr>
                    <td style="width: 50%" align="center">
                        <asp:HiddenField ID="idHiddenField" runat="server" />
                    </td>
                </tr>   
        </table>

        <table style="width:100%">
            <tr>
                <td style="width:45%" align ="right"> </td>
                <td style="width:55%" align ="left"><asp:Button ID="categoryUpdateSaveButton" runat="server" Text="Save" Font-Size="X-Large" OnClick="categoryUpdateSaveButton_OnClick" Font-Bold="True" /></td>
            </tr>
        </table>
         <table style="width:100%">
            <tr>
                <td style="width:45%" align ="right"> </td>
                <td style="width:55%" align ="left"><asp:Label ID="outputLabel" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:Label></td>
            </tr>
        </table>
         <br />
       
          <br />
             <p>
                                    <a href="CatagorySetupUI.aspx" class="btn btn-info btn-sm">
                                        <i class="fa fa-arrow-circle-left"></i>Back to Category Page
                                    </a>
                                    </p>
  
         <p>
                                    <a href="HomeUI.aspx" class="btn btn-info btn-sm">
                                        <i class="fa fa-arrow-circle-left"></i>Back to Home
                                    </a>
                                    </p>
        
                 
                
                          <br/> <footer class="py-3 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">&copy; <%: DateTime.Now.Year %> Stock Management System</p>
      </div>
    
    </footer>
          </div>
    </form>
</body>
</html>
