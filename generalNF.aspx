<%@ Page Language="C#" AutoEventWireup="true" CodeFile="generalNF.aspx.cs" Inherits="generalNF" MasterPageFile="~/MasterPage.master" Title="generalNF" %>

<asp:Content ID="content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <div>
        <br />
        <asp:TextBox ID="xmlTitle" placeholder="Title" runat="server" Width="760px" />
        <br />
        <br />
        <asp:TextBox ID="xmlContent" placeholder="Content" runat="server" Height="83px" TextMode="MultiLine" Width="760px" />
        <br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="button" runat="server" Text="Submit" OnClick="button_Click" />
        <br />
        <div>
            <h1 style="text-align: center">NEWS FEEDS </h1>
            <marquee  behavior="scroll" direction="up" onmouseover="this.stop();" onmouseout="this.start();">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="newsfeedsource">
                <LayoutTemplate>
                    <div id="ItemPlaceHolderContainer" runat="server">
                        <span id="ItemPlaceHolder" runat="server"></span>
                    </div>
                </LayoutTemplate>
                <ItemTemplate>

                    <h2 style="margin: 0 0 .5em 0; text-align: center"><%#XPath("title")%></h2>
                    <p style="margin: 0 0 .1em 0; text-align: center"><%#XPath("contents")%></p>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:ListView></marquee>
            <asp:XmlDataSource ID="newsfeedsource" runat="server" DataFile="~/newsfeed.xml"></asp:XmlDataSource>
        </div>
    </div>
</asp:Content>
