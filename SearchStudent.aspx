<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SearchStudent.aspx.cs" Inherits="Library_Management_System.SearchStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            text-align: center;
        }

        .auto-style19 {
            width: 562px;
            border: 5px solid #FFFFFF;
            background-color: #9AD0F4;
        }

        .auto-style20 {
            height: 26px;
            width: 184px;
        }

        .auto-style21 {
            height: 26px;
            width: 183px;
            text-align: center;
        }

        .auto-style22 {
            height: 26px;
            width: 183px;
            color: #FFFFFF;
        }

        .auto-style24 {
            width: 898px;
            border: 5px solid #FFFFFF;
            background-color: #9AD0F4;
        }

        .auto-style27 {
            width: 443px;
        }

        .auto-style28 {
            width: 443px;
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

        .custom-button1 {
            background-color: #9AD0F4;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

            .custom-button1:hover {
                background-color: red;
            }
         .custom-button2 {
     background-color: #9AD0F4;
     color: white;
     padding: 10px 20px;
     border: none;
     border-radius: 5px;
     cursor: pointer;
 }

     .custom-button2:hover {
         background-color: mediumslateblue;
     }
        .auto-style191 {
            width: 443px;
            color: #FFFFFF;
            text-align: right;
        }
        .auto-style192 {
            width: 443px;
            text-align: left;
        }
        .auto-style193 {
            color: #FFFFFF;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="auto-style18">
        <table class="auto-style19" style="margin: 0px auto 0px auto">
            <tr>
                <td class="auto-style22"><strong>Student ID</strong></td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ValidationGroup="SearchStd"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button1" runat="server" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" CssClass="custom-button2" Text="Search" OnClick="Button1_Click" ValidationGroup="SearchStd" />
                </strong></td>
            </tr>
        </table>

        <br />
        <table class="auto-style24" style="margin: 0px auto 0px auto">
            <tr>
                <td class="auto-style28"><strong>Student ID</strong></td>
                <td class="auto-style27">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Search Student First" ValidationGroup="CRUD"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>Student Name</strong></td>
                <td class="auto-style27">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>Book Issued</strong></td>
                <td class="auto-style27">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style193" colspan="2">
                    <asp:Button ID="Button5" CssClass="custom-button2" runat="server" Text="Edit" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" OnClick="Button5_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style191">
                    <asp:Button ID="Button3" runat="server" CssClass="custom-button" Text="Update" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" OnClick="Button3_Click" ValidationGroup="CRUD"  />
                </td>
                <td class="auto-style192">
                    <asp:Button ID="Button4" runat="server" CssClass="custom-button1" Text="Delete" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" OnClick="Button4_Click" ValidationGroup="CRUD" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button2" runat="server" CssClass="custom-button2" Text="Clear" BorderColor="White" BorderStyle="Solid" BorderWidth="3px" OnClick="Button2_Click" />

    </div>

</asp:Content>
