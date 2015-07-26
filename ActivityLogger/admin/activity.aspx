<%@ Page Title="Activity" Language="C#" MasterPageFile="~/activitylogger.Master" AutoEventWireup="true" CodeBehind="activity.aspx.cs" Inherits="ActivityLogger.admin.activity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--jquery CDN -->
    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="../js/timer.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Record Activity</h1>
        <hr />
        <div class="well col-lg-6">
            <asp:TextBox ID="txtTimeDisplay" runat="server" CssClass="time-label" Text="00:00:00" Enabled="false"></asp:TextBox>
        </div>
        <div class="col-lg-6">
            <button class="btn btn-default large large-half" style="margin-right: 2.5%;" id="reset">Reset</button>
            <button class="btn btn-success large large-half" style="margin-left: 2.5%;" id="start" active="false">Start</button>
        </div>
        <div class="clear"></div>
        <hr />
        <div class="col-lg-6">
            <label for="txtActivityName">What activity were you doing?</label>
            <asp:TextBox ID="txtActivityName" runat="server" CssClass="input-lg full-width"></asp:TextBox>
        </div>
        <div class="col-lg-6">
            <asp:Button ID="btnLog" runat="server" CssClass="btn btn-info large large-full" Text="Log Activity" />
        </div>
    </div>
</asp:Content>
