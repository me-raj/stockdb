<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSalesTwoDateUI.aspx.cs" Inherits="StockManagementSystem.UI.ViewSalesTwoDateUI" %>

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
        <div align="center">
            
                        <h3>View Sales</h3>
                 
                     
                   
                    <h5 ><asp:Label ID="outputMsgLabel" runat="server" Text=""></asp:Label></h5> 
                    <div ><asp:Label ID="Label1" runat="server" Text="From Date" CssClass="col-md-4 control-label"></asp:Label></div>
                     <div >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="fromDateTextBox" runat="server" CssClass="form-control margin-bottom " type="date" Width="294px"></asp:TextBox></div>
                    
                    <div class="form-group"><asp:Label ID="Label2" runat="server" Text="To Date" CssClass="col-md-4 control-label"></asp:Label></div>
                     <div class="col-md-8"><asp:TextBox ID="toDateTextBox" runat="server"  CssClass="form-control margin-bottom " type="date" Width="283px"></asp:TextBox></div>
                   
                  
                   <asp:GridView ID="sellGridView" runat="server" CssClass="table table-bordered table-responsive table-hover success">
                        <Columns>
                        <asp:TemplateField HeaderText="Sl" HeaderStyle-Width="5%" HeaderStyle-HorizontalAlign="Left">
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                   </asp:GridView>
      
                     
                   



                        <div >
                        &nbsp;<asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_Click" />
                        </div>
                        </div>
        <br/>  <br/>  <br/>  <br/>
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
  
    </form>
</body>
</html>
