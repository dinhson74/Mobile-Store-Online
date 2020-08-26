<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uscDANGKY.ascx.cs" Inherits="webQuanLyBanHang4._0.uscDANGKY" %>
<style type="text/css">
        .auto-style6 {
        width: 222px;
    }
        .auto-style11 {
        width: 463px;
    }
        .auto-style22 {
            height: 14px;
            width: 222px;
        }
        .auto-style23 {
            width: 463px;
            height: 14px;
        }
        .auto-style20 {
            height: 20px;
            width: 222px;
        }
        .auto-style21 {
            width: 463px;
            height: 20px;
        }
        .auto-style18 {
            height: 18px;
            width: 222px;
        }
        .auto-style19 {
            width: 463px;
            height: 18px;
        }
        .auto-style14 {
            height: 31px;
            width: 222px;
        }
        .auto-style15 {
            height: 31px;
            width: 463px;
        }
        .auto-style24 {
            height: 19px;
            width: 222px;
        }
        .auto-style25 {
            width: 463px;
            height: 19px;
        }
        .auto-style9 {
            width: 222px;
            height: 24px;
        }
        .auto-style10 {
            height: 24px;
            width: 463px;
        }
        .auto-style7 {
            height: 23px;
            width: 222px;
        }
        .auto-style12 {
            width: 463px;
            height: 23px;
        }
        .auto-style27 {
        width: 96%;
        height: 422px;
    }
    .auto-style28 {
        width: 222px;
        height: 26px;
    }
    .auto-style29 {
        width: 463px;
        height: 26px;
    }
        .auto-style30 {
        text-align: left;
    }
        </style>
    <table class="auto-style27">
        <tr>
            <td class="auto-style30"  colspan="2"><strong>ĐĂNG KÝ THÀNH VIÊN&nbsp;</strong></td>
            <tr>
            <td class="auto-style6">Họ Tên (*)</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtTENKH" runat="server" Width="195px"></asp:TextBox>              
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTENKH" ForeColor="Red" ErrorMessage="*Bạn chưa nhập họ tên"></asp:RequiredFieldValidator>              
             
 </tr>
        <tr>
            <td class="auto-style22">Tên Đăng Nhập (*)</td>
            <td class="auto-style23">
                <asp:TextBox ID="txtTENDANGNHAP" runat="server" Width="195px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTENDANGNHAP" ForeColor="Red" ErrorMessage="*Bạn chưa nhập tên đăng nhập"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">Mật Khẩu (*)</td>
            <td class="auto-style21">
                <asp:TextBox ID="txtMATKHAU" runat="server" Width="195px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMATKHAU" ForeColor="Red" ErrorMessage="*Bạn chưa nhập mật khẩu"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Xác Nhân Mật Khẩu (*)</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtMATKHAU_XACNHAN" runat="server" Width="195px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMATKHAU_XACNHAN" ForeColor="Red" ErrorMessage="*Bạn Chưa Nhập Mật Khẩu Xác Nhận"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">Giới Tính</td>
            <td class="auto-style19">
                <asp:RadioButtonList ID="rdbtGIOITINH" runat="server" RepeatDirection="Horizontal" Width="199px">
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">Ngày Sinh</td>
            <td class="auto-style29">
                <asp:TextBox ID="txtNGAYSINH" runat="server" Width="195px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Sở Thích</td>
            <td class="auto-style15">
                <asp:TextBox ID="txtSOTHICH" runat="server" Width="195px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">Nghề Nghiệp</td>
            <td class="auto-style29">
                <asp:TextBox ID="txtNGHENGHIEP" runat="server" Width="195px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Trình Độ</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtTRINHDO" runat="server" Width="195px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">Địa Chỉ</td>
            <td class="auto-style25">
                <asp:TextBox ID="txtDIACHI" runat="server" Width="195px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Email</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtEMAIL" runat="server" Width="195px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">Thông tin điều khoản</td>
            <td class="auto-style29">
                <asp:TextBox ID="txtTHONGTINDIEUKHOAN" runat="server" Width="195px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style11">
                <asp:CheckBox ID="ckbDIEUKHOAN" runat="server"  Text="Tôi chấp nhận điều khoản này" OnCheckedChanged="ckbDIEUKHOAN_CheckedChanged"  />
            </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style12">
                <asp:Button ID="btnDANGKY" runat="server" Text="Đăng Ký" />
            </td>
        </tr>
        </table>

