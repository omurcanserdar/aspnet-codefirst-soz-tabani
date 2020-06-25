<%@ Page Title="" Language="C#" MasterPageFile="~/layout/main.Master" AutoEventWireup="true" CodeBehind="sıksorulansorular.aspx.cs" Inherits="SözTabani.YardımcıSayfalar.sıksorulansorular" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
         <div class="panel panel-primary">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Söz Tabanı nedir?
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
        Söz Tabanı projesi "Söz uçar,yazı kalır" sözünden esinlenerek geliştirilmiş
      bir <b>"söz veritabanı"</b> projesidir.
      </div>
    </div>
  </div>
  <div class="panel panel-danger">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Üye olmak ücretli midir?
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
         Söz Tabanı'nda üyelik dahil diğer tüm servisler <b><u>tamamen ücretsizdir.</u></b>
      </div>
    </div>
  </div>
  <div class="panel panel-primary">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Nasıl üye olurum?
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
          <a href="/kayit">Kayıt</a> sayfasındaki verileri eksiksiz doldurarak üye olabilirsin
      </div>
    </div>
  </div>
</div>
 


</asp:Content>
