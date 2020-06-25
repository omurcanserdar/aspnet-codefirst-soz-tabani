<%@ Page Title="" Language="C#" MasterPageFile="~/layout/kullanici.Master" AutoEventWireup="true" CodeBehind="sifremiunuttum.aspx.cs" Inherits="SözTabani.Hesap.sifremiunuttum" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="sozaltrenk" Text="Şifremi Unuttum"></asp:Label> <hr />
     <asp:Label ID="Msg" runat="server" Text="" CssClass="text text-danger">
     </asp:Label><br />
     <div class="form-group">
        <asp:Label ID="Label2" runat="server" AssociatedControlID="txtEmail" CssClass="col-md-1 control-label"
                 Text="E-mail: "> </asp:Label>
            <div class="col-md-2">
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" Width="400px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail"
                    Display="Dynamic" CssClass="text-danger" ErrorMessage="Email gerekli bir alan" />
                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" Display="Dynamic"
                    CssClass="text-danger" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="txtEmail" ErrorMessage="Hatalı e-mail..."></asp:RegularExpressionValidator> 
     <br />
                 <asp:Button ID="ResetPasswordBtn" OnClick="ResetPassword_OnClick" CssClass="btn btn-danger" runat="server" Text="Şifremi Sıfırla" />
                <asp:LinkButton id="SearchButton" Text="" CssClass="btn btn-primary"
              OnClick="Search_OnClick" runat="server"> 
                    <span class="fa fa-search"></span> Kullanıcı Ara 
                </asp:LinkButton>  
                 </div>
     </div>
    </asp:Content>
