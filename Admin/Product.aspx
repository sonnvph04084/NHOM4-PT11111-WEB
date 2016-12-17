<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Admin_Product" %>
<asp:Content ID="Content2" ContentPlaceHolderID="TitleAdminSite" Runat="Server">
    Sản Phẩm 
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminTheme" Runat="Server"> 
   <center>

       <asp:FormView ID="FormView1" runat="server" DataKeyNames="ms" DataSourceID="SqlDataSource1" DefaultMode="Insert">
           <EditItemTemplate>
               ms:
               <asp:Label ID="msLabel1" runat="server" Text='<%# Eval("ms") %>' />
               <br />
               ms_chuyenmuc_sp:
               <asp:TextBox ID="ms_chuyenmuc_spTextBox" runat="server" Text='<%# Bind("ms_chuyenmuc_sp") %>' />
               <br />
               sku:
               <asp:TextBox ID="skuTextBox" runat="server" Text='<%# Bind("sku") %>' />
               <br />
               ten:
               <asp:TextBox ID="tenTextBox" runat="server" Text='<%# Bind("ten") %>' />
               <br />
               gia:
               <asp:TextBox ID="giaTextBox" runat="server" Text='<%# Bind("gia") %>' />
               <br />
               mo_ta:
               <asp:TextBox ID="mo_taTextBox" runat="server" Text='<%# Bind("mo_ta") %>' />
               <br />
               anh:
               <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' />
               <br />
               don_vi:
               <asp:TextBox ID="don_viTextBox" runat="server" Text='<%# Bind("don_vi") %>' />
               <br />
               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
           </EditItemTemplate>
           <InsertItemTemplate>
                <table style="width: 800px;">
                    <tr>
                        <td>ID Sản Phẩm:&nbsp&nbsp</td>
                        <td><asp:TextBox ID="msTextBox" runat="server" Text='<%# Bind("ms") %>' class="form-submit"/></td>
                        <td>Tên Sản Phẩm:</td>
                        <td><asp:TextBox ID="tenTextBox" runat="server" Text='<%# Bind("ten") %>' class="form-submit"/></td>
                    </tr>
                    <tr>
                        <td>ID Chuyên Mục:</td>
                        <td><asp:TextBox ID="ms_chuyenmuc_spTextBox" runat="server" Text='<%# Bind("ms_chuyenmuc_sp") %>' class="form-submit"/></td>
                        <td>Giá Sản Phẩm:</td>
                        <td><asp:TextBox ID="giaTextBox" runat="server" Text='<%# Bind("gia") %>' class="form-submit"/></td>
                    </tr>
                    <tr>
                        <td>SKU:</td>
                        <td><asp:TextBox ID="skuTextBox" runat="server" Text='<%# Bind("sku") %>' class="form-submit"/></td>
                        <td>Mô Tả:</td>
                        <td><asp:TextBox ID="mo_taTextBox" runat="server" Text='<%# Bind("mo_ta") %>' class="form-submit"/></td>
                    </tr>
                    <tr>
                        <td>Ảnh:</td>
                        <td><asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' class="form-submit"/></td>
                        <td>Đơn vị: </td>
                        <td><asp:TextBox ID="don_viTextBox" runat="server" Text='<%# Bind("don_vi") %>' class="form-submit"/></td>
                    </tr>
                </table>
               <p style="margin-top:10px;margin-left:15%;">
               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm Sản Phẩm" class="btn btn-success btn-sm"/>
               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" class="btn btn-danger btn-sm"/></p>
           </InsertItemTemplate>
           <ItemTemplate>
               ms:
               <asp:Label ID="msLabel" runat="server" Text='<%# Eval("ms") %>' />
               <br />
               ms_chuyenmuc_sp:
               <asp:Label ID="ms_chuyenmuc_spLabel" runat="server" Text='<%# Bind("ms_chuyenmuc_sp") %>' />
               <br />
               sku:
               <asp:Label ID="skuLabel" runat="server" Text='<%# Bind("sku") %>' />
               <br />
               ten:
               <asp:Label ID="tenLabel" runat="server" Text='<%# Bind("ten") %>' />
               <br />
               gia:
               <asp:Label ID="giaLabel" runat="server" Text='<%# Bind("gia") %>' />
               <br />
               mo_ta:
               <asp:Label ID="mo_taLabel" runat="server" Text='<%# Bind("mo_ta") %>' />
               <br />
               anh:
               <asp:Label ID="anhLabel" runat="server" Text='<%# Bind("anh") %>' />
               <br />
               don_vi:
               <asp:Label ID="don_viLabel" runat="server" Text='<%# Bind("don_vi") %>' />
               <br />
               <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
               &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
               &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
           </ItemTemplate>
       </asp:FormView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [san_pham] WHERE [ms] = @ms" InsertCommand="INSERT INTO [san_pham] ([ms], [ms_chuyenmuc_sp], [sku], [ten], [gia], [mo_ta], [anh], [don_vi]) VALUES (@ms, @ms_chuyenmuc_sp, @sku, @ten, @gia, @mo_ta, @anh, @don_vi)" SelectCommand="SELECT * FROM [san_pham]" UpdateCommand="UPDATE [san_pham] SET [ms_chuyenmuc_sp] = @ms_chuyenmuc_sp, [sku] = @sku, [ten] = @ten, [gia] = @gia, [mo_ta] = @mo_ta, [anh] = @anh, [don_vi] = @don_vi WHERE [ms] = @ms">
           <DeleteParameters>
               <asp:Parameter Name="ms" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="ms" Type="Int32" />
               <asp:Parameter Name="ms_chuyenmuc_sp" Type="Int32" />
               <asp:Parameter Name="sku" Type="String" />
               <asp:Parameter Name="ten" Type="String" />
               <asp:Parameter Name="gia" Type="Decimal" />
               <asp:Parameter Name="mo_ta" Type="String" />
               <asp:Parameter Name="anh" Type="String" />
               <asp:Parameter Name="don_vi" Type="String" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="ms_chuyenmuc_sp" Type="Int32" />
               <asp:Parameter Name="sku" Type="String" />
               <asp:Parameter Name="ten" Type="String" />
               <asp:Parameter Name="gia" Type="Decimal" />
               <asp:Parameter Name="mo_ta" Type="String" />
               <asp:Parameter Name="anh" Type="String" />
               <asp:Parameter Name="don_vi" Type="String" />
               <asp:Parameter Name="ms" Type="Int32" />
           </UpdateParameters>
       </asp:SqlDataSource>
       <ItemTemplate>
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ms" DataSourceID="SqlDataSource2" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
               <asp:BoundField DataField="ms" HeaderText="ID SP" ReadOnly="True" SortExpression="ms" />
               <asp:BoundField DataField="ms_chuyenmuc_sp" HeaderText="ID Chuyên Mục" SortExpression="ms_chuyenmuc_sp" />
               <asp:BoundField DataField="sku" HeaderText="SKU" SortExpression="sku" />
               <asp:BoundField DataField="ten" HeaderText="Tên Sản Phẩm" SortExpression="ten" />
               <asp:BoundField DataField="gia" HeaderText="Giá Sản Phẩm" SortExpression="gia" />
               <asp:BoundField DataField="mo_ta" HeaderText="Mô Tả" SortExpression="mo_ta" />
               <asp:BoundField DataField="anh" HeaderText="Ảnh" SortExpression="anh" />
               <asp:BoundField DataField="don_vi" HeaderText="Đơn Vị" SortExpression="don_vi" />
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
        </ItemTemplate>
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [san_pham] WHERE [ms] = @ms" InsertCommand="INSERT INTO [san_pham] ([ms], [ms_chuyenmuc_sp], [sku], [ten], [gia], [mo_ta], [anh], [don_vi]) VALUES (@ms, @ms_chuyenmuc_sp, @sku, @ten, @gia, @mo_ta, @anh, @don_vi)" SelectCommand="SELECT * FROM [san_pham]" UpdateCommand="UPDATE [san_pham] SET [ms_chuyenmuc_sp] = @ms_chuyenmuc_sp, [sku] = @sku, [ten] = @ten, [gia] = @gia, [mo_ta] = @mo_ta, [anh] = @anh, [don_vi] = @don_vi WHERE [ms] = @ms">
           <DeleteParameters>
               <asp:Parameter Name="ms" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="ms" Type="Int32" />
               <asp:Parameter Name="ms_chuyenmuc_sp" Type="Int32" />
               <asp:Parameter Name="sku" Type="String" />
               <asp:Parameter Name="ten" Type="String" />
               <asp:Parameter Name="gia" Type="Decimal" />
               <asp:Parameter Name="mo_ta" Type="String" />
               <asp:Parameter Name="anh" Type="String" />
               <asp:Parameter Name="don_vi" Type="String" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="ms_chuyenmuc_sp" Type="Int32" />
               <asp:Parameter Name="sku" Type="String" />
               <asp:Parameter Name="ten" Type="String" />
               <asp:Parameter Name="gia" Type="Decimal" />
               <asp:Parameter Name="mo_ta" Type="String" />
               <asp:Parameter Name="anh" Type="String" />
               <asp:Parameter Name="don_vi" Type="String" />
               <asp:Parameter Name="ms" Type="Int32" />
           </UpdateParameters>
       </asp:SqlDataSource>

   </center>
</asp:Content>

