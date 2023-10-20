<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="DeleteSchedule.aspx.cs" Inherits="BusBookingProject.Admin.DeleteSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
     <style type="text/css">
        .auto-style1 {
            width: 150px;
        }
    </style>

   

  
    <table class="nav-justified">
        
            <td class="auto-style1">BusId<br />
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" Width="114px" />
                <asp:Label ID="LblMsg" runat="server" Text=" "></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table
</asp:Content>
