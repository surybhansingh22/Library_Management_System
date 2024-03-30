<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Library_Management_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-image: url("lib2.jpg");
            background-size: 100%;
            background-repeat: no-repeat;
        }

        .auto-style1 {
            width: 1155px;
        }

        .auto-style2 {
            text-align: right;
            color: #FF0000;
            font-size: xx-large;
            width: 576px;
        }

        .auto-style3 {
            color: #FF0000;
            font-size: xx-large;
            width: 577px;
        }

        .auto-style4 {
            text-align: center;
            color: #0066FF;
            font-size: xx-large;
        }

        .auto-style5 {
            color: #0066FF;
        }

        .auto-style6 {
            width: 578px;
            background-color: #9AD0F4;
            height: 138px;
        }

        .auto-style7 {
            text-align: center;
            height: 35px;
        }

        .auto-style11 {
            width: 288px;
            text-align: center;
            height: 35px;
        }

        #Button1 {
            background-color: #9AD0F4;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

            #Button1:hover {
                background-color: lightgreen;
            }

        .auto-style12 {
            text-align: center;
            color: #FFFFFF;
            height: 35px;
        }

        .auto-style13 {
            font-weight: bold;
        }

        .auto-style15 {
            width: 288px;
            text-align: center;
            height: 34px;
        }

        .auto-style16 {
            text-align: center;
            color: #FFFFFF;
            height: 34px;
        }

        .auto-style17 {
            text-align: center;
        }

        .auto-style20 {
            border-radius: 30px;
            width:30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" align="center">
                <tr>
                    <td class="auto-style2"><span class="auto-style5"><strong>LIBRARY</strong></span> </td>
                    <td class="auto-style3"><strong>&nbsp; <span class="auto-style5">MANAGEMENT</span></strong></td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2"><strong>SYSTEM</strong></td>
                </tr>
            </table>

            <br />
            <br />
            <table class="auto-style6" style="margin: 0px auto 0px auto" align="center">
                <tr>
                    <td class="auto-style16" colspan="2"><strong>Login</td>
                </tr>
                <tr>
                    <td class="auto-style16">User ID</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Password</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>

                    </td>
                    <td class="auto-style17">
                        <asp:ImageButton ID="ImageButton1" CssClass="auto-style20" runat="server" Height="30px" ImageUrl="~/ShowPass.png" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" OnClick="ImageButton1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Log-In" OnClick="Button1_Click" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style13" />
                        </strong>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
