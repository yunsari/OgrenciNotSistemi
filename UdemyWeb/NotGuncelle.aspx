<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="NotGuncelle.aspx.cs" Inherits="NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="txtDersAd" runat="server">Ders Adı</asp:Label>
                <asp:TextBox ID="txtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrID" runat="server">Öğrenci ID</asp:Label>
                <asp:TextBox ID="txtOgrID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrAdSoyad" runat="server">Öğrenci Adı Soyadı</asp:Label>
                <asp:TextBox ID="txtOgrAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtSınav1" runat="server">Sınav 1</asp:Label>
                <asp:TextBox ID="txtSınav1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtSınav2" runat="server">Sınav 2</asp:Label>
                <asp:TextBox ID="txtSınav2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtSınav3" runat="server">Sınav 3</asp:Label>
                <asp:TextBox ID="txtSınav3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOrtalama" runat="server">Ortalama</asp:Label>
                <asp:TextBox ID="txtOrtalama" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtDurum" runat="server">Durum</asp:Label>
                <asp:TextBox ID="txtDurum" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Hesapla" CssClass="btn btn-warning" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Güncelle" CssClass="btn btn-info" OnClick="Button2_Click" />


    </form>

</asp:Content>

