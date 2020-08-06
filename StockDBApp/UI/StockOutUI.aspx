<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockOutUI.aspx.cs" Inherits="StockManagementSystem.UI.StockOutUI" %>

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

        <div class="container" >
           
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4>Stock Out</h4>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-10 margin-bottom">

                            <asp:HiddenField ID="idsHiddenField" Value='<%#Eval("Sl") %>' runat="server" />
                              <h5 style="color:red"><asp:Label ID="outputMsgLabel" runat="server" Text=""></asp:Label></h5> 
         <br />
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Company" CssClass="col-md-4 control-label"></asp:Label>
                                
                                <div class="col-md-8">
                                    <asp:DropDownList ID="companyDropDownList" runat="server" OnSelectedIndexChanged="companyDropDownList_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control margin-bottom ">
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="Item" CssClass="col-md-4 control-label"></asp:Label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="itemDropDownList" runat="server" CssClass="form-control margin-bottom"  OnSelectedIndexChanged="itemDropDownList_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server" Text="Reorder Level" CssClass="col-md-4 control-label"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="reorderTextBox" runat="server" CssClass="form-control margin-bottom "> </asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" Text="Available Quantity " CssClass="col-md-4 control-label"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="availableQty" runat="server" CssClass="form-control margin-bottom "> </asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label6" runat="server" Text="Stock out Quantity" CssClass="col-md-4 control-label"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="stockInTextBox" runat="server" CssClass="form-control margin-bottom "></asp:TextBox>
                                &nbsp;&nbsp;
                                    </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-8 col-sm-offset-3">
                                    <div class="pull-right">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="addButton" runat="server" Width="22%" Text="Add" OnClick="addButton_Click" CssClass="btn btn-default" />
                                    </div>
                                </div>

                            </div>
                            <hr />
                        </div>

                     

                        <asp:GridView ID="stockOutGridView" runat="server" Width="72%" CssClass="table table-bordered table-responsive table-hover success">
                            <Columns>
                                <asp:TemplateField HeaderText="Sl" HeaderStyle-Width="5%" HeaderStyle-HorizontalAlign="Left">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>

                          <h5 style="color:black"><asp:Label ID="msgQty" runat="server" Text=""></asp:Label></h5> 

                    </div>
               

                    <div class="panel-footer">


                     

                        <div class="btn-group  col-md-offset-3">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnSell" runat="server" Text="Sell" CssClass="btn btn-primary" OnClick="btnSell_Click"/>
                            <asp:Button ID="btnDamage" runat="server" Text="Damage" CssClass="btn btn-primary" OnClick="btnDamage_Click"/>
                            <asp:Button ID="btnLost" runat="server" Text="Lost" CssClass="btn btn-primary" OnClick="btnLost_Click" />
                        </div>
                        </div>
                    </div></div></div>
        <br/>
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
