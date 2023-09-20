<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersGuncelle.aspx.cs" Inherits="DersGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="txtDersID" runat="server">ID</asp:Label>
                <asp:TextBox ID="txtDersID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtDers" runat="server">Dersin Adı</asp:Label>
                <asp:TextBox ID="txtDers" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <asp:Button ID="btnDersGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="btnDersGuncelle_Click" />
    </form>

</asp:Content>

