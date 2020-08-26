<%@ Page Title="" Language="C#" MasterPageFile="~/MasterUser.Master" AutoEventWireup="true" CodeBehind="pageCHITIETSANPHAM.aspx.cs" Inherits="webQuanLyBanHang4._0.pageCHITIETSANPHAM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater2" runat="server">
       <ItemTemplate>
        <table>
            <tr style ="text-align:left;vertical-align: top">
                <td>
                    <img  src="<%# Eval("HINHANH")  %> " Width ="250" height="280" />           
                </td>
                <td>
                    <h3> Tên điện thoại: <%# Eval("TENSP") %></h3>    
                    
                <hr />
                <br>
                Giá bán: <%# Eval("DONGIA") %> VNĐ
                    <hr />
                    <br>
               Mô tả: <%# Eval("MOTA") %> G
                </td>        
            </tr>
        </table>
      </ItemTemplate>
    </asp:Repeater>
    <asp:DropDownList ID="drSOLUONG" runat="server"></asp:DropDownList>
    <asp:Button ID="btnGIOHANG" runat="server" Text="Giỏ Hàng" OnClick="btnGIOHANG_Click" />
</asp:Content>
