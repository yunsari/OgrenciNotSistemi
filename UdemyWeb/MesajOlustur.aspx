<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="MesajOlustur.aspx.cs" Inherits="MesajOluştur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="txtGonderen" runat="server">Gönderen</asp:Label>
                <asp:TextBox ID="txtGonderen" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtAlici" runat="server">Alıcı</asp:Label>
                <asp:TextBox ID="txtAlici" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtBaslik" runat="server">Mesaj Başlığı</asp:Label>
                <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
             <br />
            <div>
                <asp:Label for="txtIcerik" runat="server">Mesaj İçeriği</asp:Label>
                <asp:TextBox ID="txtIcerik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <asp:Button ID="btnGonder" runat="server" Text="Mesaj Gönder" CssClass="btn btn-info" OnClick="btnGonder_Click" />

    </form>

</asp:Content>

