<%@ Page Title="" Language="C#" MasterPageFile="~/MasterUser.Master" AutoEventWireup="true" CodeBehind="pageDANGKY.aspx.cs" Inherits="webQuanLyBanHang4._0.pageDANGKY" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 23px;
            width: 335px;
        }
        .auto-style27 {
        width: 61%;
    }
    .auto-style26 {
        text-align: center;
    }
        .auto-style6 {
        width: 170px;
    }
        .auto-style22 {
            height: 14px;
            width: 191px;
        }
        .auto-style23 {
            width: 490px;
            height: 14px;
        }
        .auto-style20 {
            height: 20px;
            width: 191px;
        }
        .auto-style21 {
            width: 490px;
            height: 20px;
        }
        .auto-style18 {
            height: 18px;
            width: 191px;
        }
        .auto-style19 {
            width: 490px;
            height: 18px;
            text-align: left;
        }
        .auto-style28 {
            width: 191px;
            height: 26px;
        }
    .auto-style29 {
            width: 490px;
            height: 26px;
        }
        .auto-style14 {
            height: 31px;
            width: 191px;
        }
        .auto-style15 {
            height: 31px;
            width: 490px;
        }
        .auto-style24 {
            height: 19px;
            width: 191px;
        }
        .auto-style25 {
            width: 490px;
            height: 19px;
        }
        .auto-style9 {
            width: 191px;
            height: 24px;
        }
        .auto-style10 {
            height: 24px;
            width: 490px;
        }
        .auto-style7 {
            height: 23px;
            width: 191px;
        }
        .auto-style12 {
            width: 490px;
            height: 23px;
        }
        .auto-style31 {
            width: 191px;
            height: 35px;
        }
        .auto-style32 {
            width: 490px;
            height: 35px;
        }
        .auto-style33 {
            width: 191px;
            height: 39px;
        }
        .auto-style34 {
            width: 490px;
            height: 39px;
        }
        .auto-style35 {
            height: 30px;
            width: 191px;
        }
        .auto-style36 {
            height: 30px;
            width: 490px;
        }
        .auto-style37 {
            width: 191px;
            height: 37px;
        }
        .auto-style38 {
            width: 490px;
            height: 37px;
        }
        .auto-style39 {
            width: 191px;
            height: 33px;
        }
        .auto-style40 {
            width: 490px;
            height: 33px;
        }
        .auto-style41 {
            font-size: medium;
        }
        .auto-style42 {
            height: 23px;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style27" align="center" style="background-image: url('App_Themes/background.jpg')">
    <tr>
        <td class="auto-style26" colspan="2">
            <h2  font-style: italic; color: #FF0000;">ĐĂNG KÝ THÀNH VIÊN&nbsp;</h2>
            <p  font-style: italic; color: #FF0000;">
            <asp:Label ID="lbthongbaodk" runat="server" Font-Size="25px" ForeColor="Red"></asp:Label>
            </p>
        </td>
    <tr>
        <td class="auto-style22"><strong>Tên Đăng Nhập (*)</strong></td>
        <td class="auto-style23">
            <asp:TextBox ID="txtTENDANGNHAP" runat="server" Width="198px" Height="25px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTENDANGNHAP" ForeColor="Red" ErrorMessage="*Bạn chưa nhập tên đăng nhập"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style20"><strong>Mật Khẩu (*)</strong></td>
        <td class="auto-style21">
            <asp:TextBox ID="txtMATKHAU" runat="server" Width="198px" Height="25px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMATKHAU" ForeColor="Red" ErrorMessage="*Bạn chưa nhập mật khẩu"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style33"><strong>Xác Nhân Mật Khẩu (*)</strong></td>
        <td class="auto-style34">
            <asp:TextBox ID="txtMATKHAU_XACNHAN" runat="server" Width="198px" Height="25px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMATKHAU_XACNHAN" ForeColor="Red" ErrorMessage="*Mật khẩu xác nhận không đúng"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
        <td class="auto-style31"><strong>Họ Tên </strong> </td>
        <td class="auto-style32">
            <asp:TextBox ID="txtTENKH" runat="server" Width="198px" Height="25px"></asp:TextBox>
            
        </tr>
        </tr>
    <tr>
        <td class="auto-style18"><strong>Giới Tính</strong></td>
        <td class="auto-style19">
            <asp:RadioButtonList ID="rdbtGIOITINH" runat="server" RepeatDirection="Horizontal" Width="199px" Height="25px">
                <asp:ListItem>Nam</asp:ListItem>
                <asp:ListItem>Nữ</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Ngày Sinh</strong></td>
        <td class="auto-style29">
            <asp:TextBox ID="txtNGAYSINH" runat="server" Width="198px" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Sở Thích</strong></td>
        <td class="auto-style15">
            <asp:TextBox ID="txtSOTHICH" runat="server" Width="198px" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Nghề Nghiệp</strong></td>
        <td class="auto-style29">
            <asp:TextBox ID="txtNGHENGHIEP" runat="server" Width="198px" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style35"><strong>Trình Độ</strong></td>
        <td class="auto-style36">
            <asp:TextBox ID="txtTRINHDO" runat="server" Width="198px" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style24"><strong>Địa Chỉ</strong></td>
        <td class="auto-style25">
            <asp:TextBox ID="txtDIACHI" runat="server" Width="198px" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Email</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="txtEMAIL" runat="server" Width="198px" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style37"><strong>Thông tin điều khoản</strong></td>
        <td class="auto-style38">
            <asp:TextBox ID="txtTHONGTINDIEUKHOAN" runat="server" Width="198px" Height="25px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style39"></td>
        <td class="auto-style40" Height="25px">
            <strong><em>
            <asp:CheckBox ID="ckbDIEUKHOAN" runat="server" Text="Tôi chấp nhận điều khoản này" CssClass="auto-style41"/>
            </em></strong>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"></td>
        <td class="auto-style12">
            <asp:Button ID="btnDANGKY" runat="server" Text="Đăng Ký" OnClick="btnDANGKY_Click" style="height: 26px"  />
        </td>
    </tr>
    <tr>
        <td class="auto-style42" colspan="2">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
