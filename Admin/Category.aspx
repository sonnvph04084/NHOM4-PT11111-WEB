<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Admin_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleAdminSite" Runat="Server">
    Danh Mục Sản Phẩm
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminTheme" Runat="Server">
    <center>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ms" DataSourceID="SqlDataSource2" DefaultMode="Insert">
            <EditItemTemplate>
                ms:
                <asp:Label ID="msLabel1" runat="server" Text='<%# Eval("ms") %>' />
                <br />
                ten:
                <asp:TextBox ID="tenTextBox" runat="server" Text='<%# Bind("ten") %>' />
                <br />
                ms_chuyenmuc_cha:
                <asp:TextBox ID="ms_chuyenmuc_chaTextBox" runat="server" Text='<%# Bind("ms_chuyenmuc_cha") %>' />
                <br />
                mo_ta:
                <asp:TextBox ID="mo_taTextBox" runat="server" Text='<%# Bind("mo_ta") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table style="width: 800px;">
                    <tr>
                        <td>ID Danh Mục</td>
                        <td><asp:TextBox ID="msTextBox" runat="server" Text='<%# Bind("ms") %>' class="form-submit"/></td>
                        <td>Tên Danh Mục</td>
                        <td><asp:TextBox ID="tenTextBox" runat="server" Text='<%# Bind("ten") %>' class="form-submit"/></td>
                    </tr>
                    <tr>
                        <td>ID Chuyên Mục Cha</td>
                        <td><asp:TextBox ID="ms_chuyenmuc_chaTextBox" runat="server" Text='<%# Bind("ms_chuyenmuc_cha") %>' class="form-submit"/></td>
                        <td>Mô Tả</td>
                        <td><asp:TextBox ID="mo_taTextBox" runat="server" Text='<%# Bind("mo_ta") %>' class="form-submit"/></td>
                    </tr> 
                    <tr>
                        <td></td>
                        <td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm Danh Mục" class="btn btn-success btn-sm"/>
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" class="btn btn-danger btn-sm"/></td>
                    </tr>                   
                </table>
                
            </InsertItemTemplate>
            <ItemTemplate>
                ms:
                <asp:Label ID="msLabel" runat="server" Text='<%# Eval("ms") %>' />
                <br />
                ten:
                <asp:Label ID="tenLabel" runat="server" Text='<%# Bind("ten") %>' />
                <br />
                ms_chuyenmuc_cha:
                <asp:Label ID="ms_chuyenmuc_chaLabel" runat="server" Text='<%# Bind("ms_chuyenmuc_cha") %>' />
                <br />
                mo_ta:
                <asp:Label ID="mo_taLabel" runat="server" Text='<%# Bind("mo_ta") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [chuyenmuc_sanpham] WHERE [ms] = @ms" InsertCommand="INSERT INTO [chuyenmuc_sanpham] ([ms], [ten], [ms_chuyenmuc_cha], [mo_ta]) VALUES (@ms, @ten, @ms_chuyenmuc_cha, @mo_ta)" SelectCommand="SELECT * FROM [chuyenmuc_sanpham]" UpdateCommand="UPDATE [chuyenmuc_sanpham] SET [ten] = @ten, [ms_chuyenmuc_cha] = @ms_chuyenmuc_cha, [mo_ta] = @mo_ta WHERE [ms] = @ms">
            <DeleteParameters>
                <asp:Parameter Name="ms" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ms" Type="Int32" />
                <asp:Parameter Name="ten" Type="String" />
                <asp:Parameter Name="ms_chuyenmuc_cha" Type="Int32" />
                <asp:Parameter Name="mo_ta" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ten" Type="String" />
                <asp:Parameter Name="ms_chuyenmuc_cha" Type="Int32" />
                <asp:Parameter Name="mo_ta" Type="String" />
                <asp:Parameter Name="ms" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <ItemTemplate>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="ms" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="100%">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ms" HeaderText="ID Chuyên Mục" ReadOnly="True" SortExpression="ms" />
                <asp:BoundField DataField="ten" HeaderText="Tên Chuyên Mục" SortExpression="ten" />
                <asp:BoundField DataField="ms_chuyenmuc_cha" HeaderText="ID Chuyên Mục Cha" SortExpression="ms_chuyenmuc_cha" />
                <asp:BoundField DataField="mo_ta" HeaderText="Mô Tả" SortExpression="mo_ta" />
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
        </ItemTemplate>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [chuyenmuc_sanpham] WHERE [ms] = @ms" InsertCommand="INSERT INTO [chuyenmuc_sanpham] ([ms], [ten], [ms_chuyenmuc_cha], [mo_ta]) VALUES (@ms, @ten, @ms_chuyenmuc_cha, @mo_ta)" SelectCommand="SELECT * FROM [chuyenmuc_sanpham]" UpdateCommand="UPDATE [chuyenmuc_sanpham] SET [ten] = @ten, [ms_chuyenmuc_cha] = @ms_chuyenmuc_cha, [mo_ta] = @mo_ta WHERE [ms] = @ms">
        <DeleteParameters>
            <asp:Parameter Name="ms" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ms" Type="Int32" />
            <asp:Parameter Name="ten" Type="String" />
            <asp:Parameter Name="ms_chuyenmuc_cha" Type="Int32" />
            <asp:Parameter Name="mo_ta" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ten" Type="String" />
            <asp:Parameter Name="ms_chuyenmuc_cha" Type="Int32" />
            <asp:Parameter Name="mo_ta" Type="String" />
            <asp:Parameter Name="ms" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </center>
</asp:Content>

