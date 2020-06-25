<%@ Page Title="" Language="C#" MasterPageFile="~/layout/main.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="SözTabani.YardımcıSayfalar.iletisim" %>
<%@ Register Assembly="Recaptcha.Web" Namespace="Recaptcha.Web.UI.Controls" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
     <div class="form-horizontal">
        <div class="form-group">
            <asp:Label runat="server" ID="LblFullName" AssociatedControlID="Ad"  Text="Ad Soyad"
                CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-2">
                <asp:TextBox runat="server" ID="Ad" CssClass="form-control" Width="400px"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Ad"
                    Display="Dynamic" CssClass="text-danger" ErrorMessage="Ad gerekli bir alan" />
            </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Konu" AssociatedControlID="TextBox1"
                CssClass="col-md-2 control-label"> </asp:Label>
            <div class="col-md-2">
                <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" Width="400px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1"
                    Display="Dynamic" CssClass="text-danger" ErrorMessage="Konu gerekli bir alan" />
            </div>

             </div>

                   <div class="form-group">
        <asp:Label ID="Label1" runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label"
                 Text="E-mail"> </asp:Label>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" Width="400px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email"
                    Display="Dynamic" CssClass="text-danger" ErrorMessage="Email gerekli bir alan" />
                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" Display="Dynamic"
                    CssClass="text-danger" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="Email" ErrorMessage="Hatalı e-mail..."></asp:RegularExpressionValidator> 
            </div>
      </div>
  
         <div class="form-group">
               <asp:Label ID="LblRecaptcha" runat="server" AssociatedControlID="Recaptcha1" CssClass="col-md-2 control-label"
                 Text="Güvenlik Kodu"> </asp:Label>
                  <div class="col-md-3">
        <cc1:recaptcha id="Recaptcha1" runat="server"></cc1:recaptcha>
                              </div>
    </div>
                 
                  
         <div class="form-group">
         <asp:Label ID="Lbl" runat="server" Text="Mesaj" AssociatedControlID="TextBox2"
                CssClass="col-md-2 control-label"> </asp:Label>
            <div class="col-md-2">
                <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" Height="250px" TextMode="MultiLine" Width="400px" />
             
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
                    Display="Dynamic" CssClass="text-danger" ErrorMessage="Mesaj gerekli bir alan"/><br />
                 <asp:LinkButton ID="Button1" runat="server" CssClass="btn btn-danger" OnClick="Button1_Click"  CausesValidation="False"> 
                     <span aria-hidden="true" class="glyphicon glyphicon-send"></span> Gönder
                 </asp:LinkButton>
            </div>
         
         
              </div>
                <p class="text-danger"
            <asp:Literal runat="server" ID="ErrorMessage" 
             /></p>
          </div>            
</asp:Content>
