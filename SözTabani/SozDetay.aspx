<%@ Page Title="" Language="C#" MasterPageFile="~/layout/kullanici.Master" AutoEventWireup="true" CodeBehind="SozDetay.aspx.cs" Inherits="SözTabani.SozDetay" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
     <h2 class="sub-header">
        Detaylar</h2> 
    <div class="form-group">
        <label for="txtText">
            Söz</label>
        <asp:TextBox ID="txtText" runat="server" CssClass="form-control" placeholder="Söz" Height="50px" Width="1000px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtText"
            Display="Dynamic" ForeColor="Red"> Veri girişi yapılmadı ! </asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label for="txtTitlekisi">
            Kişi</label>
        <asp:DropDownList ID="ddlkisi" runat="server" AppendDataBoundItems="true" CssClass="form-control" Width="300px">
            <asp:ListItem Text="Kişi" Value="-1" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlkisi" InitialValue="-1"
            Display="Dynamic" ForeColor="Red"> Veri girişi yapılmadı !</asp:RequiredFieldValidator>
    </div>
    
    <asp:LinkButton ID="btnSave" runat="server" CssClass="btn btn-danger" OnClick="btnSave_Click"  CausesValidation="False">
    <span aria-hidden="true" class="glyphicon glyphicon-refresh"></span> Güncelle
        </asp:LinkButton>
   
        <a href="/sozliste" class="btn btn-info"> <span class="glyphicon glyphicon-list"></span> Söz Listesi</a>
    <asp:Label ID="Error" runat="server" CssClass="text-danger"></asp:Label>
</asp:Content>