<%@ Page Title="" Language="C#" MasterPageFile="~/QUANTRIWEB/QUANTRI.Master" AutoEventWireup="true" CodeBehind="pageQUANLYSANPHAM.aspx.cs" Inherits="webQuanLyBanHang4._0.QUANTRIWEB.pageQUANLYSANPHAM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 213px;
        }
        .auto-style9 {
            width: 213px;
            height: 9px;
        }
        .auto-style10 {
            height: 9px;
        }
        .auto-style11 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table style="width:100%;">
            <tr>
                <td colspan="2"><strong>QUẢN LÝ SẢN PHẨM</strong></td>
            </tr>
            <tr>
                <td class="auto-style8">Mã sản phẩm</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Tên sản phảm</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txttensp" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Số lượng</td>
                <td>
                    <asp:TextBox ID="txtsoluong" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Đơn giá</td>
                <td>
                    <asp:TextBox ID="txtdongia" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Mã danh mục</td>
                <td>
                    <asp:DropDownList ID="drldm" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Hình ảnh</td>
                <td>
                    <asp:FileUpload ID="uploadanh" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="2"><strong>Mô tả</strong></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="txtmota" runat="server" Height="107px" Width="584px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnthemmoi" runat="server" Text="Thêm mới" OnClick="btnthemmoi_Click" />
                   
                </td>
            </tr>
        </table>
    </p>
    <p class="auto-style7">
        <asp:GridView ID="gvsanpham" runat="server" AutoGenerateColumns="False" AllowPaging="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnPageIndexChanging="gvsanpham_PageIndexChanging" PageSize="5" OnRowEditing="gvsanpham_RowEditing" OnRowUpdating="gvsanpham_RowUpdating" OnRowDeleting="gvsanpham_RowDeleting" OnRowCancelingEdit="gvsanpham_RowCancelingEdit">
            <Columns>
                <asp:TemplateField HeaderText="IDMASP">
                    <ItemTemplate>
                        <asp:Label ID="lbMASP" runat="server" Text='<%#Eval("IDMASP") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TENSP">
                     <ItemTemplate>
                        <asp:Label ID="Labe2" runat="server" Text='<%#Eval("TENSP") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtTENSP" runat="server" Text='<%#Eval("TENSP") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SOLUONG">
                     <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("SOLUONG") %>'></asp:Label>
                    </ItemTemplate>
                     <EditItemTemplate>
                        <asp:TextBox ID="txtSOLUONG" runat="server" Text='<%#Eval("SOLUONG") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DONGIA">
                     <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("DONGIA") %>'></asp:Label>
                    </ItemTemplate>
                     <EditItemTemplate>
                        <asp:TextBox ID="txtDONGIA" runat="server" Text='<%#Eval("DONGIA") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="HINHANH">
                     <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("HINHANH") %>'></asp:Label>
                    </ItemTemplate>
                     <EditItemTemplate>
                           <asp:TextBox ID="txtHINHANH" runat="server" Text='<%#Eval("HINHANH") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MOTA">
                     <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%#Eval("MOTA") %>'></asp:Label>
                    </ItemTemplate>
                     <EditItemTemplate>
                        <asp:TextBox ID="txtMOTA" runat="server" Text='<%#Eval("MOTA") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="IDMADM">
                     <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%#Eval("IDMADM") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="drlMADM" runat="server"></asp:DropDownList>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" EditText="UPDATE" ShowEditButton="True" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
    </p>
</asp:Content>
