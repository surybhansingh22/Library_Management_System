<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddBook2.aspx.cs" Inherits="Library_Management_System.AddBook2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
.auto-style10 {
    text-align: center;
}
.auto-style11 {
    width: 50%;
    border: 5px solid #FFFFFF;
    background-color: #9ad0f4;
        height: 130px;
    }
    .auto-style16 {
        width: 283px;
        height: 26px;
    }
    .auto-style17 {
        width: 283px;
        height: 26px;
        color: #FFFFFF;
    }
    .auto-style18 {
        height: 33px;
        color: #FFFFFF;
    }
    .auto-style19 {
        font-weight: bold;
        border-radius:10px;
    }
    .auto-style22 {
        width: 578px;
        height: 130px;
        border: 5px solid #FFFFFF;
        background-color: #9AD0F4;
        border-radius:15px;
    }
    .auto-style28 {
    width: 283px;
    height: 32px;
    color: #FFFFFF;
}
.auto-style29 {
        width: 384px;
        height: 32px;
    }
.custom-button {
    background-color: #9AD0F4;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

    .custom-button:hover {
        background-color: lightgreen;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="auto-style10">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <br />
    <br />

        <br />

        <table class="auto-style22" style="margin: 0px auto 0px auto">
            <tr>
                <td class="auto-style28"><strong>Book ID</strong></td>
                <td class="auto-style29">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Can Not be Blanked" ValidationGroup="MyValidation"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>Book Name</strong></td>
                <td class="auto-style29">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Can Not be Blanked" ValidationGroup="MyValidation"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>Author</strong></td>
                <td class="auto-style29">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="Can Not be Blanked" ValidationGroup="MyValidation"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>Sublect</strong></td>
                <td class="auto-style29">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox8" ErrorMessage="Can Not be Blanked" ValidationGroup="MyValidation"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18" colspan="2">&nbsp;
                    <strong>
                <asp:Button ID="Button1" runat="server"  BorderColor="White" BorderStyle="Solid" BorderWidth="1px" CssClass="custom-button" Text="Add Book"  ValidationGroup="MyValidation" OnClick="Button1_Click" />
                </strong>
                </td>
            </tr>
        </table>

</div>
</asp:Content>
