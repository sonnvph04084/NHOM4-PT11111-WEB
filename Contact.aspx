<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.9282806119145!2d105.76310101438693!3d21.0355554859947!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b92bd71f9b%3A0xb79f074fe43dcfc1!2zRlBUIFBvbHl0ZWNobmljIChDxqEgc-G7nyBIw6AgTuG7mWkp!5e0!3m2!1svi!2s!4v1481905435288" width="100%" height="250" frameborder="0" style="border:0" allowfullscreen></iframe>
<div style="clear:both;"></div>
    <h1 style="font-weight:bold;font-size:24px;margin-top:20px;margin-bottom:20px;">DOMI BOUTIQUE - THỜI TRANG HÀNG HIỆU</h1>
<div style="width:100%;height:200px;background:#fff;">
    <div style="width:50%;height:200px;float:left;">
       <h1 style="font-size:20px;margin-bottom:10px;">Thông tin liên hệ</h1> 

<p style="font-size:14px;">Tổng đài liên hệ: 1900 6680 <br />
Hotline: 0973 954 663 - 0912 345 798<br />
Email: admin@domiboutique.com</p>
    </div>
    <div style="width:50%;height:200px;float:left;">
        <form action="" method="post">
        <table class="lien-he">
            <tr>
                <td>Họ Tên:</td>
                <td><input id="Text1" type="text" /></td>
                
            </tr>
            <tr>
                <td>Điện thoại:</td>
                <td><input id="Text2" type="text" /></td>                
            </tr>
            <tr>
                <td>Email:</td>
                <td><input id="Text3" type="email" /></td>
            </tr>
            <tr>
                <td>Nội Dung:</td>
                <td><textarea id="TextArea1" cols="20" rows="2"></textarea></td>
            </tr>
            <tr>
                <td></td>
                <td><button type="submit" class="btn">Submit</button></td>
            </tr>
        </table>            
        </form>
    </div>
</div>
</asp:Content>