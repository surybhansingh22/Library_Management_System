<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="Home2.aspx.cs" Inherits="Library_Management_System.Home2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 627px;
            border: 1px solid #ffffff;
            background-color: #9AD0F4;
        }
        .auto-style11 {
            height: 26px;
        width: 312px;
        text-align: center;
    }
    .auto-style12 {
        height: 26px;
        width: 311px;
        text-align: center;
        color: #FFFFFF;
    }
    .auto-style13 {
        color: #FFFFFF;
    }
        .auto-style14 {
            height: 26px;
            width: 312px;
            text-align: center;
            border-radius: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <table class="auto-style10" align="center" style="margin: 0px auto 0px auto">
        <tr>
            <td class="auto-style12"><strong>Welcome</strong></td>
            <td class="auto-style14"><strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style13"></asp:Label>
                </strong></td>
        </tr>
    </table>

</asp:Content>
