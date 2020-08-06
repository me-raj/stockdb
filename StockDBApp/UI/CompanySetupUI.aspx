<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanySetupUI.aspx.cs" Inherits="StockManagementSystem.UI.CompanySetupUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Stock Management System</title>
   
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
       


 
       
      
     <div class="container" align="center">
          
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4>Company Setup</h4>
                    </div>
                    <div >
                        <div class="col-md-20 margin-bottom">
                            <asp:Label ID="outputMsgLabel" runat="server" Text=""></asp:Label>
                      
                        <div class="form-group" style="padding-right: 442px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Company Name" CssClass="col-md-4 control-label"></asp:Label>
                        </div>
                        <div class="col-md-8">
                            <asp:TextBox ID="nameTextBox" runat="server" CssClass="form-control margin-bottom "></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTextBox" ErrorMessage="Please input company name"></asp:RequiredFieldValidator>
                        </div>
                        <div class="btn btn-light">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click"/>
                        </div>

                        <!-- GTRID VIEW HERE LOAD -->
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:GridView ID="companyGridView" runat="server" Width="21%" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                                      CssClass="table table-bordered table-responsive" CellPadding="2" ForeColor="Black" GridLines="None" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" >
                            <AlternatingRowStyle BackColor="PaleGoldenrod"/>
                            <FooterStyle BackColor="Tan"/>
                            <HeaderStyle BackColor="Tan" Font-Bold="True"></HeaderStyle>
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center"/>
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite"/>
                            <SortedAscendingCellStyle BackColor="#FAFAE7"/>
                            <SortedAscendingHeaderStyle BackColor="#DAC09E"/>
                            <SortedDescendingCellStyle BackColor="#E1DB9C"/>
                            <SortedDescendingHeaderStyle BackColor="#C2A47B"/>
                        </asp:GridView>

                        <!-- PANEL BODY END-->
                        <div class="panel-footer">
                            <div class="col-md-3">
                                <div class="pull-left">
                                    <p>
                                    <a href="HomeUI.aspx" class="btn btn-info btn-sm">
                                        <i class="fa fa-arrow-circle-left"></i>Back to Home
                                    </a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                </div>  </div>
     <footer class="py-3 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">&copy; <%: DateTime.Now.Year %> Stock Management System</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="../Content/vendor/jquery/jquery.min.js"></script>
    <script src="../Content/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        
        
    </form>
</body>
</html>
