<!--
  Yun Kim
  WLAC COS 963
  WEB APPLICATION USING ASP.NET
  Project 1: Build the Quotation Application
  Sep. 15, 2016
-->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex02Quotation.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Price quotation</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Price quotation</h1>
        <main>
            <label for="salesPrice_txtbox">Sales price</label>
            <asp:TextBox ID="salesPrice_txtbox" runat="server" Font-Bold="True" Width="185px"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="required_salesprice" 
                runat="server" 
                ErrorMessage="Required" 
                ControlToValidate="salesPrice_txtbox" 
                ForeColor="red"
                EnableClientScript="false">
            </asp:RequiredFieldValidator>
            <asp:RangeValidator 
                ID="range_salesprice" 
                runat="server" 
                ErrorMessage="Sales Price must be between 10 and 1000" 
                ControlToValidate="salesPrice_txtbox"
                MinimumValue="10"
                MaximumValue="1000"
                Type="double"
                ForeColor="red"
                EnableClientScript="false">
            </asp:RangeValidator>

            <!------------------------------------------------------------------------------------------------------------------>

            <label for="discountPercent_txtbox">Discount percent</label>
            <asp:TextBox ID="discountPercent_txtbox" runat="server" Width="185px"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="required_discountpercent" 
                runat="server" 
                ErrorMessage="Required" 
                ControlToValidate="discountPercent_txtbox" 
                ForeColor="red"
                EnableClientScript="false">
            </asp:RequiredFieldValidator> 
            <asp:RangeValidator 
                ID="range_discountpercent" 
                runat="server" 
                ErrorMessage="Discount Percent must be between 10 and 50" 
                ControlToValidate="discountPercent_txtbox"
                MinimumValue="10"
                MaximumValue="50"
                ForeColor="red"
                Type="double"
                EnableClientScript="false">
            </asp:RangeValidator>

            <!------------------------------------------------------------------------------------------------------------------>

            <label for="discountAmount_label">Discount amount</label>
            <asp:Label ID="discountAmount_label" runat="server"></asp:Label>

            <!------------------------------------------------------------------------------------------------------------------>

            <label for="totalPrice_label">Total price</label>
            <asp:Label ID="totalPrice_label" runat="server"></asp:Label>

            <!------------------------------------------------------------------------------------------------------------------>

            <asp:Button ID="calculate_button" runat="server" Text="Calculate" OnClick="calculate_button_Click" />

            <!------------------------------------------------------------------------------------------------------------------>

        </main>
    </form>
</body>
</html>
