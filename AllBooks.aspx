<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AllBooks.aspx.cs" Inherits="Library_Management_System.AllBooks" %>

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
        }

        .auto-style12 {
            width: 10px;
        }

        .grid-container {
            max-height: 450px; /* Adjust the height as needed */
            overflow-y: auto; /* Enable only vertical scrollbar */
            overflow-x: hidden; /* Hide horizontal scrollbar */
        }

            .grid-container::-webkit-scrollbar {
                width: 0px; /* Adjust the width as needed */
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="auto-style10">
        `<table class="auto-style11" style="margin: 0px auto 0px auto; width: 80%;">
            <tr>
                <td class="auto-style12">
                    <div class="auto-style10">
                        <div class="grid-container">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%" HorizontalAlign="Center">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="Book_Id" HeaderText="Book ID" SortExpression="Book_Id" />
                                    <asp:BoundField DataField="Book_Name" HeaderText="Book Name" SortExpression="Book_Name" />
                                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                                    <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                                    <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-M6VC8BCJ\SQLEXPRESS;Initial Catalog=Library_management_system;Integrated Security=True;" SelectCommand="SELECT * FROM [BookData] ORDER BY [Book_Id]"></asp:SqlDataSource>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
