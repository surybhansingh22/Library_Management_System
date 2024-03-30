<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddStudent1.aspx.cs" Inherits="Library_Management_System.AddStudent1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            text-align: center;
        }

        .auto-style22 {
            width: 578px;
            height: 130px;
            border: 5px solid #FFFFFF;
            background-color: #9AD0F4;
            border-radius: 15px;
        }

        .auto-style28 {
            width: 283px;
            height: 32px;
            color: #FFFFFF;
        }

        .auto-style29 {
            width: 283px;
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
    <div class="auto-style18">
        <br />

        <table class="auto-style22" style="margin: 0px auto 0px auto">
            <tr>
                <td class="auto-style28"><strong>Student ID</strong></td>
                <td class="auto-style29">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required" ValidationGroup="AddingStd"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>Student Name</strong></td>
                <td class="auto-style29">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Required" ValidationGroup="AddingStd"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>Password</strong></td>
                <td class="auto-style29">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Required" ValidationGroup="AddingStd"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18" colspan="2">&nbsp;
                    <strong>
                        <asp:Button ID="Button1" runat="server"  BorderColor="White" BorderStyle="Solid" BorderWidth="1px" CssClass="custom-button" Text="Register Student" OnClick="Button1_Click" ValidationGroup="AddingStd" />
                    </strong>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
