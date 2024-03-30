<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="BookIssue.aspx.cs" Inherits="Library_Management_System.BookIssue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style type="text/css">
       .auto-style18 {
           text-align: center;
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
               background-color: mediumslateblue;
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
        background-color: red;
    }
       .auto-style193 {
           color: #FFFFFF;
           text-align: center;
       }
           .auto-style194 {
               color: #FFFFFF;
               text-align: center;
               height: 51px;
           }
           .auto-style195 {
               color: #FFFFFF;
           }
           .auto-style212 {
               width: 443px;
               color: #FFFFFF;
               height: 29px;
           }
           .auto-style213 {
               width: 443px;
               height: 29px;
           }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style24" style="margin: 0px auto 0px auto">
        <tbody class="auto-style18">
    <tr>
        <td class="auto-style28"><strong>Book ID</strong></td>
        <td class="auto-style27">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ValidationGroup="IssueBook"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style212"><strong>Student ID</strong></td>
        <td class="auto-style213">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ValidationGroup="IssueBook"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Date of Issued</strong></td>
        <td class="auto-style27">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style193">
            <strong>Date of Submi</strong></td>
        <td class="auto-style193">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style194" colspan="2">
            <asp:Button ID="Button3" runat="server" CssClass="custom-button" Text="Issue Book" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" OnClick="Button3_Click" ValidationGroup="IssueBook"  />
        </td>
    </tr>
</table>
    <br />
    <br />
    <br />
        <table class="auto-style24" style="margin: 0px auto 0px auto">
        <tbody class="auto-style18">
    <tr>
        <td class="auto-style28"><strong>Search Book ID</strong></td>
        <td class="auto-style27">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required" ValidationGroup="Submitting"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style195" colspan="2">
            <asp:Button ID="Button4" runat="server" CssClass="custom-button1" Text="Search" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" OnClick="Button4_Click" ValidationGroup="Submitting"  />
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Student ID</strong></td>
        <td class="auto-style27">
            <asp:Label ID="Label2" runat="server" CssClass="auto-style195" Text="-"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Date of Issued</strong></td>
        <td class="auto-style27">
            <asp:Label ID="Label3" runat="server" CssClass="auto-style195" Text="-"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style193">
            <strong>Date of Submit</strong></td>
        <td class="auto-style193">
            <asp:Label ID="Label4" runat="server" Text="-"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style193" colspan="2">
            <asp:Button ID="Button2" runat="server" CssClass="custom-button2" Text="Submit" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" OnClick="Button2_Click"  />
        </td>
    </tr>
</table>


</asp:Content>
