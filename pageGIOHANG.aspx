<%@ Page Title="" Language="C#" MasterPageFile="~/MasterUser.Master" AutoEventWireup="true" CodeBehind="pageGIOHANG.aspx.cs" Inherits="webQuanLyBanHang4._0.pageGIOHANG" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="725px" CellPadding="4" Font-Strikeout="False" GridLines="None" ShowFooter="True" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
          <asp:BoundField DataField="IDMASP" HeaderText="Mã sản phẩm"  /> 
            <asp:BoundField DataField="TENSP" HeaderText="Tên sản phẩm" />
            <asp:BoundField DataField="SOLUONG" HeaderText="Số lượng" />
            <asp:BoundField DataField="DONGIA" HeaderText="Đơn giá" />
            <asp:ImageField DataImageUrlField="HINHANH" HeaderText="Hình ảnh">
                <ControlStyle Width ="50" height="60" />
            </asp:ImageField>
            <asp:BoundField DataField="THANHTIEN" HeaderText="Thành tiền" />
            <asp:TemplateField HeaderText="Xóa Sản Phẩm">
                <ItemTemplate>
                    <asp:CheckBox ID="ckbITEM" runat="server"  />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:Button ID="btnXoa" runat="server" Text="Xóa" OnClick="btnXoa_Click" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnThanhtoan" runat="server" Text="Thanh Toán" />
</asp:Content>
