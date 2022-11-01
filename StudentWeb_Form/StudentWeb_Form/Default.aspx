<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudentWeb_Form._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div style ="font-size:x-large" align="center">Student Info Manage Form</div>
        <br />

        <table class="nav-justified" style="height: 490px">
            <tr>
                <td style="width: 261px; height: 20px"></td>
                <td style="height: 20px; width: 278px">Student ID</td>
                <td style="height: 20px">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="241px"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" BackColor="#286090" BorderColor="White" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="31px" OnClick="Button5_Click" Text="GET" Width="92px" />
                </td>
            </tr>
            <tr>
                <td style="width: 261px">&nbsp;</td>
                <td style="width: 278px">Student Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="241px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 261px">&nbsp;</td>
                <td style="width: 278px">Address</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="19px">
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                        <asp:ListItem>Andhrapradesh</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 261px; height: 46px;"></td>
                <td style="width: 278px; height: 46px;">Age</td>
                <td style="height: 46px">
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="241px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 261px">&nbsp;</td>
                <td style="width: 278px">Contact</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="241px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 261px">&nbsp;</td>
                <td style="width: 278px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 261px">&nbsp;</td>
                <td style="width: 278px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#286090" BorderColor="White" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="31px" OnClick="Button1_Click" Text="Insert" Width="92px" />
&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="#286090" BorderColor="White" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="31px" OnClick="Button2_Click" Text="Update" Width="92px" />
&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="#286090" BorderColor="White" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="31px" OnClick="Button3_Click" OnClientClick="return confirm('Are you sure to Delete?');" Text="Delete" Width="92px" />
&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" BackColor="#286090" BorderColor="White" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="31px" OnClick="Button4_Click" Text="Search" Width="92px" />
                </td>
            </tr>
            <tr>
                <td style="width: 261px">&nbsp;</td>
                <td style="width: 278px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 261px">&nbsp;</td>
                <td style="width: 278px">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" style="margin-left: 0px" Width="679px">
                    </asp:GridView>
                </td>
            </tr>
        </table>

    </div>

</asp:Content>
