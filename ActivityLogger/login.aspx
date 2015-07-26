<%@ Page Title="Login" Language="C#" MasterPageFile="~/activitylogger.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ActivityLogger.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Login</h1>
        <hr />
        <div class="col-lg-8">
            <div>
                <asp:Label runat="server" ID="lblStatus" CssClass="label label-danger full-width"></asp:Label>
            </div>
            <div class="clear"></div>
            <br />
            <div class="form-group">
                <div class="col-sm-4">
                    <label for="txtUsername" style="font-size: 20px; margin-top: 7px;">Username: </label>
                </div>
                <div class="col-sm-8">
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="right input-lg full-width"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-4">
                    <label for="txtPassword" style="font-size: 20px; margin-top: 7px;">Password: </label>
                </div>
                <div class="col-sm-8">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="right input-lg full-width" textmode="password"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <asp:Button id="btnLogin" Text="Login" runat="Server" OnClick="btnLogin_Click" cssClass="btn btn-success large large-full" />
        </div>
    </div>
</asp:Content>
