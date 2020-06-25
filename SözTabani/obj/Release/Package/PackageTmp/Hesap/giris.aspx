<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="SözTabani.Hesap.giris" %>

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
    <body class="girissayfasiarkaplan">
                        <link href="../bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet"
        type="text/css" />
    <!-- Custom styles for this template -->
    <link href="../bootstrap-3.3.6-dist/css/dashboard.css" rel="stylesheet" type="text/css" />
        <div class="form-horizontal">
                <form id="form1" runat="server">
                  <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">--%>
                    <span class="sr-only">Toggle navigation</span> 
                    <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/anasayfa">Söz Tabanı</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
    
                    <li><a href="/yardim">Yardım</a></li>
                     <asp:LoginView ID="LoginView1" runat="server">
                        <AnonymousTemplate>               
                                            <li><a href="/kayit">Üye Ol</a></li>
                        </AnonymousTemplate>
                        <LoggedInTemplate>
                            <li><a href="/Uyeislem/Hesabim">Hesabım</a> </li>
                            <li>
                                <asp:LoginStatus ID="LoginStatus1" runat="server" />
                            </li>
                        </LoggedInTemplate>
                    </asp:LoginView>
                </ul>
             
                </div>
            </div>  
                  </div>
				 <div class="form-group"> <h2 class="kayityazirenk">&nbsp&nbsp&nbsp Söz Tabanı'na Giriş Yap</h2><br />
            <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" ForeColor="White"
                 Text="Kullanıcı Adı"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UserName" ForeColor="Red"   
                    Display="Dynamic" CssClass="text-danger" ErrorMessage="Kullanıcı Adı Gerekli !" />
                <%--<asp:RegularExpressionValidator ID="regexEmailValid" runat="server" Display="Dynamic"
                    CssClass="text-danger" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="Email" ErrorMessage="hatalı mail adresi"></asp:RegularExpressionValidator>--%>
            </div>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label" ForeColor="White" 
                                 Text="Şifre"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
  
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="Şifre Gerekli !" ForeColor="Red" />
            </div>
              
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-2">
              
                <asp:LinkButton ID="BtnLogin" runat="server" ForeColor="White"
                    CssClass="btn btn-danger" OnClick="BtnLogin_Click1">
                    <span aria-hidden="true" class="glyphicon glyphicon-log-in"></span> Giriş
                </asp:LinkButton>
               
                            <a href="/kayit" class="btn btn-info"> 
                                <span class="glyphicon glyphicon-floppy-disk"></span> Kaydol  </a>       	
                 <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
                </div>	   
          </form>  	 
     </div>			 	      		      


        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>


      <script src="bootstrap-3.3.6-dist/js/bootstrap.js"></script>
    <script src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
    <script src="bootstrap-3.3.6-dist/js/npm.js"></script>
</body>
</html>
