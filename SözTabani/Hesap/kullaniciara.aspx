<%@ Page Title="" Language="C#" MasterPageFile="~/layout/main.Master" AutoEventWireup="true" CodeBehind="kullaniciara.aspx.cs" Inherits="SözTabani.Hesap.kullaniciara" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

    <h1>Kullanıcı Ara </h1><hr />
    	 <div class="form-group">
            <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" ForeColor="Red"
                 Text="Kullanıcı Adı"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" /> 
                <asp:LinkButton ID="Button1" runat="server" CssClass="btn btn-info" OnClick="Button1_Click" CausesValidation="False">
                    <span aria-hidden="true" class="glyphicon glyphicon-search"></span> Ara
                </asp:LinkButton>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UserName" ForeColor="Red"   
                    Display="Dynamic" CssClass="text-danger" ErrorMessage="Kullanıcı Adı Gerekli !" />
      
            
    
                 </div>
              </div>

 <asp:GridView ID="KullaniciListe" runat="server" CssClass="table table-responsive" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="Kullanıcı Adı" />
            <asp:TemplateField>
                <ItemTemplate>
             <a href='kullanici.aspx?id=<%#Eval("UserName") %>' class="btn btn-danger">
                 <span class="glyphicon glyphicon-folder-open"></span> Detay
                </ItemTemplate>
            </asp:TemplateField>
            </Columns>
     </asp:GridView>
</asp:Content>

