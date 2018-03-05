<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="STIBalElections._Default" validateRequest="false" enableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div runat="server" id=userreg class="jumbotron">
        <h1 style="text-align:center;">STI Supreme Student Government Elections</h1>
        <center><img src="stilogo.png" style="width:15%; height:15%;" /> &nbsp &nbsp &nbsp <img src="stissglogo.png" style="width:15%; height:15%;" /></center>
        <p class="lead" style="text-align:center">Please Enter your name and Year/Course before we can continue.</p>

             <table style="margin-left:auto; margin-right: auto; margin-top:50px; width: 80%;">
                        <tr>
                            <th>Last Name: *</th><td><asp:TextBox runat="server" ID="txtLastName" type="text" name="last name" class="form-control" required="required" style="text-align:left" ondrop="return false;" onpaste="return false;" onkeypress="return this.value.length <= 40"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <th>First Name: *</th><td><asp:TextBox runat="server" ID="txtFirstName" type="text" name="first name" class="form-control" required="required" style="text-align:left" ondrop="return false;" onpaste="return false;" onkeypress="return this.value.length <= 40"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <th>Middle Name:</th><td><asp:TextBox runat="server" ID="txtMiddleName" type="text" name="middle name" class="form-control" style="text-align:left" ondrop="return false;" onpaste="return false;" onkeypress="return this.value.length <= 40"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <th>Grade *:</th><td><asp:DropDownList ID="ddlGrade" runat="server" >
                            <asp:ListItem Value="G11">11</asp:ListItem>
                            <asp:ListItem Value="G12">12</asp:ListItem>
                            </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <th>SHS Strand *:</th><td><asp:DropDownList ID="ddlStrand" runat="server" >
                            <asp:ListItem Value="ABM">Accounting, Business, and Management</asp:ListItem>
                            <asp:ListItem Value="CCT">Computer and Communications Technology</asp:ListItem>
                            <asp:ListItem Value="CULART">Culinary Arts</asp:ListItem>
                            <asp:ListItem Value="GAS">General Academic Strand</asp:ListItem>
                            <asp:ListItem Value="HOP">Hotel Operations</asp:ListItem>
                            <asp:ListItem Value="IT">IT in Mobile App and Web Development</asp:ListItem>
                            <asp:ListItem Value="RBO">Restaurant and Bar Operations</asp:ListItem>
                            <asp:ListItem Value="TOP">Tourism Operations</asp:ListItem>
                            </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <th colspan="2" style="font-size:15px;text-align:center;">any fields with an asterisk (*) are required.</th>
                        </tr>
                    </table>
        <p style="text-align:center"><asp:Button ID="btnStartVote" runat="server" Text="Start Voting >>" class="btn btn-primary btn-lg" OnClick="btnStartVote_Click"/>
        </p>
    </div>

    <div runat="server" id="ballot" visible="false" class="jumbotron">
        <h1>Welcome, <asp:Label runat="server" ID="lblStudentName" Text="STUDENTNAMEHERE" />! You may now vote.</h1>
        <p class="lead" style="text-align: left">Voter's name: <asp:Label runat="server" ID="lblFullName" Text="FULLNAMEHERE" /><br />
            Voter's Strand: <asp:Label runat="server" ID="lblStrand" Text="STRAND HERE" /></p>
    </div>
    

</asp:Content>
