<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="hrSystem.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="registerForm" runat="server" style="background-image: url('http://localhost:57893/images/kisspng-invoice-discounting-finance-cash-flow-financial-business-card-5b2a566bdde706.6909013915295012919089.png'); background-repeat: no-repeat">
        <div style="width: 1400px; height: 900px; ">
            <div style="font-weight: 900; font-size: xx-large; margin-top: 10px">
                <p>
                    GpT HR Tool
                </p>
            </div>
            <table>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="header" runat="server" Text="New Employee registration form " Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="header2" runat="server" Text="All fields are mandatory!!!" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
            <table style="margin-top: 20px; margin-right: 0px; margin-bottom: 0px;">
                <tr>
                    <td>
                        <asp:Label ID="firstname" runat="server" Text="FirstName"></asp:Label>
                        
                    </td>
                    
                    <td>
                        <asp:TextBox ID="fn" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="secondname" runat="server" Text="SecondName"></asp:Label>
                        
                    </td>
                    
                    <td>
                        <asp:TextBox ID="sn" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lastname" runat="server" Text="LastName"></asp:Label>
                        
                    </td>
                    
                    <td>
                        <asp:TextBox ID="ln" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="department" runat="server" Text="Department"></asp:Label>
                        
                    </td>
                    
                    <td>
                        <asp:TextBox ID="dpt" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="employeeID" runat="server" Text="EmployeeID"></asp:Label>
                        
                    </td>
                    
                    <td>
                        <asp:TextBox ID="eID" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="manager" runat="server" Text="Manager"></asp:Label>
                        
                    </td>
                    
                    <td>
                        <asp:TextBox ID="mng" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="username" runat="server" Text="UserName"></asp:Label>
                        
                    </td>
                    
                    <td class="auto-style1">
                        <asp:TextBox ID="un" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="password" runat="server" Text="Password" Visible="True"></asp:Label>
                        
                    </td>
                    
                    <td>
                        <asp:TextBox ID="psw" TextMode="Password" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    
                    <td>
                        <table>
                            <tr>
                                <td style="padding-right: 80px">
                                    <asp:Button ID="Register" runat="server" Text="Register" OnClick="Register_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="Reset" runat="server" Text="Reset" OnClick="Reset_Click" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
