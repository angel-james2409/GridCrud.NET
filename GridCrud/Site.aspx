<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Site.aspx.cs" Inherits="GridCrud.Site" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="customerId" 
  OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
 OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added.">
            <Columns>
                <asp:TemplateField HeaderText="customerName" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblcustomerName" runat="server" Text='<%# Eval("customerName") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtcustomerName" runat="server" Text='<%# Eval("customerName") %>'></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="pass" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblpass" runat="server" Text='<%# Eval("pass") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtpass" runat="server" Text='<%# Eval("pass") %>'></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>
                <asp:TemplateField HeaderText="walletAmt" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblwalletAmt" runat="server" Text='<%# Eval("walletAmt") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtwalletAmt" runat="server" Text='<%# Eval("walletAmt") %>'></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>
                <asp:TemplateField HeaderText="phoneNo" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblphoneNo" runat="server" Text='<%# Eval("phoneNo") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtphoneNo" runat="server" Text='<%# Eval("phoneNo") %>'></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>
                <asp:TemplateField HeaderText="addres" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lbladdres" runat="server" Text='<%# Eval("addres") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtaddres" runat="server" Text='<%# Eval("addres") %>'></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>

    <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150"/>
                
            </Columns>
        </asp:GridView>

<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
<tr>
    <td style="width: 150px">
       customerName:<br />
        <asp:TextBox ID="txtcustomerName" runat="server" Width="140" />
    </td>
    <td style="width: 150px">
        pass:<br />
        <asp:TextBox ID="txtpass" runat="server" Width="140" />
    </td>
    <td style="width: 150px">
        walletAmt:<br />
        <asp:TextBox ID="txtwalletAmt" runat="server" Width="140" />
    </td>
    <td style="width: 150px">
        phoneNo:<br />
        <asp:TextBox ID="txtphoneNo" runat="server" Width="140" />
    </td>
    <td style="width: 150px">
        addres:<br />
        <asp:TextBox ID="txtaddres" runat="server" Width="140" />
    </td>
    <td style="width: 100px">
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
    </td>
</tr>
</table>

        </div>
    </form>
</body>
</html>
