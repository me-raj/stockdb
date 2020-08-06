<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginUi.aspx.cs" Inherits="StockDBApp.UI.LoginUi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url(login4.jpg);">
    <form id="form1" runat="server">
    <div>
      <br />
        <br />
        <br />
        <br />
       
        <table style="width:100%">
            <tr>
                <td style="width:100%" align ="center"> </td>
            </tr>

            <tr>
                <td style="width:100%" align ="center">
                    <p style="font-size: 35px; font-family: 'Times New Roman', Times, serif; color: #FFFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Stock Management System</p>
                </td>
            </tr>

            <tr>
                <td style="width:100%" align ="center">
                    &nbsp;</td>
            </tr>
        </table>
        
        <br />
       
          <table style="width:100%">
            <tr>
                <td style="width:100%" align ="center">
                    <p style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter UserName & Password</p>
                </td>
            </tr>
        </table>
        
        <table style="width:100%">
            <tr>
                <td style="width:45%" align ="right"><asp:Label ID="UserNameLabel" runat="server" Text="User Name" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
                <td style="width:55%" align ="left"><asp:TextBox ID="UserNameTextBox" runat="server"  Font-Size="X-Large" style="margin-left: 18px" Width="246px" ></asp:TextBox></td>
            </tr>
        </table>

        <br />
        <table style="width:100%">
            <tr>
                <td style="width:45%" align ="right"><asp:Label ID="UserPasswordLabel" runat="server" Text="Password" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
                <td style="width:55%" align ="left"><asp:TextBox ID="UserPasswordTextBox" TextMode="Password" runat="server" Font-Size="X-Large" style="margin-left: 18px" Width="246px"></asp:TextBox></td>
            </tr>
        </table>
        <br />

        <table style="width:100%">
            <tr>
                <td style="width:45%" > </td>
                <td style="width:55%" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="LogInButton" runat="server" Text="Login"  OnClick="LogInButton_OnClick" Font-Bold="True" Font-Size="20px" /></td>
            </tr>
        </table>

        <br />
        <table style="width:100%">
            <tr>
                <td style="width:45%"  ></td>
                <td style="width:55%" ><asp:Label ID="OutputLabel" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:Label></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
