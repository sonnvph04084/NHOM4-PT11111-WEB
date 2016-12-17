<%@ Page Title="Đăng ký" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="form-dang-ky">
    <hgroup class="title">        
        <h2>Điền các thông tin vào form đăng ký.</h2>
    </hgroup>

    <asp:CreateUserWizard runat="server" ID="RegisterUser" ViewStateMode="Disabled" OnCreatedUser="RegisterUser_CreatedUser">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
            <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
                <ContentTemplate>
                    <p class="message-info">
                        Passwords are required to be a minimum of <%: Membership.MinRequiredPasswordLength %> characters in length.
                    </p>

                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                    <fieldset>
                        <table style="width: 100%;">
                            <tr>
                                <td class="td-form"><asp:Label ID="Label1" runat="server" AssociatedControlID="UserName">Tên tài khoản</asp:Label></td>
                                <td><asp:TextBox runat="server" ID="UserName" /></td>
                                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." /></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="Label2" runat="server" AssociatedControlID="Email">Email </asp:Label></td>
                                <td><asp:TextBox runat="server" ID="Email" /></td>
                                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="The email address field is required." /></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="Label3" runat="server" AssociatedControlID="Password">Mật khẩu</asp:Label></td>
                                <td><asp:TextBox runat="server" ID="Password" TextMode="Password" /></td>
                                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="The password field is required." /></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="Label4" runat="server" AssociatedControlID="ConfirmPassword">Nhập lại mật khẩu</asp:Label></td>
                                <td><asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" /></td>
                                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." /></td>
                            </tr>
                        </table>  
                        <asp:Button runat="server" CommandName="MoveNext" Text="Đăng ký" />
                    </fieldset>
                </ContentTemplate>
                <CustomNavigationTemplate />
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
        </div>
</asp:Content>