<%@ Page Title="" Language="C#" MasterPageFile="~/layout/kullanici.Master" AutoEventWireup="true" CodeBehind="rolekle.aspx.cs" Inherits="SözTabani.Rol.rolekle" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <h2>Rol Ekle</h2><hr />
    <div class="form-horizontal">
        <div class="form-group">
            <asp:Label runat="server" ID="LblRol" AssociatedControlID="Rol"  Text="Rol Adı"
                CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="Rol" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Rol"
                    Display="Dynamic" CssClass="text-danger" ErrorMessage="Rol Adı gerekli bir alan"> </asp:RequiredFieldValidator>

            </div>
            <asp:LinkButton runat="server" ID="Btn_Kaydet" CssClass="btn btn-danger" OnClick="RolEkle" >
                <span aria-hidden="true" class="glyphicon glyphicon-floppy-disk"></span> Kaydet
            </asp:LinkButton>
            <a href="/rolliste" class="btn btn-info">
                <span class="glyphicon glyphicon-list"></span> Rol Liste
            </a>
        </div>
          <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
         </p>
        </div>
</asp:Content>
