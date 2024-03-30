<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SearchBook.aspx.cs" Inherits="Library_Management_System.SearchBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 578px;
            border: 5px solid #FFFFFF;
            background-color: #9AD0F4;
        }

        .auto-style12 {
            color: #FFFFFF;
            width: 188px;
        }

        .auto-style13 {
            width: 189px;
        }

        .auto-style14 {
            width: 283px;
        }

        .auto-style15 {
            color: #FFFFFF;
            width: 283px;
        }

        .auto-style18 {
            color: #FFFFFF;
        }

        .auto-style19 {
            width: 283px;
            height: 25px;
        }

        .auto-style20 {
            color: #FFFFFF;
            width: 283px;
            height: 25px;
            text-align: center;
        }

        .auto-style21 {
            text-align: center;
        }

        .auto-style212 {
            text-align: left;
        }

        .auto-style213 {
            font-size: xx-large;
            color: #FFFFFF;
            background-color: #9AD0F4;
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

        .grid-container {
            max-height: 450px; /* Adjust the height as needed */
            overflow-y: auto; /* Enable only vertical scrollbar */
            overflow-x: hidden; /* Hide horizontal scrollbar */
        }

            .grid-container::-webkit-scrollbar {
                width: 0px; /* Adjust the width as needed */
            }
        .auto-style214 {
            width: 189px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="auto-style21">
        <div class="auto-style21">
            <br />
            <br />
        </div>
        <table class="auto-style11" style="margin: 0px auto 0px auto; width: 50%;">
            <tr>
                <td class="auto-style12"><strong>Search Book</strong></td>
                <td class="auto-style214">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Insert ID" ValidationGroup="Searching"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style13">
                    <strong>
                        <asp:Button ID="Button1" runat="server" Text="Search"  BorderColor="White" BorderStyle="Solid" BorderWidth="1px" CssClass="custom-button" OnClick="Button1_Click1" ValidationGroup="Searching" />
                    </strong>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <div class="auto-style212">
            <table class="auto-style11" style="margin: 0px auto 0px auto; width: 60%;">
                <tr>
                    <td class="auto-style20"><strong>Book ID</strong></td>
                    <td class="auto-style19"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style18"></asp:Label>
                    </strong></td>
                </tr>
                <tr>
                    <td class="auto-style15"><strong>Book Name</strong></td>
                    <td class="auto-style14"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style18"></asp:Label>
                    </strong></td>
                </tr>
                <tr>
                    <td class="auto-style15"><strong>Author</strong></td>
                    <td class="auto-style14"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style18"></asp:Label>
                    </strong></td>
                </tr>
                <tr>
                    <td class="auto-style15"><strong>Subject</strong></td>
                    <td class="auto-style14"><strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style18"></asp:Label>
                    </strong></td>
                </tr>
                <tr>
                    <td class="auto-style15"><strong>Available</strong></td>
                    <td class="auto-style14"><strong>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style18"></asp:Label>
                    </strong></td>
                </tr>

            </table>
        </div>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style213"></asp:Label>
        <asp:Panel ID="Panel1" runat="server">

            <div class="grid-container">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="50%" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="Book ID">
                            <ItemTemplate>
                                <%#Eval("Book_Id") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Student ID">
                            <ItemTemplate>
                                <%#Eval("Student_id") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Issue Date">
                            <ItemTemplate>
                                <%#Eval("Date_of_issue") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Submission Date">
                            <ItemTemplate>
                                <%#Eval("Date_of_submission") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <%#Eval("status") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <AlternatingRowStyle BackColor="White" />
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
            </div>
        </asp:Panel>
        <br />
    </div>
</asp:Content>
