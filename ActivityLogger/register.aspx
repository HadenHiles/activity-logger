<%@ Page Title="Register" Language="C#" MasterPageFile="~/activitylogger.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="ActivityLogger.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Register</h1>
        <hr />
        <div class="col-lg-6">
            <h6>All fields are required</h6>
            <div>
                <asp:label id="lblStatus" runat="Server" cssClass="label label-info full-width"></asp:label>
            </div>
            <div class="clear"></div>
            <br />
            <div class="form-group">
                <div class="col-sm-4">
                    <label for="txtUsername" style="font-size: 20px; margin-top: 7px;">Username:</label>
                </div>
                <div class="col-sm-8">
                    <asp:textbox id="txtUsername" runat="server" CssClass="right input-lg full-width"></asp:textbox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-4">
                    <label for="txtPassword" style="font-size: 20px; margin-top: 7px;">Password:</label>
                </div>
                <div class="col-sm-8">
                    <asp:textbox id="txtPassword" runat="server" CssClass="right input-lg full-width" textmode="password"></asp:textbox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-4">
                    <label for="txtConfirm" style="font-size: 20px; margin-top: 7px;">Confirm:</label>
                </div>
                <div class="col-sm-8">
                    <asp:textbox id="txtConfirm" runat="server" textmode="password" CssClass="right input-lg full-width"></asp:textbox>
                    <asp:comparevalidator runat="server" errormessage="Passwords Must Match" 
                        Controltovalidate="txtPassword" Controltocompare="txtConfirm"
                        operator="equal" cssClass="label label-danger full-width"></asp:comparevalidator>
                </div>
            </div>
            <div class="form-group">
                <asp:button id="btnRegister" text="Register" runat="server" cssClass="btn btn-success right" OnClick="btnRegister_Click" />
            </div>
        </div>
    </div>
</asp:Content>
