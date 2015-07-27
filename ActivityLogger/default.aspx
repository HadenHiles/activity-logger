<%@ Page Title="Welcome To Activity Logger" Language="C#" MasterPageFile="~/activitylogger.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ActivityLogger._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:PlaceHolder ID="plhPublic" runat="server">
        <h1>Welcome to Activity Logger!</h1>
        <p>A web app designed to promote physical activity throughout your week.</p>
        <a href="/register.aspx" class="btn btn-info btn-large">Register</a>
        <a href="/login.aspx" class="btn btn-success btn-large">Login</a>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="plhPrivate" runat="server">
        <h1>Thanks for using Activity Logger!</h1>
        <p>Your simple, beautiful, activity time management tool designed to keep you active!</p>
        <hr />
        <div class="col-lg-12" style="font-size:16px; font-weight:bold">
            <asp:Label ID="lblName" runat="server" Text="Anonymous"></asp:Label>
            <br />
            <a href="admin/activity-manage.aspx">Record Activity</a>
        </div>
    </asp:PlaceHolder>
</asp:Content>
