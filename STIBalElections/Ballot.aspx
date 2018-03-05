﻿<%@ Page Title="Ballot" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ballot.aspx.cs" Inherits="STIBalElections.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div runat="server" id="ballot" visible="true" class="jumbotron">
        <h1>Welcome, <asp:Label runat="server" ID="lblStudentName" Text="STUDENTNAMEHERE" />! You may now vote.</h1>
        <p class="lead" style="text-align: left">Voter's name: <asp:Label runat="server" ID="lblFullName" Text="FULLNAMEHERE" /><br />
            Voter's Strand: <asp:Label runat="server" ID="lblStrand" Text="STRAND HERE" /></p>
        <br />

        <div runat="server" id="dvBallotsheet" visible="true">
            <table style="border:hidden" class="table table-centered">
                <tr>
            <td><h2>President: </h2>
            <asp:RadioButtonList ID="rblPres" runat="server">
            <asp:ListItem>Mark Christian Sevilleno (LIPAD)</asp:ListItem>
                <asp:ListItem>Alvie De Sahagun (LEGIT)</asp:ListItem>
                <asp:ListItem Selected="True">None</asp:ListItem>
                </asp:RadioButtonList><br />
                    </td>
                    <td>
            <h2>Vice President: </h2>
            <asp:RadioButtonList ID="rblVpres" runat="server">
                <asp:ListItem>Mayu Javier (LIPAD)</asp:ListItem>
                <asp:ListItem>Raizza Flores (LEGIT)</asp:ListItem>
                <asp:ListItem Selected="True">None</asp:ListItem>
            </asp:RadioButtonList><br />
                    </td>
                </tr>

                <tr>
                    <td>
            <h2>Secretary: </h2>
            <asp:RadioButtonList ID="rblSec" runat="server">
                <asp:ListItem>Patricia Caluag (LIPAD)</asp:ListItem>
                <asp:ListItem>Danella Castillo (LEGIT)</asp:ListItem>
                <asp:ListItem Selected="True">None</asp:ListItem>
            </asp:RadioButtonList><br />
                    </td>
                    <td>
            <h2>Treasurer: </h2>
            <asp:RadioButtonList ID="rblTreas" runat="server">
                <asp:ListItem>Janna Samson (LIPAD)</asp:ListItem>
                <asp:ListItem>Jorie Iligan (LEGIT)</asp:ListItem>
                <asp:ListItem Selected="True">None</asp:ListItem>
            </asp:RadioButtonList><br />
                    </td>
                </tr>

                <tr>
                    <td>
            <h2>Auditor: </h2>
            <asp:RadioButtonList ID="rblAud" runat="server">
                <asp:ListItem>Jomari Vasallo (LIPAD)</asp:ListItem>
                <asp:ListItem>Don Villaroman (LEGIT)</asp:ListItem>
                <asp:ListItem Selected="True">None</asp:ListItem>
            </asp:RadioButtonList><br />
                    </td>
                    <td>
            <h2>P.R.O. (Female): </h2>
            <asp:RadioButtonList ID="rblPro" runat="server">
                <asp:ListItem>Geraldine Cuevas (LIPAD)</asp:ListItem>
                <asp:ListItem>Julie Dimla (LEGIT)</asp:ListItem>
                <asp:ListItem Selected="True">None</asp:ListItem>
            </asp:RadioButtonList><br />
                    </td>
                </tr>

                <tr>
                    <td>
            <h2>P.R.O. (Male): </h2>
            <asp:RadioButtonList ID="rblG11r" runat="server">
                <asp:ListItem>Ethan Jesther Mendez (LIPAD)</asp:ListItem>
                <asp:ListItem>Mark John Villafane (LEGIT)</asp:ListItem>
                <asp:ListItem Selected="True">None</asp:ListItem>
            </asp:RadioButtonList><br />
                    </td>
                    <td>
            <h2>Grade 12 Representative: </h2>
            <asp:RadioButtonList ID="rblG12r" runat="server">
                <asp:ListItem>Allyssa Sarmiento (LIPAD)</asp:ListItem>
                <asp:ListItem>Raechel Rola (LEGIT)</asp:ListItem>
                <asp:ListItem Selected="True">None</asp:ListItem>
            </asp:RadioButtonList>
                    </td>
                </tr>
				
                <!--
				<tr>
					<td>
			<h2>4th Year Representative: </h2>
            <asp:RadioButtonList ID="rblG13r" runat="server">
                <asp:ListItem>Unizel Medina (LIPAD)</asp:ListItem>
                <asp:ListItem>Patricia Patawaran (LEGIT)</asp:ListItem>
                <asp:ListItem Selected="True">None</asp:ListItem>
            </asp:RadioButtonList>		
					</td>
				</tr>
                    -->
                </table>
            
            <center><asp:Button ID="btnSubmit" runat="server" Text="Next &gt;&gt;" class="btn btn-primary btn-lg" OnClick="btnSubmit_Click"/></center>
        
            </div>

        <div runat="server" id="dvReview" visible="false">
            <p class="lead" style="font-size: 25px;color:red">Please review your votes before submitting!</p>
            <br />
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Position</th><th>Chosen Candidate</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>President: </th><td><asp:Label runat="server" ID="lblPresident" Text="PRESIDENT NAME HERE" /></td>
                    </tr>
                    <tr>
                        <th>Vice President: </th><td><asp:Label runat="server" ID="lblVicePresident" Text="VICE PRESIDENT NAME HERE" /></td>
                    </tr>
                    <tr>
                        <th>Secretary: </th><td><asp:Label runat="server" ID="lblSecretary" Text="SECRETARY NAME HERE" /></td>
                    </tr>
                    <tr>
                        <th>Treasurer: </th><td><asp:Label runat="server" ID="lblTreasurer" Text="TREASURER NAME HERE" /></td>
                    </tr>
                    <tr>
                        <th>Auditor: </th><td><asp:Label runat="server" ID="lblAuditor" Text="AUDITOR NAME HERE" /></td>
                    </tr>
                    <tr>
                        <th>P.R.O. (Female): </th><td><asp:Label runat="server" ID="lblPro" Text="PRO F NAME HERE" /></td>
                    </tr>
                    <tr>
                        <th>P.R.O. (Male): </th><td><asp:Label runat="server" ID="lblG11" Text="PRO M NAME HERE" /></td>
                    </tr>
                    <tr>
                        <th>Grade 12 Representative: </th><td><asp:Label runat="server" ID="lblG12" Text="G12 REP HERE" /></td>
                    </tr>
                    <!--
					<tr>
                        <th>4th Year Representative: </th><td><asp:Label runat="server" ID="lblG13" Text="G13 REP HERE" /></td>
                    </tr>
                        -->
                </tbody>
            </table>
            <center><asp:Button ID="btnReturn" runat="server" Text="&lt;&lt; Go Back" class="btn btn-primary btn-lg" OnClick="btnReturn_Click"/>&nbsp&nbsp<asp:Button ID="btnSubVote" runat="server" Text="Submit &gt;&gt;" class="btn btn-primary btn-lg" OnClick="btnSubVote_Click"/></center>
        </div>
    </div>



</asp:Content>
