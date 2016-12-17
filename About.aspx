<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div style="width:100%;height:auto;margin:0px;padding:0px;">
        <h1 style="font-size:20px;padding:10px 0px 10px 0px;">Giới thiệu DOMI SHOP</h1>
        <section style="padding:10px;font-size:15px;">
            <p>BOUTIQUE - Thương hiệu thời trang nữ hàng đầu dành cho giới trẻ.
Được thành lập từ năm 2011, MAY BOUTIQUE đã vươn lên trở thành hệ thống thời trang nữ dành cho giới trẻ hàng đầu với 13 showroom quy mô, hiện đại tại những tuyến phố lớn của Hà Nội. </p> 
            <br />
            <p>Phong cách phục vụ chuyên nghiệp, thân thiện và mẫu mã sản phẩm đa dạng phong phú, cập nhật liên tục là những điểm đặc biệt của MAY được đông đảo khách hàng yêu mến.
Với phương châm luôn nỗ lực vì khách hàng thân yêu, MAY BOUTIQUE không ngừng cố gắng để ngày càng hoàn thiện dịch vụ và chất lượng sản phẩm, xứng đáng là địa chỉ thời trang hấp dẫn và tin cậy của giới trẻ Hà thành.</p>
        </section>
    </div>
    <table style="width: 100%;">
        <tr>
            <td><asp:Image id="Image1" runat="server" ImageUrl="~/Images/ads/km1.jpg" Width="300"/></td>
            <td><asp:Image id="Image2" runat="server" ImageUrl="~/Images/ads/km2.jpg" Width="300"/></td>
            <td><asp:Image id="Image3" runat="server" ImageUrl="~/Images/ads/km3.jpg" Width="300"/></td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
</asp:Content>
