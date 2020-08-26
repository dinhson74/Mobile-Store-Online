<%@ Page Title="" Language="C#" MasterPageFile="~/MasterUser.Master" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="webQuanLyBanHang4._0.LOGIN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 303px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            width: 159px;
        }
        .auto-style11 {
            width: 500px;
            height: 204px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style11" style="background-image: url('App_Themes/background login.jpg')">
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="2" font-size: 30px;">
                <h1><strong><em>ĐĂNG NHẬP VÀO HỆ THỐNG</em></strong></h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="font-size: 20px"><strong>Tên đăng nhập (*)</strong></td>
            <td style="font-size: 20px">
                <asp:TextBox ID="txttendangnhap" runat="server" Width="220px" Height="30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="font-size: 20px"><strong>Mật khẩu (*)</strong></td>
            <td style="font-size: 20px">
                <asp:TextBox ID="txtmatkhau" runat="server" Width="220px"  Height="30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>
                <asp:Button ID="btndangnhap" runat="server" Text="ĐĂNG NHẬP" Width="92px" Height="30px" OnClick="btndangnhap_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="2">
                <asp:Label ID="lbthongbao" runat="server" Font-Names="Arial Narrow" Font-Size="20px" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
