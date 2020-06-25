<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayit.aspx.cs" Inherits="SözTabani.Hesap.kayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> 
	  <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Söz Tabanı meta description..." />
    <meta name="author" content="omurserdarr" />
    <link rel="icon" href="http://www.omurserdar.com"/>
    <title>Söz Tabanı</title>
    <!-- Bootstrap core CSS -->
    <link href="../bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet"
        type="text/css" />
    <!-- Custom styles for this template -->
    <link href="../bootstrap-3.3.6-dist/css/dashboard.css" rel="stylesheet" type="text/css" />
        <%--<link href="bootstrap-3.3.6-dist/css/mystyle.css" rel="stylesheet" type="text/css" />--%>
    <link href="../bootstrap-3.3.6-dist/css/mystyle.css" rel="stylesheet" />
    </head>
    <body class="kayitsayfasiarkaplan">
    <form id="form1" runat="server">
   <h1 class="sozrenk"> Söz Tabanı'na Kayıt Ol </h1>
        <br />

    <div class="form-horizontal">
        <div class="form-group">
            <asp:Label runat="server" ID="LblFullName" AssociatedControlID="Ad"  Text="Adınız" ForeColor="White"
                CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-2">
                <asp:TextBox runat="server" ID="Ad" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Ad"
                    Display="Dynamic" CssClass="text-danger" ErrorMessage="Ad gerekli bir alan" ForeColor="Lavender"/>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" ID="Label4" AssociatedControlID="Soyad"  Text="Soyadınız" ForeColor="White"
                CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-2">
                <asp:TextBox runat="server" ID="Soyad" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Soyad"
                    Display="Dynamic" CssClass="text-danger" ErrorMessage="Soyad gerekli bir alan" ForeColor="Lavender"/>
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" ID="Label5" AssociatedControlID="K_adi"  Text="Kullanıcı Adınız" ForeColor="White"
                CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="K_adi" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="K_adi"
                    Display="Dynamic" CssClass="text-danger" ErrorMessage="Kullanıcı Adı gerekli bir alan" ForeColor="Lavender"/>
            </div>
        </div>
        <div class="form-group">
  
            <asp:Label ID="Label1" runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label" ForeColor="White"
                 Text="E-mail"> </asp:Label>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email"
                    Display="Dynamic" CssClass="text-danger" ErrorMessage="Email gerekli bir alan" ForeColor="Lavender"/>
                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" Display="Dynamic"
                    CssClass="text-danger" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Lavender"
                    ControlToValidate="Email" ErrorMessage="Hatalı e-mail..."></asp:RegularExpressionValidator> 
            </div>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label" ForeColor="White"
                 Text="Şifre"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="Şifre girilmeli..." ForeColor="Lavender"/>
           <asp:RegularExpressionValidator ID="Regex3" runat="server" ControlToValidate="Password"
ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$" />

            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label" ForeColor="White"
                 Text="Şifre(Tekrar)"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Şifre Girilmeli" ForeColor="Lavender"/>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password"
                    ControlToValidate="ConfirmPassword" CssClass="text-danger" Display="Dynamic"
                    ErrorMessage="Şifreler Eşleşmiyor !" ForeColor="Lavender"/>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-3">
                <asp:Button ID="BtnKayit" runat="server" OnClick="BtnKayit_Click" CssClass="btn btn-danger" Text="Kaydol" />
                <a href="/giris" class="btn btn-info">
                    <span class="glyphicon glyphicon-alert"></span> Zaten Üyeyim</a>
    </div>
                  </div>
         <p class="text-danger"
        <asp:Literal runat="server" ID="ErrorMessage" 
             /></p>
    </form>
</body>
</html>
