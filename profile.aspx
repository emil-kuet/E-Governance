<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" MasterPageFile="~/MasterPage.master" Title="profile" %>

<asp:Content ID="content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <div style="margin-left: 59px">
        <br />
        <br />

        <br />

        <br />



        <asp:Label ID="Label1" runat="server" Width="100px">User Name</asp:Label>
        <asp:TextBox ID="username" runat="server" Width="184px" ReadOnly="True"></asp:TextBox><br />

        <asp:Label ID="Label2" runat="server" Width="100px">Frist Name</asp:Label>
        <asp:TextBox ID="fname" runat="server" Width="184px"></asp:TextBox><br />

        <asp:Label ID="Label3" runat="server" Width="100px">last Name</asp:Label>
        <asp:TextBox ID="lname" runat="server" Width="184px"></asp:TextBox><br />

        <asp:Label ID="Label4" runat="server" Width="100px">Emil</asp:Label>
        <asp:TextBox ID="emil" runat="server" Width="183px"></asp:TextBox>
        
        <br />
        <br />
        
        <asp:Label ID="Label10" runat="server" Width="100px">Old Password</asp:Label>
        <asp:TextBox ID="oldpassword" runat="server" Width="183px" TextMode="Password"></asp:TextBox>
        <asp:Label ID="opl" runat="server"></asp:Label>
        <br />
        <br />
        

        <asp:Label ID="Label5" runat="server" Width="100px">Password</asp:Label>
        <asp:TextBox ID="password" runat="server" Width="183px" TextMode="Password"></asp:TextBox><br />

        <asp:Label ID="Label6" runat="server" Width="100px">Sex</asp:Label>
        <asp:TextBox ID="sex" runat="server" Width="183px"></asp:TextBox><br />

        <asp:Label ID="Label7" runat="server" Width="100px">Location</asp:Label>
        <asp:TextBox ID="location" runat="server" Width="183px"></asp:TextBox><br />

        <asp:Label ID="Label8" runat="server" Width="100px">ID-card Number</asp:Label>
        <asp:TextBox ID="idcard" runat="server" Width="183px"></asp:TextBox><br />

        <asp:Label ID="Label9" runat="server" Width="100px">Passport Number</asp:Label>
        <asp:TextBox ID="passport" runat="server" Width="183px"></asp:TextBox>
        <br />



        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Button ID="cmdUpdate" runat="server" Text="Update" class="btn btn-success" OnClick="cmdUpdate_Click"></asp:Button>&nbsp;
      <br />


        <asp:Label ID="lblResults" runat="server" Width="575px" Height="121px" Font-Bold="True"></asp:Label>
    </div>

</asp:Content>
