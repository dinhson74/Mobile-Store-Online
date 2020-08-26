<%@ Page Title="" Language="C#" MasterPageFile="~/QUANTRIWEB/QUANTRI.Master" AutoEventWireup="true" CodeBehind="pageQUANLYDANHMUC.aspx.cs" Inherits="webQuanLyBanHang4._0.QUANTRIWEB.pageQUANLYDANHMUC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 118px;
            height: 35px;
        }
        .auto-style10 {
            height: 36px;
            width: 954px;
        }
        .auto-style12 {
            height: 30px;
        }
        .auto-style13 {
            height: 35px;
        }
        .auto-style14 {
            width: 100%;
            height: 314px;
        }
        .auto-style15 {
            width: 114px;
            height: 35px;
            text-align: center;
        }
        .auto-style16 {
            text-align: left;
        }
        .auto-style17 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style10" colspan="2">QUẢN LÝ DANH MỤC</td>
        </tr>
        <tr>
            <td class="auto-style15"> Mã danh mục cha</td>
            <td class="auto-style12">
                <asp:DropDownList ID="drDANHMUCCHA" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Tên Danh Mục</td>
            <td class="auto-style13">
                <asp:TextBox ID="txtTENDM" runat="server" Width="123px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style16">
                <asp:Button ID="btnTHEM" runat="server" Text="Thêm Mới" OnClick="btnTHEM_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           
                <div class="auto-style17">
                           
                <asp:GridView ID="gvDANHMUC" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="465px" OnPageIndexChanging="gvDANHMUC_PageIndexChanging" AllowPaging="True" PageSize="4" OnRowEditing="gvDANHMUC_RowEditing" OnRowUpdating="gvDANHMUC_RowUpdating" OnRowDeleting="gvDANHMUC_RowDeleting" CellSpacing="2" OnRowCancelingEdit="gvDANHMUC_RowCancelingEdit" >
                    <Columns>
                        <asp:TemplateField HeaderText="Mã danh mục">
                                <ItemTemplate>
                                <asp:Label ID="lbMADM" runat="server" Text='<%# Eval("IDMADM") %>'></asp:Label>
                            </ItemTemplate> 
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Tên danh mục">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENDM") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtTENDM" runat="server" Text='<%# Eval("TENDM") %>'></asp:TextBox>
                            </EditItemTemplate>
                         </asp:TemplateField>

                        <asp:TemplateField HeaderText="Danh mục cha">
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("IDPARENT") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="drMADANHMUCHA" runat="server"></asp:DropDownList> 
                             </EditItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
               
                </div>
               
            </td>
        </tr>
        </table>
</asp:Content>
