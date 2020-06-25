<%@ Page Title="" Language="C#" MasterPageFile="~/layout/kullanici.Master" AutoEventWireup="true" CodeBehind="rolata.aspx.cs" Inherits="SözTabani.Rol.rolata" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">


    <div class="form-group">
        <label for="txtkisi">
            Kişi</label>
        <asp:DropDownList ID="ddlrolkisi" runat="server" AppendDataBoundItems="true" CssClass="form-control">
            <asp:ListItem Text="Kişi" Value="-1" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlrolKisi" InitialValue="-1"
            Display="Dynamic" ForeColor="Red">Seçimini Kontrol Et !</asp:RequiredFieldValidator>
    </div>


     <div class="form-group">
        <label for="txtrol">
            Rol</label>
        <asp:DropDownList ID="ddlrol" runat="server" AppendDataBoundItems="true" CssClass="form-control">
            <asp:ListItem Text="Rol" Value="-1" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlrol" InitialValue="-1"
            Display="Dynamic" ForeColor="Red">Seçimini Kontrol Et !</asp:RequiredFieldValidator>
    </div>
    <p class="text-info"> 
        <asp:Literal runat="server" ID="ErrorMessage" ></asp:Literal>
    </p>
    <asp:LinkButton ID="Button1" runat="server" CssClass="btn btn-danger" OnClick="Button1_Click">
        <span aria-hidden="true" class="glyphicon glyphicon-flash"></span> Rol Ata
    </asp:LinkButton>

</asp:Content>
