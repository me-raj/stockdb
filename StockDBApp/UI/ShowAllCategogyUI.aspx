<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowAllCategogyUI.aspx.cs" Inherits="StockDBApp.UI.ShowAllCategogyUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="categoryGridView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="467px" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:TemplateField HeaderText="SL">
                   <ItemTemplate>
                       <asp:Label runat="server" Text='<%#Eval("Id") %>'></asp:Label>
                        
                   </ItemTemplate>
               </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                   <ItemTemplate>
                       <asp:Label runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                      <asp:HiddenField ID="idHiddenField" runat="server" Value='<%#Eval("Id") %>'/>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField>
                   <ItemTemplate>
                       <asp:LinkButton ID="updateLinkButton" runat="server" OnClick="updateLinkButton_OnClick">Update</asp:LinkButton>
                   </ItemTemplate>
               </asp:TemplateField>
           </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </div>
    </form>
</body>
</html>
