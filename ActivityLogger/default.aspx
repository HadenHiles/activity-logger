<%@ Page Title="Welcome To Activity Logger" Language="C#" MasterPageFile="~/activitylogger.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ActivityLogger._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:PlaceHolder ID="plhPublic" runat="server">
        <h1>Welcome to Activity Logger!</h1>
        <p>A web app designed to promote physical activity throughout your week.</p>
        <div class="col-lg-6">
            <a href="/register.aspx" class="btn btn-info large large-half" style="margin-right: 2.5%;">Register</a>
            <a href="/login.aspx" class="btn btn-success large large-half" style="margin-left: 2.5%;">Login</a>
        </div>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="plhPrivate" runat="server">
        <div class="col-lg-6" style="font-size:20px; font-weight:bold">
            <asp:Label ID="lblName" runat="server" Text="Anonymous"></asp:Label>
            <br />
            <a href="admin/activity-manage.aspx" class="btn btn-success large large-full">Record Activity</a>
        </div>
    </asp:PlaceHolder>
</asp:Content>
