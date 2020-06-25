<%@ Page Title="" Language="C#" MasterPageFile="~/layout/kullanici.Master" AutoEventWireup="true" CodeBehind="KisiListe.aspx.cs" Inherits="SözTabani.KisiListe" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <a href="/kisiekle" class="btn btn-danger">
            <span class="glyphicon glyphicon-floppy-disk"></span> Yeni Kişi Ekle</a>
    <hr />
    <asp:GridView ID="KisiListesi" runat="server" CssClass="table table-striped" AutoGenerateColumns="False">
        <Columns>
           <%-- <asp:BoundField DataField="k_id" HeaderText="Id" />--%>
            <asp:BoundField DataField="kisi_adsoyad" HeaderText="Kişi" />
              <asp:BoundField DataField="kisi_bilgi" HeaderText="Kişi Hakkında" />
                   <asp:BoundField DataField="kisi_eklenmetarih" HeaderText="Eklendiği Tarih" />
              
      
            <asp:TemplateField>
                
                <ItemTemplate>
                   <a href='/kisi/<%#SözTabani.Helper.HelperMethod.KarakterDuzelt(Eval("kisi_adsoyad").ToString())%>?kid=<%#Eval("kisi_id")%>' class="btn btn-info">
                          <span class="glyphicon glyphicon-folder-open"></span> Detay
                  <a href='KisiSil.aspx?id=<%#Eval("kisi_id") %>' class="btn btn-danger"> 
                           <span class="glyphicon glyphicon-trash"></span> Sil </a>
                  
                </ItemTemplate>
            </asp:TemplateField>
            </Columns>
    </asp:GridView>
</asp:Content>
