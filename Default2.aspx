<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <!-- Last Name -->
        <tr>
            <td>
                Last Name
            </td>
               
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="You must enter last name" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!-- First Name -->
        <tr>
            <td>
                First Name
            </td>
               
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
            <td>

            </td>
        </tr>
         <!-- Address -->
        <tr>
            <td>
                Address
            </td>
               
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address is required" ControlToValidate="txtAddress"></asp:RequiredFieldValidator> 
            </td>
        </tr>
        <!-- City -->
        <tr>
            <td>
                Enter City
            </td>
               
            <td>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="City is required" ControlToValidate="txtCity"></asp:RequiredFieldValidator> 
            </td>
        </tr>
        <!-- State -->
        <tr>
            <td>
                Enter State
            </td>
               
            <td>
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="State is required" ControlToValidate="txtState"></asp:RequiredFieldValidator> 
            </td>
        </tr>
        <!-- Zip -->
        <tr>
            <td>
                Enter Zip Code
            </td>
               
            <td>
                <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvZip" runat="server" ErrorMessage="Zip Code is required" ControlToValidate="txtZip"></asp:RequiredFieldValidator> 
                <asp:RegularExpressionValidator ID="revZip" runat="server" ErrorMessage="Not a valid Zip Code" ControlToValidate="txtZip" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
            </td>
        </tr>
         <!-- Phone -->
        <tr>
            <td>
                Enter Phone Number
            </td>
               
            <td>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="Phone Number is required" ControlToValidate="txtPhone"></asp:RequiredFieldValidator> 
            </td>
        </tr>
        <!-- Email -->
        <tr>
            <td>
                Email
            </td>
               
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator> 
                <asp:RegularExpressionValidator ID="refEmail" runat="server" ErrorMessage="Not a valid email" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!-- Password -->
        <tr>
            <td>
                Password
            </td>
               
            <td>
                 <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator> 
            </td>
        </tr>
        <!-- Confirm Password -->
        <tr>
            <td>
                Confirm Password
            </td>
               
            <td>
                 <asp:TextBox ID="txtConfirm" runat="server"></asp:TextBox>
            </td>
            <td>
                 <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" ControlToValidate="txtConfirm" ControlToCompare="txtPassword" ErrorMessage="Password is required" ControlValide="txtPassword"></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="cvConfirm" runat="server" ControlToValidate="txtConfirm" ControlToCompare="txtPassword" ErrorMessage="Your passwords don't match"></asp:CompareValidator>
            </td>
        </tr>
        <!-- Submit -->
        <tr>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Confirm" OnClick="btnSubmit_Click" />
            </td>
               
            <td>
                <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            </td>
                
            <td>

            </td>
        </tr>

    </table>
</asp:Content>

