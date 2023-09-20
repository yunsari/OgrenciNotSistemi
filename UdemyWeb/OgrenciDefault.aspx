<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="OgrenciDefault.aspx.cs" Inherits="OgrenciDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:TextBox ID="adSoyad" runat="server" CssClass="form-control" Enabled="False">Ad Soyad</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="no" runat="server" CssClass="form-control" Enabled="False">Numara</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="mail" runat="server" CssClass="form-control" Enabled="False">Mail</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="tel" runat="server" CssClass="form-control" Enabled="False">Telefon</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="sifre" runat="server" CssClass="form-control" Enabled="False">Şifre</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="foto" runat="server" CssClass="form-control" Enabled="False">Fotoğraf</asp:TextBox>
            </div>

        </div>

        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click" />


    </form>

</asp:Content>

