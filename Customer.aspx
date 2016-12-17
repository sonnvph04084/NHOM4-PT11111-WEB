<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Admin_Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleAdminSite" Runat="Server">
    Danh Sách Khách Hàng
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminTheme" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ms" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            ms:
            <asp:Label ID="msLabel1" runat="server" Text='<%# Eval("ms") %>' />
            <br />
            ho_va_ten:
            <asp:TextBox ID="ho_va_tenTextBox" runat="server" Text='<%# Bind("ho_va_ten") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            dia_chi:
            <asp:TextBox ID="dia_chiTextBox" runat="server" Text='<%# Bind("dia_chi") %>' />
            <br />
            so_dien_thoai:
            <asp:TextBox ID="so_dien_thoaiTextBox" runat="server" Text='<%# Bind("so_dien_thoai") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table style="width: 800px;">
                <tr>
                    <td>ID</td>
                    <td><asp:TextBox ID="msTextBox" runat="server" Text='<%# Bind("ms") %>' class="form-submit"/></td>
                    <td>Họ tên</td>
                    <td><asp:TextBox ID="ho_va_tenTextBox" runat="server" Text='<%# Bind("ho_va_ten") %>' class="form-submit"/></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' class="form-submit"/></td>
                    <td>Địa chỉ</td>
                    <td><asp:TextBox ID="dia_chiTextBox" runat="server" Text='<%# Bind("dia_chi") %>' class="form-submit"/></td>
                </tr>
                <tr>
                    <td>Điện thoại</td>
                    <td><asp:TextBox ID="so_dien_thoaiTextBox" runat="server" Text='<%# Bind("so_dien_thoai") %>' class="form-submit"/></td>
                    
                </tr>
                <tr>
                    <td></td>
                    <td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm Khách Hàng" class="btn btn-success btn-sm"/>
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" class="btn btn-danger btn-sm"/></td>
                </tr>
            </table>
            
        </InsertItemTemplate>
        <ItemTemplate>
            ms:
            <asp:Label ID="msLabel" runat="server" Text='<%# Eval("ms") %>' />
            <br />
            ho_va_ten:
            <asp:Label ID="ho_va_tenLabel" runat="server" Text='<%# Bind("ho_va_ten") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
            <br />
            dia_chi:
            <asp:Label ID="dia_chiLabel" runat="server" Text='<%# Bind("dia_chi") %>' />
            <br />
            so_dien_thoai:
            <asp:Label ID="so_dien_thoaiLabel" runat="server" Text='<%# Bind("so_dien_thoai") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [khach_hang] WHERE [ms] = @ms" InsertCommand="INSERT INTO [khach_hang] ([ms], [ho_va_ten], [email], [dia_chi], [so_dien_thoai]) VALUES (@ms, @ho_va_ten, @email, @dia_chi, @so_dien_thoai)" SelectCommand="SELECT * FROM [khach_hang]" UpdateCommand="UPDATE [khach_hang] SET [ho_va_ten] = @ho_va_ten, [email] = @email, [dia_chi] = @dia_chi, [so_dien_thoai] = @so_dien_thoai WHERE [ms] = @ms">
        <DeleteParameters>
            <asp:Parameter Name="ms" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ms" Type="Int32" />
            <asp:Parameter Name="ho_va_ten" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="dia_chi" Type="String" />
            <asp:Parameter Name="so_dien_thoai" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ho_va_ten" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="dia_chi" Type="String" />
            <asp:Parameter Name="so_dien_thoai" Type="Int32" />
            <asp:Parameter Name="ms" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ms" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ms" HeaderText="ID" ReadOnly="True" SortExpression="ms" />
            <asp:BoundField DataField="ho_va_ten" HeaderText="Họ Tên" SortExpression="ho_va_ten" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="dia_chi" HeaderText="Địa Chỉ" SortExpression="dia_chi" />
            <asp:BoundField DataField="so_dien_thoai" HeaderText="Số Điện Thoại" SortExpression="so_dien_thoai" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [khach_hang] WHERE [ms] = @ms" InsertCommand="INSERT INTO [khach_hang] ([ms], [ho_va_ten], [email], [dia_chi], [so_dien_thoai]) VALUES (@ms, @ho_va_ten, @email, @dia_chi, @so_dien_thoai)" SelectCommand="SELECT * FROM [khach_hang]" UpdateCommand="UPDATE [khach_hang] SET [ho_va_ten] = @ho_va_ten, [email] = @email, [dia_chi] = @dia_chi, [so_dien_thoai] = @so_dien_thoai WHERE [ms] = @ms">
        <DeleteParameters>
            <asp:Parameter Name="ms" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ms" Type="Int32" />
            <asp:Parameter Name="ho_va_ten" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="dia_chi" Type="String" />
            <asp:Parameter Name="so_dien_thoai" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ho_va_ten" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="dia_chi" Type="String" />
            <asp:Parameter Name="so_dien_thoai" Type="Int32" />
            <asp:Parameter Name="ms" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

