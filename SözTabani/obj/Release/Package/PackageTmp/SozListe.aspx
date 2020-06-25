<%@ Page Title="" Language="C#" MasterPageFile="~/layout/kullanici.Master" AutoEventWireup="true" CodeBehind="SozListe.aspx.cs" Inherits="SözTabani.SozListe" %>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <h3>Söz Liste</h3><hr />
    <a href="/kisiekle" class="btn btn-danger">
         <span class="glyphicon glyphicon-floppy-disk"></span>Yeni Kişi Ekle</a>
        <a href="/sozekle" class="btn btn-danger">
                <span class="glyphicon glyphicon-floppy-disk"></span>Yeni Söz Ekle</a>
    <hr />
    <asp:GridView ID="SözList" runat="server" CssClass="table table-striped" AutoGenerateColumns="False">
        <Columns>
            <%--  <asp:BoundField DataField="soz_id" HeaderText="Id" />>--%>
            <asp:BoundField DataField="soz_icerik" HeaderText="Söz İçerik" />
                   <asp:BoundField DataField="soz_eklenmetarih" HeaderText="Eklenme Tarihi" />
           <%--<asp:BoundField DataField="Kisi" HeaderText="Kişi" />--%>
            <asp:TemplateField>
                <ItemTemplate>
                  <a href='SozDetay.aspx?id=<%#Eval("soz_id") %>' class="btn btn-info"> 
                      <span class="glyphicon glyphicon-folder-open"></span> Detay</a>
                    <%--  <%#Eval("soz_icerik")%>--%>
                  </a>
                     <a href='SozSil.aspx?id=<%#Eval("soz_id") %>'class="btn btn-danger">
                           <span class="glyphicon glyphicon-trash"></span> Sil</a>
                     </a>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

