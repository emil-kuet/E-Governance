<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" MasterPageFile="~/MasterPage.master" Title="home" %>


<asp:Content ID="content3" ContentPlaceHolderID="ContentPlaceHolder3" runat=server>
        <div>
            <h2 style="text-align:center">Your Comunity</h2>
            <asp:ListView ID="lvCustomers" runat="server" GroupPlaceholderID="groupPlaceHolder1"
                ItemPlaceholderID="itemPlaceHolder1">
                <LayoutTemplate>
                    <table class="table table-striped">
                        <tr>
                            <th>User Name
                            </th>
                            <th>First Name
                            </th>
                            <th>Last Name
                            </th>
                            <th>Emil
                            </th>
                            <th>sex
                            </th>
                            <th>location
                            </th>
                        </tr>
                        <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                        <tr>
                            <td colspan="4">
                                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lvCustomers" PageSize="10">
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <GroupTemplate>
                    <tr>
                        <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>

                    <td>
                        <%# Eval("username") %>
                    </td>
                    <td>
                        <%# Eval("fname") %>
                    </td>
                    <td>
                        <%# Eval("lname") %>
                    </td>
                    <td>
                        <%#Eval("emil") %>
                    </td>
                    <td>
                        <%#Eval("sex") %>
                    </td>
                    <td>
                        <%# Eval("location") %>
                    </td>

                </ItemTemplate>
            </asp:ListView>
        </div>

</asp:Content>









