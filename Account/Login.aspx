<%@ Page Title="Đăng nhập" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="form-dang-ky">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
    
    <section id="loginForm">       
        <asp:Login runat="server" ViewStateMode="Disabled" RenderOuterTable="false">
            <LayoutTemplate>
                <p class="validation-summary-errors">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
                <fieldset>
                    <table style="width: 100%;">
                        <tr>
                            <td class="td-form"><asp:Label ID="Label1" runat="server" AssociatedControlID="UserName">Tên tài khoản:</asp:Label></td>
                            <td><asp:TextBox runat="server" ID="UserName" /></td>
                            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" CssClass="field-validation-error" ErrorMessage="The user name field is required." /></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label2" runat="server" AssociatedControlID="Password">Password</asp:Label></td>
                            <td><asp:TextBox runat="server" ID="Password" TextMode="Password" /></td>
                            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="The password field is required." /></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td><asp:CheckBox runat="server" ID="RememberMe" /><asp:Label ID="Label3" runat="server" AssociatedControlID="RememberMe" CssClass="checkbox">Remember me?</asp:Label></td>
                            <td></td>
                        </tr>
                    </table>
                    <asp:Button runat="server" CommandName="Login" Text="Đăng nhập" />
                </fieldset>
            </LayoutTemplate>
        </asp:Login>
        <p>
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Đăng ky</asp:HyperLink>
            if nếu chưa có tài khoản.
        </p>
    </section>

    <section id="socialLoginForm">
        <h2>Chỉ đăng nhập bằng tài khoản vừa đăng ký.</h2>
        <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
    </section>
        </div>
</asp:Content>