<%@ Page Title="Activity" Language="C#" MasterPageFile="~/activitylogger.Master" AutoEventWireup="true" CodeBehind="activity-manage.aspx.cs" Inherits="ActivityLogger.admin.activitymanage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--jquery CDN -->
    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
        var txtTimeDisplayAsp;
        var lblTimeHidden;
        $(document).ready(function () {
            txtTimeDisplayAsp = $('#<%=txtTimeDisplay.ClientID%>');
            lblTimeHidden = $('#<%=lblTimeHidden.ClientID%>');
        });
    </script>
    <script type="text/javascript" src="../js/timer.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Record Activity</h1>
        <hr />
        <asp:TextBox ID="lblTimeHidden" runat="server" CssClass="off-screen"></asp:TextBox>
        <asp:Panel runat="server" ID="pnlTiming">
            <div class="well col-lg-6">
                <asp:TextBox ID="txtCheck" runat="server" Text="00:00:00" Visible="false"></asp:TextBox>
                <asp:TextBox ID="txtTimeDisplay" runat="server" CssClass="time-label" Text="00:00:00" Enabled="false"></asp:TextBox>
                <div class="clear"></div>
            </div>
            <div class="col-lg-6">
                <button class="btn btn-default large large-half" style="margin-right: 2.5%;" id="reset">Reset</button>
                <button class="btn btn-success large large-half" style="margin-left: 2.5%;" id="start" active="false">Start</button>
            </div>
            <div class="clear"></div>
            <div class="col-lg-6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="You must record your activity before logging it!"
                    CssClass="label label-danger full-width"
                    ControlToValidate="lblTimeHidden"></asp:RequiredFieldValidator>
            </div>
            <div class="col-lg-6"></div>
        </asp:Panel>
        <div class="clear"></div>
        <hr />
        <div class="col-lg-6">
            <label for="txtActivityName">What activity were you doing?</label>
            <asp:TextBox ID="txtActivityName" runat="server" CssClass="input-lg full-width"></asp:TextBox>
            <div class="clear"></div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="You must enter the activity you were doing!"
                CssClass="label label-danger full-width"
                ControlToValidate="txtActivityName"></asp:RequiredFieldValidator>
        </div>
        <div class="col-lg-6">
            <asp:Button ID="btnLog" runat="server" CssClass="btn btn-info large large-full" Text="Log Activity" OnClick="btnLog_Click" />
        </div>
    </div>
</asp:Content>
