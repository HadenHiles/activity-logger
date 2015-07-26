<%@ Page Title="Something went wrong" Language="C#" MasterPageFile="~/activitylogger.Master" AutoEventWireup="true" CodeBehind="error.aspx.cs" Inherits="ActivityLogger.error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Oops...</h1>
    <p>Something went wrong, would you like to go back to the <a href="/default.aspx">homepage</a>?</p>
</asp:Content>
