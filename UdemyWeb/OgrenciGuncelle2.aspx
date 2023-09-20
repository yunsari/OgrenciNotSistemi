<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="OgrenciGuncelle2.aspx.cs" Inherits="OgrenciGuncelle2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="Form1" runat="server">

        <div class="form-group">
           
            <div>
                <asp:TextBox ID="no" runat="server" CssClass="form-control" Enabled="False">Numara</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="sifre" runat="server" CssClass="form-control" placeholder="Şifre" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="sifreAgain" runat="server" CssClass="form-control" placeholder="Şifre Tekrar" TextMode="Password"></asp:TextBox>
            </div>

        </div>

        <asp:Button ID="Button1" runat="server" Text="Şifre Değiştir" CssClass="btn btn-success" OnClick="Button1_Click" />


    </form>


</asp:Content>

