<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 110px;
            margin-top: 0px;
        }
    </style>

    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <!-- modernizr enables HTML5 elements and feature detects -->
    <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>


</head>
<body bgcolor="#EFF3FB" style="margin-left: 25px; margin-right: 25px">

    <div>
        <img width="450px" height="75px" src="images/eGo-Bangladesh.gif" style="padding-left:400px" />
    </div>

    <form id="form1" runat="server">

        <div id="slideshow_container" style="float: left">
            <div class="slideshow">
                <ul class="slideshow">
                    <li class="show">
                        <img width="940px" height="250px" src="images/default1.jpg" alt="&quot;Enter your caption here&quot;" /></li>
                    <li>
                        <img width="940px" height="250px" src="images/default2.jpg" alt="&quot;Enter your caption here&quot;" /></li>
                    <li>
                        <img width="940px" height="250px" src="images/default3.jpg" alt="&quot;Enter your caption here&quot;" /></li>
                    <li>
                        <img width="940px" height="250px" src="images/default4.jpg" alt="&quot;Enter your caption here&quot;" /></li>
                    <li>
                        <img width="940px" height="250px" src="images/default5.jpg" alt="&quot;Enter your caption here&quot;" /></li>
                </ul>
            </div>
            <!--close slideshow-->
        </div>
        <!--close slideshow_container-->


        <!-- javascript at the bottom for fast page loading -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/image_slide.js"></script>



        <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#EFF3FB" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="107px" OnAuthenticate="Login1_Authenticate" Style="float: right; margin-right: 0px; margin-top: 0px; margin-left: 0px;" Width="285px">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
        </asp:Login>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        </br>
    <div style="float: right; height: 20px;">
        <p style="color: #3333FF; float: right; font-style: italic; font-size: x-large;">
            No account..!! Sign Up Here...<br />
        </p>
    </div>

        </br>
    </br>
    </br>
    <div style="float: right; width: 200px">
        <br>
        <asp:TextBox ID="TextBoxFN" runat="server" placeholder="Frist Name" Style="float: right"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxFN" ErrorMessage="Frist Name Required" ForeColor="Red" Style="float: right" Width="140px"></asp:RequiredFieldValidator>

        <br>
        <br>
        <asp:TextBox ID="TextBoxLN" runat="server" placeholder="Last Name" Style="float: right"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxLN" ErrorMessage="Last Name Required" ForeColor="Red" Style="float: right" Width="138px"></asp:RequiredFieldValidator>

        <br>
        <br>
        <asp:TextBox ID="TextBoxUN" runat="server" placeholder="User Name" Style="float: right"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User Name Required" ForeColor="Red" Style="float: right" Width="142px"></asp:RequiredFieldValidator>

        <br>
        <br>
        <asp:TextBox ID="TextBoxEmil" runat="server" placeholder="Emil Address" Style="float: right"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxEmil" ErrorMessage="Emil Address Required" ForeColor="Red" Style="float: right" Width="152px"></asp:RequiredFieldValidator>

        <br />
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmil" ErrorMessage="Enter A Valid Emil ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Style="float: right;" Width="321"></asp:RegularExpressionValidator>
        <br>
        <br>

        <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" placeholder="Password" Style="float: right"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password Required" ForeColor="Red" Style="float: right" Width="129px"></asp:RequiredFieldValidator>

        <br>
        <br>
        <asp:TextBox ID="TextBoxConPass" runat="server" TextMode="Password" placeholder="Confirm Password" Style="float: right"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxConPass" ErrorMessage="Confirm Password Required" ForeColor="Red" Style="float: right" Width="189px"></asp:RequiredFieldValidator>

        <br>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Both Password Must Be Same" ForeColor="Red" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxConPass" Style="float: right;" Width="375"></asp:CompareValidator>
        <br>

        <div style="float: right">
            <asp:RadioButtonList ID="radioSex" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <br>
        <br />

        <asp:TextBox ID="TextBoxLocation" runat="server" placeholder="Location" Style="float: right"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxLocation" ErrorMessage="Location Required" ForeColor="Red" Style="float: right" Width="123px"></asp:RequiredFieldValidator>

        <br>
        <br>
        <asp:TextBox ID="TextBoxID" runat="server" placeholder="ID Card Number" Style="float: right"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxID" ErrorMessage="ID Card Number Required" ForeColor="Red" Style="float: right" Width="174px"></asp:RequiredFieldValidator>

        <br>
        <br>
        <asp:TextBox ID="TextBoxPassportN" runat="server" placeholder="Passport Number" Style="float: right"> </asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBoxPassportN" ErrorMessage="Passport Number Requird" ForeColor="Red" Style="float: right" Width="168px"></asp:RequiredFieldValidator>
        
        <asp:Button ID="SignUp" runat="server" Text="SignUp!" Style="float: right" OnClick="SignUp_Click" />
        <br>
        <asp:Label ID="stslbl" runat="server"></asp:Label>
    </div>

        <div id="content">
            <div class="content_item">
                <h1>Welcome To E-governessBD</h1>
                <p>E-government (short for electronic government, also known as e-gov, Internet government, digital government, online government, or connected government) consists of the digital interactions between a citizen and their government (C2G), between governments and government agencies (G2G), between government and citizens (G2C), between government and employees (G2E), and between government and businesses/commerce (G2B). Essentially, e-government delivery models can be briefly.</p>
                <div class="content_container">
                    <p>Wikipidia</p>
                    <div class="button_small">
                        <a href="http://www.wikipedia.com">Read more</a>
                    </div>
                    <!--close button_small-->
                </div>
                <!--close content_container-->
                <div class="content_container">
                    <p>Degital-BD</p>
                    <div class="button_small">
                        <a href="http://www.wikipedia.com">Read more</a>
                    </div>
                    <!--close button_small-->
                </div>
                <!--close content_container-->

            </div>
            <!--close content_item-->
        </div>
        <!--close content-->
    </form>
</body>
</html>
