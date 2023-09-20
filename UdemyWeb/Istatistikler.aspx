<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="Istatistikler.aspx.cs" Inherits="Istatistikler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:TextBox ID="txtSumStdnt" runat="server" CssClass="form-control" Enabled="False">Toplam Öğrenci Sayısı</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtSumTchr" runat="server" CssClass="form-control" Enabled="False">Toplam Öğretmen Sayısı</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtSumLssn" runat="server" CssClass="form-control" Enabled="False">Toplam Ders Sayısı</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="enBasariliDers" runat="server" CssClass="form-control" Enabled="False">En Başarılı Ders</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="matAvg" runat="server" CssClass="form-control" Enabled="False">Matematik</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="ANO" runat="server" CssClass="form-control" Enabled="False">Algoritma Not Ortalaması</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="fizAvg" runat="server" CssClass="form-control" Enabled="False">Fizik</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="dilAvg" runat="server" CssClass="form-control" Enabled="False">Dil Anlatım</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="edbAvg" runat="server" CssClass="form-control" Enabled="False">Edebiyat</asp:TextBox>
            </div>

        </div>

    </form>

</asp:Content>

