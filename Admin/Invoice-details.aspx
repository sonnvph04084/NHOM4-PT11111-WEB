<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.master" AutoEventWireup="true" CodeFile="Invoice-details.aspx.cs" Inherits="Admin_Invoice_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleAdminSite" Runat="Server">
       Chi tiết hóa đơn
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminTheme" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ms" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            ms:
            <asp:Label ID="msLabel1" runat="server" Text='<%# Eval("ms") %>' />
            <br />
            ms_hoa_don:
            <asp:TextBox ID="ms_hoa_donTextBox" runat="server" Text='<%# Bind("ms_hoa_don") %>' />
            <br />
            ms_san_pham:
            <asp:TextBox ID="ms_san_phamTextBox" runat="server" Text='<%# Bind("ms_san_pham") %>' />
            <br />
            so_luong:
            <asp:TextBox ID="so_luongTextBox" runat="server" Text='<%# Bind("so_luong") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table style="width: 800px;">
                <tr>
                    <td>ID</td>
                    <td><asp:TextBox ID="msTextBox" runat="server" Text='<%# Bind("ms") %>' class="form-submit"/></td>
                    <td>ID Hóa Đơn</td>
                    <td><asp:TextBox ID="ms_hoa_donTextBox" runat="server" Text='<%# Bind("ms_hoa_don") %>' class="form-submit"/></td>
                </tr>
                <tr>
                    <td>ID Sản Phẩm</td>
                    <td><asp:TextBox ID="ms_san_phamTextBox" runat="server" Text='<%# Bind("ms_san_pham") %>' class="form-submit"/></td>
                    <td>Số Lượng</td>
                    <td><asp:TextBox ID="so_luongTextBox" runat="server" Text='<%# Bind("so_luong") %>' class="form-submit"/></td>
                </tr>  
                <tr>
                    <td></td>
                    <td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm" class="btn btn-success btn-sm"/>
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" class="btn btn-danger btn-sm"/></td>
                </tr>              
            </table>
        </InsertItemTemplate>
        <ItemTemplate>
            ms:
            <asp:Label ID="msLabel" runat="server" Text='<%# Eval("ms") %>' />
            <br />
            ms_hoa_don:
            <asp:Label ID="ms_hoa_donLabel" runat="server" Text='<%# Bind("ms_hoa_don") %>' />
            <br />
            ms_san_pham:
            <asp:Label ID="ms_san_phamLabel" runat="server" Text='<%# Bind("ms_san_pham") %>' />
            <br />
            so_luong:
            <asp:Label ID="so_luongLabel" runat="server" Text='<%# Bind("so_luong") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hoa_don_chi_tiet] WHERE [ms] = @ms" InsertCommand="INSERT INTO [hoa_don_chi_tiet] ([ms], [ms_hoa_don], [ms_san_pham], [so_luong]) VALUES (@ms, @ms_hoa_don, @ms_san_pham, @so_luong)" SelectCommand="SELECT * FROM [hoa_don_chi_tiet]" UpdateCommand="UPDATE [hoa_don_chi_tiet] SET [ms_hoa_don] = @ms_hoa_don, [ms_san_pham] = @ms_san_pham, [so_luong] = @so_luong WHERE [ms] = @ms">
        <DeleteParameters>
            <asp:Parameter Name="ms" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ms" Type="Int32" />
            <asp:Parameter Name="ms_hoa_don" Type="Int32" />
            <asp:Parameter Name="ms_san_pham" Type="Int32" />
            <asp:Parameter Name="so_luong" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ms_hoa_don" Type="Int32" />
            <asp:Parameter Name="ms_san_pham" Type="Int32" />
            <asp:Parameter Name="so_luong" Type="Int32" />
            <asp:Parameter Name="ms" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="ms" DataSourceID="SqlDataSource2" GridLines="Horizontal" Width="100%">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ms" HeaderText="ID" ReadOnly="True" SortExpression="ms" />
            <asp:BoundField DataField="ms_hoa_don" HeaderText="ID Hóa Đơn" SortExpression="ms_hoa_don" />
            <asp:BoundField DataField="ms_san_pham" HeaderText="ID Sản Phẩm" SortExpression="ms_san_pham" />
            <asp:BoundField DataField="so_luong" HeaderText="Số Lượng" SortExpression="so_luong" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hoa_don_chi_tiet] WHERE [ms] = @ms" InsertCommand="INSERT INTO [hoa_don_chi_tiet] ([ms], [ms_hoa_don], [ms_san_pham], [so_luong]) VALUES (@ms, @ms_hoa_don, @ms_san_pham, @so_luong)" SelectCommand="SELECT * FROM [hoa_don_chi_tiet]" UpdateCommand="UPDATE [hoa_don_chi_tiet] SET [ms_hoa_don] = @ms_hoa_don, [ms_san_pham] = @ms_san_pham, [so_luong] = @so_luong WHERE [ms] = @ms">
        <DeleteParameters>
            <asp:Parameter Name="ms" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ms" Type="Int32" />
            <asp:Parameter Name="ms_hoa_don" Type="Int32" />
            <asp:Parameter Name="ms_san_pham" Type="Int32" />
            <asp:Parameter Name="so_luong" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ms_hoa_don" Type="Int32" />
            <asp:Parameter Name="ms_san_pham" Type="Int32" />
            <asp:Parameter Name="so_luong" Type="Int32" />
            <asp:Parameter Name="ms" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

