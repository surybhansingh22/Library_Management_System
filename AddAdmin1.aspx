<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddAdmin1.aspx.cs" Inherits="Library_Management_System.AddAdmin1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            text-align: center;
        }

        .auto-style19 {
            width: 578px;
            height: 104px;
            border: 5px solid #FFFFFF;
            background-color: #9AD0F4;
        }

        .auto-style23 {
            width: 283px;
            height: 26px;
        }

        .auto-style24 {
            height: 26px;
        }

        .auto-style25 {
            width: 283px;
            height: 26px;
            color: #FFFFFF;
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

    <div class="auto-style18">
        <table class="auto-style19" style="margin: 0px auto 0px auto">
            <tr>
                <td class="auto-style25"><strong>Admin Name</strong></td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ValidationGroup="AddAdmin"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25"><strong>Admin ID</strong></td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ValidationGroup="AddAdmin"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25"><strong>Password</strong></td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required" ValidationGroup="AddAdmin"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style24" colspan="2"><strong>
                    <asp:Button ID="Button1" runat="server"  CssClass="custom-button" Text="Register Admin" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" OnClick="Button1_Click" ValidationGroup="AddAdmin" />
                </strong></td>
            </tr>
        </table>
    </div>

</asp:Content>
