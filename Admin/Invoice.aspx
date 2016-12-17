<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.master" AutoEventWireup="true" CodeFile="Invoice.aspx.cs" Inherits="Admin_Invoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleAdminSite" Runat="Server">
    Hóa Đơn
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminTheme" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ms" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="600px">
        <EditItemTemplate>
            ms:
            <asp:Label ID="msLabel1" runat="server" Text='<%# Eval("ms") %>' />
            <br />
            trang_thai_hd:
            <asp:TextBox ID="trang_thai_hdTextBox" runat="server" Text='<%# Bind("trang_thai_hd") %>' />
            <br />
            ms_khach_hang:
            <asp:TextBox ID="ms_khach_hangTextBox" runat="server" Text='<%# Bind("ms_khach_hang") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table style="width: 800px;">
                <tr>
                    <td>ID Sản Phẩm</td>
                    <td><asp:TextBox ID="msTextBox" runat="server" Text='<%# Bind("ms") %>' /></td>
                    <td>Trạng Thái Hóa Đơn</td>
                    <td><asp:TextBox ID="trang_thai_hdTextBox" runat="server" Text='<%# Bind("trang_thai_hd") %>' /></td>
                    <td>Mã Khách Hàng</td>
                    <td><asp:TextBox ID="ms_khach_hangTextBox" runat="server" Text='<%# Bind("ms_khach_hang") %>' /></td>
                </tr>
                <p></p>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>                
            </table>
            <p style="padding:10px;margin-left:9%;">
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm hóa đơn" class="btn btn-success btn-sm"/>
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" class="btn btn-danger btn-sm"/>
            </p>
        </InsertItemTemplate>
        <ItemTemplate>
            ms:
            <asp:Label ID="msLabel" runat="server" Text='<%# Eval("ms") %>' />
            <br />
            trang_thai_hd:
            <asp:Label ID="trang_thai_hdLabel" runat="server" Text='<%# Bind("trang_thai_hd") %>' />
            <br />
            ms_khach_hang:
            <asp:Label ID="ms_khach_hangLabel" runat="server" Text='<%# Bind("ms_khach_hang") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hoa_don] WHERE [ms] = @ms" InsertCommand="INSERT INTO [hoa_don] ([ms], [trang_thai_hd], [ms_khach_hang]) VALUES (@ms, @trang_thai_hd, @ms_khach_hang)" SelectCommand="SELECT * FROM [hoa_don]" UpdateCommand="UPDATE [hoa_don] SET [trang_thai_hd] = @trang_thai_hd, [ms_khach_hang] = @ms_khach_hang WHERE [ms] = @ms">
        <DeleteParameters>
            <asp:Parameter Name="ms" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ms" Type="Int32" />
            <asp:Parameter Name="trang_thai_hd" Type="String" />
            <asp:Parameter Name="ms_khach_hang" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="trang_thai_hd" Type="String" />
            <asp:Parameter Name="ms_khach_hang" Type="Int32" />
            <asp:Parameter Name="ms" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ms" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ms" HeaderText="ID" ReadOnly="True" SortExpression="ms" />
            <asp:BoundField DataField="trang_thai_hd" HeaderText="Trạng Thái Hóa Đơn" SortExpression="trang_thai_hd" />
            <asp:BoundField DataField="ms_khach_hang" HeaderText="Mã Khách Hàng" SortExpression="ms_khach_hang" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hoa_don] WHERE [ms] = @ms" InsertCommand="INSERT INTO [hoa_don] ([ms], [trang_thai_hd], [ms_khach_hang]) VALUES (@ms, @trang_thai_hd, @ms_khach_hang)" SelectCommand="SELECT * FROM [hoa_don]" UpdateCommand="UPDATE [hoa_don] SET [trang_thai_hd] = @trang_thai_hd, [ms_khach_hang] = @ms_khach_hang WHERE [ms] = @ms">
        <DeleteParameters>
            <asp:Parameter Name="ms" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ms" Type="Int32" />
            <asp:Parameter Name="trang_thai_hd" Type="String" />
            <asp:Parameter Name="ms_khach_hang" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="trang_thai_hd" Type="String" />
            <asp:Parameter Name="ms_khach_hang" Type="Int32" />
            <asp:Parameter Name="ms" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

