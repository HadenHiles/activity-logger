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
            <input id="time-display" class="time-label" type="text" value="00:00:00" disabled="disabled" />
        </div>
        <div class="col-lg-6">
            <button class="btn btn-default large" id="reset">Reset</button>
            <button class="btn btn-success large" id="start" active="false">Start</button>
        </div>
    </div>
</asp:Content>
