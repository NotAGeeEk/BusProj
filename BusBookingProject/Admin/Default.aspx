<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BusBookingProject.Admin.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="margin-top:6%">
        <div class="row">
            <div class="col-lg-12">
                <asp:Image ID="imgAdmin" ImageAlign="AbsMiddle" ImageUrl="~/img/home.jpeg" style="width:100%" runat="server" />
            </div>
            <div class="col-lg-12" style="margin-top:2%">
                <div class="panel panel-default">
                    <div class="panel-heading">
                         <div class="panel-title">
                            <h3>Welcome, Admin!</h3>
                        </div>
                    </div>
                    <div class="panel-body">
                        <p style="font-size:large">
                            This is the Admin portal for managing the online bus booking system. You can perform various administrative tasks, including managing buses, locations, schedules, bookings, and users.
                        </p>
                         <p>
                            As an administrator, you have access to the following features:
                        </p>
                        <ul>
                            <li>View the list of buses currently available in the system.</li>
                            <li>Check the routes associated with each bus for efficient management.</li>
                            <li>Generate and analyze reports on user bookings and reservations.</li>
                            <li>Update the details and information related to the buses.</li>
                            <li>Add new buses to the existing fleet to expand the system.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
                
</asp:Content>
