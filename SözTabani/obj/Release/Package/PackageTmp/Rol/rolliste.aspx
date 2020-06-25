<%@ Page Title="" Language="C#" MasterPageFile="~/layout/kullanici.Master" AutoEventWireup="true" CodeBehind="rolliste.aspx.cs" Inherits="SözTabani.Rol.rolliste" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <h2> Rol Liste</h2>
     <a href="/rolekle" class="btn btn-info">
                <span class="glyphicon glyphicon-floppy-disk"></span> Rol Ekle
            </a>
    <hr />

        <asp:ListView runat="server" ID="KullaniciRolleri"> 
        <LayoutTemplate>
             <div class="table-responsive">
                 <table class="table table-striped">
                     <thead>
                         <tr>
                              <th>Rol Adı</th>
                              <th>Roldeki Kullanıcı Sayısı</th>
                         </tr>
                     </thead>
                     <tbody>
                         <asp:PlaceHolder runat="server" ID="itemplaceholder" />

                     </tbody>
                 </table>
             </div>
          </LayoutTemplate>
 <ItemTemplate>
        <tr>
            <td> <%#Eval("RolAdı") %></td>
            <td> <%#Eval("UserCount") %></td>
           <td>
               <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Button"></asp:Button>
           </td>
        </tr>
     </ItemTemplate>
   </asp:ListView>
   
      <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
         </p>
</asp:Content>
