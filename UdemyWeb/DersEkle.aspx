<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersEkle.aspx.cs" Inherits="DersEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="Form1" runat="server">

        <div class="form-group">

            <div>
                <asp:label for="txtDers" runat="server">Ders Adı</asp:label>
                <asp:textbox id="txtDers" runat="server" cssclass="form-control"></asp:textbox>
            </div>
            <br />

        </div>

        <asp:button id="Button1" runat="server" text="Oluştur" cssclass="btn btn-info" OnClick="Button1_Click" />

    </form>

</asp:Content>

