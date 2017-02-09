<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="left: 579px; top: 61px; width: 24%; height: auto; background-color: #EFF3FB; float: right; overflow: auto;">
        <asp:ScriptManager ID="ScriptManager2" runat="server" />
            <asp:Timer ID="Timer2" Interval="2000" runat="server" />

            <asp:UpdatePanel ID="up2" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer2" EventName="Tick" />
                </Triggers>
                <ContentTemplate>
                    <asp:AdRotator Height="500px" Width="260px" ID="AdRotator2" Target="_blank" runat="server" AdvertisementFile="~/adv.xml" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
