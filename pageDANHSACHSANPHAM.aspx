<%@ Page Title="" Language="C#" MasterPageFile="~/MasterUser.Master" AutoEventWireup="true" CodeBehind="pageDANHSACHSANPHAM.aspx.cs" Inherits="webQuanLyBanHang4._0.pageDANHSACHSANPHAM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DLSANPHAM" runat="server" RepeatColumns="3" >
        <ItemTemplate>
            <a href="pageCHITIETSANPHAM.aspx?MASP=<%#Eval("IDMASP") %>">
            <img src="<%# Eval("HINHANH") %>"" Width ="250" height="280"/>
             </a>
            <br>    
            Tên ĐT: <%# Eval("TENSP") %>
            <br />
            Giá bán: <%#Eval("DONGIA") %> VNĐ
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
