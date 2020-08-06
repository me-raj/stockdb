'<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CatagorySetupUI.aspx.cs" Inherits="StockManagementSystem.UI.CatagorySetupUI" EnableEventValidation = "false"%>

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
            <table style="width: 100%">
               

                <tr>
                    <td style="width: 100%" align="center">
                        <p style="font-size: 35px; font-family: 'Times New Roman', Times, serif; height: 41px;">Category Setup</p>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <table style="width: 100%; margin-top: 0px;">
                <tr>
                    <td style="width: 45%" align="right">
                        <asp:Label ID="CategoryNameLabel" runat="server" Text="Name" Font-Bold="False" Font-Names="Berlin Sans FB" Font-Size="X-Large"></asp:Label></td>
                    <td style="width: 55%" align="left">
                        <asp:TextBox ID="CategoryNameTextBox" runat="server" Font-Size="X-Large" Height="26px"></asp:TextBox>
                        
                    </td>
                </tr>
            </table>

            <br />

            <table style="width: 100%">
                <tr>
                    <td style="width: 45%" align="right"></td>
                    <td style="width: 55%" align="left">
                        <asp:Button ID="CategorySaveButton" runat="server" Text="Save" Font-Size="X-Large" OnClick="CategorySaveButton_OnClick" Font-Bold="True" Height="35px" /></td>
                </tr>
            </table>
            <table style="width: 100%">
                <tr>
                    <td style="width: 45%" align="right"></td>
                    <td style="width: 55%" align="left">
                        <asp:Label ID="OutputLabel" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:Label></td>
                </tr>
            </table>

            <br />
          


            <table style="width: 100%">
                <tr>
                    <td style="width: 100%" align="center">
                        <asp:GridView ID="CategoryListGridView" runat="server" Font-Names="Lucida Console" Font-Size="Large" AutoGenerateColumns="False" CellPadding="4" GridLines="None" ForeColor="#333333">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                        <asp:TemplateField HeaderText="SL">
                                            <itemtemplate>
                                               <%#Container.DataItemIndex +1 %>
                                             </itemtemplate>
                                        </asp:TemplateField>
                                       
                                <asp:TemplateField HeaderText="Name">
                                    <ItemTemplate>
                                        <asp:Label ID="CategoryName" runat="server" Text='<% #Eval("Name")%>'></asp:Label>
                                        <asp:HiddenField ID="idHiddenField" runat="server" Value='<% #Eval("Sl")%>' />
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>

                            <Columns>
                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="updateButton" runat="server" OnClick="updateButton_OnClick">Update</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>

                            <EditRowStyle BackColor="#999999" />

                            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                        </asp:GridView>
                    </td>


                </tr>
            </table>


        </div>
                    
 
              
                        <br/>
        <br/>
                      

                    
                      
                         &nbsp;&nbsp; &nbsp;&nbsp;   &nbsp;&nbsp; &nbsp;&nbsp;    &nbsp;&nbsp;    &nbsp;&nbsp; &nbsp;&nbsp;    &nbsp;&nbsp;     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      
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
</div> 

  
                    
                    </form>
</body>
</html>
