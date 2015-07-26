<%@ Page Title="Welcome To Activity Logger" Language="C#" MasterPageFile="~/activitylogger.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ActivityLogger._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome to Activity Logger!</h1>
    <p>A web app designed to promote physical activity throughout your week.</p>
    <a href="/register.aspx" class="btn btn-info btn-large">Register</a>
    <a href="/login.aspx" class="btn btn-success btn-large">Login</a>
</asp:Content>
