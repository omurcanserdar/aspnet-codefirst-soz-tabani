<%@ Page Title="" Language="C#" MasterPageFile="~/layout/main.Master" AutoEventWireup="true" CodeBehind="atasoz.aspx.cs" Inherits="SözTabani.atasoz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
   <asp:ListView ID="AtasozList" runat="server">
        <LayoutTemplate>
            <div class="row">
                <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
            </div>
        </LayoutTemplate>
        <ItemTemplate>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <div class="caption">
                        <h4>
                            <a href='Detaylar?id=<%#Eval("atasoz_id") %>'>
                              <%#Eval("atasoz_icerik")%>
                            </a>
                        </h4>
                        <p>
                            <span>
                               Eklenme Tarihi: <%#Eval("atasoz_eklenmetarih")%> <br />
                               Atasöz Uyruğu:  <%#Eval("atasoz_uyruk_id") %>
                               
                    </div>
                     </div>
            </div>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>
