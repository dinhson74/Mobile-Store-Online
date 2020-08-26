<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uscLOGIN.ascx.cs" Inherits="webQuanLyBanHang4._0.uscLOGIN" %>
<style type="text/css">
    .auto-style1 {
        height: 22px;
    }
    .auto-style2 {
        height: 22px;
        width: 129px;
    }
    .auto-style3 {
        width: 129px;
    }
    .auto-style4 {
        width: 35%;
    }
    .auto-style5 {
        height: 22px;
        text-align: center;
    }
    .auto-style6 {
        text-align: center;
    }
</style>

<table class="auto-style4">
    <tr>
        <td class="auto-style5" colspan="2">Đăng Nhập</td>
    </tr>
    <tr>
        <td class="auto-style2">Tên Đăng Nhập</td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox1" runat="server" Width="165px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Mật Khẩu</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="165px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="2">
            <asp:Button ID="btnDangnhap" runat="server" Text="Đăng Nhập" />
        </td>
    </tr>
</table>

