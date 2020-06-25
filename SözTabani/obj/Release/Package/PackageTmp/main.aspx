<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="SözTabani.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <!-- Bootstrap core CSS -->
    <link href="bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet" />
        type="text/css" />
    <!-- Custom styles for this template -->
    <link href="bootstrap-3.3.6-dist/css/dashboard.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Söz Tabanı</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/uye/ayarlar.aspx">Ayarlar</a></li>
                    <li><a href="/uye/profil.aspx">Profil</a></li>
                    <li><a href="yardim.aspx">Yardım</a></li>
                    <asp:LoginView ID="LoginView1" runat="server">
                        <AnonymousTemplate>
                            <li><a href="/uye/cikis.aspx">Çıkış Yap</a></li>
                    
                        </AnonymousTemplate>
                        <LoggedInTemplate>
                            <li><a href="/uye/hesap">Hesabım</a> </li>
                            <li>
                                <asp:LoginStatus ID="LoginStatus1" runat="server" />
                            </li>
                        </LoggedInTemplate>
                    </asp:LoginView>
                </ul>              
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3 col-md-2 sidebar">
                <asp:ListView ID="CategoryList" runat="server">
                    <LayoutTemplate>
                        <ul class="nav nav-sidebar">
                            <li class="active"><a href="#">Kişiler</a></li>
                            <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
                        </ul>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <li><a href="<%#Eval("kisi_id") %>">
                            <%#Eval("kisi_adsoyad") %></a></li>
                          
                    </ItemTemplate>
                </asp:ListView>
                <asp:ListView ID="PostList" runat="server">
                    <LayoutTemplate>
                        <ul class="nav nav-sidebar">
                            <li class="active"><a href="#">Son Eklenen Sözler</a></li>
                            <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
                        </ul>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <li><a href="<%#Eval("soz_id") %>">
                            <%#Eval("soz_icerik")%></a></li>
                    </ItemTemplate>
                </asp:ListView>
            </div>
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                
            </div>
        </div>
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
    <script src="/layout/bootstrap-3.2.0-dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="/layout/js/doc.min.js" type="text/javascript"></script>
    </form>
</body>
</html>
