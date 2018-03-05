<%@ Page Title="Success" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="STIBalElections.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 style="text-align:center">VOTE SUCCESS!</h1>
        <p style="text-align:center">
            <img src="success.png" /><br />
            Your vote has been successfully submitted! Your votes matter, <asp:Label runat=server ID="lblName" Text="NAME HERE" />! <br />Thank you! 

            <br /><br />
                <script type="text/javascript">
                    var count = 15;
                    var redirect = "Default.aspx";

                    function countDown() {
                        var timer = document.getElementById("timer");
                        if (count > 0) {
                            count--;
                            timer.innerHTML = "Now redirecting back to registration in " + count + " seconds. Not redirected? Click <a href=\"Default.aspx\">HERE</a>.";
                            setTimeout("countDown()", 1000);
                        } else {
                            window.location.href = redirect;
                        }
                    }
                </script>
                <br>
 
                <span id="timer">
                <script type="text/javascript">countDown();</script>
                </span>
            
        </p>
    </div>
</asp:Content>
