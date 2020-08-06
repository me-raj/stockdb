<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemSetupUI.aspx.cs" Inherits="StockManagementSystem.UI.ItemSetupUI" %>

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
           
                        <h3>Item Setup</h3>
               
                   

                    <h5 ><asp:Label ID="outputMsgLabel" runat="server" Text=""></asp:Label></h5> 

                     <div class="form-group"> <asp:Label ID="Label1" runat="server" Text="Category" CssClass="col-md-4 control-label"></asp:Label></div>
                     <div class="col-md-8"><asp:DropDownList ID="categoryDropDownList" runat="server" CssClass="form-control margin-bottom " OnSelectedIndexChanged="categoryDropDownList_SelectedIndexChanged"></asp:DropDownList>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="categoryDropDownList" ErrorMessage="Please select category name"></asp:RequiredFieldValidator>
                            </div>
                    
                    <div class="form-group"><asp:Label ID="Label2" runat="server" Text="Company" ></asp:Label></div>
                     <div class="col-md-8"><asp:DropDownList ID="companyDropDownList" runat="server" CssClass="form-control margin-bottom " ></asp:DropDownList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="companyDropDownList" ErrorMessage="Please select company name"></asp:RequiredFieldValidator>
                            </div>
                    
                    <div class="form-group"><asp:Label ID="Label3" runat="server" Text="Item Name" CssClass="col-md-4 control-label"></asp:Label></div>
                     <div class="col-md-8"><asp:TextBox ID="itemTextBox" runat="server" CssClass="form-control margin-bottom "></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="itemTextBox" ErrorMessage="Please input item name"></asp:RequiredFieldValidator>
                            </div>
                    
                    <div class="form-group"><asp:Label ID="Label4" runat="server" Text="Reorder Level" CssClass="col-md-4 control-label"></asp:Label></div>
                     <div class="col-md-8"><asp:TextBox ID="reorderTextBox" runat="server" CssClass="form-control margin-bottom "></asp:TextBox></div>
                  
                    
                        <div class="btn-group  col-md-offset-3">
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" />
                        </div>
                  
                    <p>
                                    <a href="HomeUI.aspx" class="btn btn-info btn-sm">
                                        <i class="fa fa-arrow-circle-left"></i>Back to Home
                                    </a>
                                    </p>
        
                 
                       <div>  
                          <br/> <footer class="py-3 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">&copy; <%: DateTime.Now.Year %> Stock Management System</p>
      </div>
    
    </footer>

                  
   
    </form>
</body>
</html>
