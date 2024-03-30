<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AllStudent1.aspx.cs" Inherits="Library_Management_System.AllStudent1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            text-align: center;
        }

        .auto-style19 {
            width: 80%;
            border: 5px solid #9AD0F4;
            background-color: #9AD0F4;
            border-radius:15px;
        }

        .grid-container {
            max-height: 450px; /* Adjust the height as needed */
            overflow-y: auto; /* Enable only vertical scrollbar */
            overflow-x: hidden; /* Hide horizontal scrollbar */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="auto-style18">
        <table cellpadding="2" class="auto-style19" style="margin: 0px auto 0px auto">
            <tr>
                <td>
                    <div class="grid-container">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Student_Name" HeaderText="Student Name" SortExpression="Student_Name" />
                                <asp:BoundField DataField="Student_id" HeaderText="Student ID" SortExpression="Student_id" />
                                <asp:BoundField DataField="Book_Issued" HeaderText="Book Issued" SortExpression="Book_Issued" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-M6VC8BCJ\SQLEXPRESS;Initial Catalog=Library_management_system;Integrated Security=True;" SelectCommand="SELECT * FROM [Student_Data] ORDER BY [Student_id]"></asp:SqlDataSource>
                    </div>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
