<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="RequestStatus.aspx.cs" Inherits="Library_Management_System.RequestStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            text-align: center;
        }

        .auto-style11 {
            width: 80%;
            border: 5px solid #9AD0F4;
            background-color: #9AD0F4;
            border-radius: 15px;
            text-align: center;
        }

        .auto-style12 {
            width: 10px;
            text-align: center;
        }

        .grid-container {
            max-height: 450px; /* Adjust the height as needed */
            overflow-y: auto; /* Enable only vertical scrollbar */
            overflow-x: hidden; /* Hide horizontal scrollbar */
        }

            .grid-container::-webkit-scrollbar {
                width: 0px; /* Adjust the width as needed */
            }

        .auto-style13 {
            font-size: xx-large;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style10">
        `<table class="auto-style11" style="margin: 0px auto 0px auto; width: 50%;">
            <tr>
                <td class="auto-style12">
                    <div class="auto-style10">
                        <div class="grid-container">
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="70%" HorizontalAlign="Center">
                                <AlternatingRowStyle BackColor="White" />
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style13"></asp:Label>
                        </div>
                    </div>

                </td>
            </tr>
        </table>
    </div>
    <br />
</asp:Content>
