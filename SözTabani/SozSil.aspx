<%@ Page Title="" Language="C#" MasterPageFile="~/layout/kullanici.Master" AutoEventWireup="true" CodeBehind="SozSil.aspx.cs" Inherits="SözTabani.SozSil" %>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
     <h2 class="sub-header">
       Silinecek Söz </h2> 
    <div class="form-group">
        <label for="txtText">
            Söz</label>
        <asp:TextBox ID="txtText" runat="server" CssClass="form-control" placeholder="Söz" Enabled="False" Height="50px" Width="1000px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtText"
            Display="Dynamic" ForeColor="Red">Required</asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label for="txtTitlekisi">
            Kişi</label>
        <asp:DropDownList ID="ddlkisi" runat="server" AppendDataBoundItems="true" CssClass="form-control" Enabled="False" Width="300px">
            <asp:ListItem Text="Kişi" Value="-1" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlkisi" InitialValue="-1"
            Display="Dynamic" ForeColor="Red">Boş bırakılamaz !</asp:RequiredFieldValidator>
    </div>
    
    <asp:LinkButton ID="btnSil" runat="server" CssClass="btn btn-danger"  CausesValidation="False" 
        OnClick="btnSil_Click"> <span aria-hidden="true" class="glyphicon glyphicon-trash"></span> Sil </asp:LinkButton>
    
        <a href="/sozliste" class="btn btn-default">
             <span class="glyphicon glyphicon-list"></span> Söz Listesi</a>
    <asp:Label ID="Error" runat="server" CssClass="text-danger"></asp:Label>
</asp:Content>