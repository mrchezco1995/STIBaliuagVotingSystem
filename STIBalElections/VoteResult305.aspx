<%@ Page Title="Vote Results" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VoteResult305.aspx.cs" Inherits="STIBalElections.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--This is a hidden page... Be careful! -->
    <div class="jumbotron" runat="server" id="dvAuth">
        <h1 style="text-align:center">RESTRICTED PAGE!</h1>
        <p style="text-align:center">
            <img src="restricted.png" /><br />
            Password: <asp:TextBox runat="server" ID="txtPass" TextMode="Password" /><br /><asp:Label runat="server" ID="lblStat" /><br />
            <center><asp:Button ID="btnSubmit" runat="server" Text="Enter &gt;&gt;" class="btn btn-primary btn-lg" OnClick="btnSubmit_Click"/></center>
            </p>
    </div>

    <div runat="server" id="dvVoteResult" visible="false">
        <table class="table table-centered table-bordered">
            <tr>
                <th>President</th><th>Vote Counts</th>
            </tr>
            <tr><td><asp:Label runat="server" ID="lblPres1" /></td><td><asp:Label runat="server" ID="lblPres1c" /></td></tr>
            <tr><td><asp:Label runat="server" ID="lblPres2" /></td><td><asp:Label runat="server" ID="lblPres2c" /></td></tr>
            <tr><td>None</td><td><asp:Label runat="server" ID="lblPresN" /></td></tr>
            <tr><th colspan="2"></th></tr>

            <tr>
                <th>Vice President</th><th>Vote Counts</th>
            </tr>
            <tr><td><asp:Label runat="server" ID="lblVpres1" /></td><td><asp:Label runat="server" ID="lblVpres1c" /></td></tr>
            <tr><td><asp:Label runat="server" ID="lblVpres2" /></td><td><asp:Label runat="server" ID="lblVpres2c" /></td></tr>
            <tr><td>None</td><td><asp:Label runat="server" ID="lblVpresN" /></td></tr>
            <tr><th colspan="2"></th></tr>

            <tr>
                <th>Secretary</th><th>Vote Counts</th>
            </tr>
            <tr><td><asp:Label runat="server" ID="lblSec1" /></td><td><asp:Label runat="server" ID="lblSec1c" /></td></tr>
            <tr><td><asp:Label runat="server" ID="lblSec2" /></td><td><asp:Label runat="server" ID="lblSec2c" /></td></tr>
            <tr><td>None</td><td><asp:Label runat="server" ID="lblSecN" /></td></tr>
            <tr><th colspan="2"></th></tr>

            <tr>
                <th>Treasurer</th><th>Vote Counts</th>
            </tr>
            <tr><td><asp:Label runat="server" ID="lblTreas1" /></td><td><asp:Label runat="server" ID="lblTreas1c" /></td></tr>
            <tr><td><asp:Label runat="server" ID="lblTreas2" /></td><td><asp:Label runat="server" ID="lblTreas2c" /></td></tr>
            <tr><td>None</td><td><asp:Label runat="server" ID="lblTreasN" /></td></tr>
            <tr><th colspan="2"></th></tr>

            <tr>
                <th>Auditor</th><th>Vote Counts</th>
            </tr>
            <tr><td><asp:Label runat="server" ID="lblAud1" /></td><td><asp:Label runat="server" ID="lblAud1c" /></td></tr>
            <tr><td><asp:Label runat="server" ID="lblAud2" /></td><td><asp:Label runat="server" ID="lblAud2c" /></td></tr>
            <tr><td>None</td><td><asp:Label runat="server" ID="lblAudN" /></td></tr>
            <tr><th colspan="2"></th></tr>

            <tr>
                <th>P.R.O. (Female)</th><th>Vote Counts</th>
            </tr>
            <tr><td><asp:Label runat="server" ID="lblPro1" /></td><td><asp:Label runat="server" ID="lblPro1c" /></td></tr>
            <tr><td><asp:Label runat="server" ID="lblPro2" /></td><td><asp:Label runat="server" ID="lblPro2c" /></td></tr>
            <tr><td>None</td><td><asp:Label runat="server" ID="lblProN" /></td></tr>
            <tr><th colspan="2"></th></tr>

            <tr>
                <th>P.R.O. (Male)</th><th>Vote Counts</th>
            </tr>
            <tr><td><asp:Label runat="server" ID="lblG11rep1" /></td><td><asp:Label runat="server" ID="lblG11rep1c" /></td></tr>
            <tr><td><asp:Label runat="server" ID="lblG11rep2" /></td><td><asp:Label runat="server" ID="lblG11rep2c" /></td></tr>
            <tr><td>None</td><td><asp:Label runat="server" ID="lblG11repN" /></td></tr>
            <tr><th colspan="2"></th></tr>

            <tr>
                <th>Grade 12 Representative</th><th>Vote Counts</th>
            </tr>
            <tr><td><asp:Label runat="server" ID="lblG12rep1" /></td><td><asp:Label runat="server" ID="lblG12rep1c" /></td></tr>
            <tr><td><asp:Label runat="server" ID="lblG12rep2" /></td><td><asp:Label runat="server" ID="lblG12rep2c" /></td></tr>
            <tr><td>None</td><td><asp:Label runat="server" ID="lblG12repN" /></td></tr>
            <tr><th colspan="2"></th></tr>

            <!-- Uncomment if G13 is needed
            <tr>
                <th>4th Year Representative</th><th>Vote Counts</th>
            </tr>
            <tr><td><asp:Label runat="server" ID="lblG13rep1" /></td><td><asp:Label runat="server" ID="lblG13rep1c" /></td></tr>
            <tr><td><asp:Label runat="server" ID="lblG13rep2" /></td><td><asp:Label runat="server" ID="lblG13rep2c" /></td></tr>
            <tr><td>None</td><td><asp:Label runat="server" ID="lblG13repN" /></td></tr>
            <tr><th colspan="2"></th></tr>
                -->
        </table>
        <h2>Number of Voters: <asp:Label runat="server" ID="txtVoters" /></h2>
        <center><asp:Button ID="btnRefresh" runat="server" Text="Refresh" class="btn btn-primary btn-lg" OnClick="btnRefresh_Click"/>&nbsp&nbsp<asp:Button ID="btnLogout" runat="server" Text="Logout" class="btn btn-primary btn-lg" OnClick="btnLogout_Click"/></center>
    </div>
</asp:Content>
