<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="NewBookReq.aspx.cs" Inherits="Library_Management_System.NewBookReq" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style11 {
        width: 578px;
        border: 5px solid #FFFFFF;
        background-color: #9AD0F4;
    }

    .auto-style14 {
        width: 283px;
    }

    .auto-style15 {
        color: #FFFFFF;
        width: 283px;
    }

    .auto-style20 {
        color: #FFFFFF;
        height: 25px;
        text-align: center;
    }

    .auto-style21 {
        text-align: center;
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

    
        .auto-style193 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style21">
    <div class="auto-style21">
        <br />
        <br />
    </div>
    <br />
    <br />
    <table class="auto-style11" style="margin: 0px auto 0px auto; width: 60%;">
        <tr>
            <td class="auto-style20" colspan="2"><strong>New Book Request</strong></td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Book Name</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ValidationGroup="BookRequest"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Author</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ValidationGroup="BookRequest"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Subject</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required" ValidationGroup="BookRequest"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style193" colspan="2">
                <asp:Button ID="Button3" runat="server" CssClass="custom-button" Text="Generate Request" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" OnClick="Button3_Click" ValidationGroup="BookRequest" />
            </td>
        </tr>
        </table>
</div>
</asp:Content>
