<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="Galeri.aspx.cs" Inherits="Galeri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">



    <!-- -->

    <form id="form1" runat="server">
        <%--  <dx:aspximagegallery id="ASPxImageGallery1" runat="server" datasourceid="SqlDataSource1"
            imageurlfield="OgrFotograf">
            <SettingsFolder ImageCacheFolder="~/Thumb/" />
        </dx:aspximagegallery>--%>



        <asp:ImageMap ID="ImageMap1" runat="server" datasourceid="SqlDataSource1"
            imageurlfield="OgrFotograf">
        </asp:ImageMap>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UdemySiteDBConnectionString %>" SelectCommand="SELECT [OGRFOTOGRAF] FROM [TBL_OGRENCI]"></asp:SqlDataSource>
        <br />

    </form>



</asp:Content>

