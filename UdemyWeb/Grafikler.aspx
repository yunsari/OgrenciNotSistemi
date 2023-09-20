<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="Grafikler.aspx.cs" Inherits="Grafikler" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 516px;
        }
        .auto-style2 {
            width: 516px;
            height: 318px;
        }
        .auto-style3 {
            height: 318px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="form1" runat="server">
        <table class="table table-bordered table-hover">
            <tr>
                <td class="auto-style2">
                    <asp:Chart ID="Chart1" runat="server" Width="400px">
                        <Series>
                            <asp:Series Name="Dersler">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="Dersler">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                </td>
                <td class="auto-style3">
                    <asp:Chart ID="Chart2" runat="server" Width="400px">
                        <Series>
                            <asp:Series Name="DersAd" ChartType="Doughnut" ChartArea="DersAd">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="DersAd">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Chart ID="Chart3" runat="server" Width="400px">
                        <Series>
                            <asp:Series Name="Cinsiyetler" ChartArea="Cinsiyetler" ChartType="Pie" YValuesPerPoint="2">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="Cinsiyetler">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
                <td>
                    <asp:Chart ID="Chart4" runat="server" Width="400px">
                        <Series>
                            <asp:Series Name="Ogrenci" ChartType="Bar" ChartArea="Ogrenci">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="Ogrenci">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
            </tr>
        </table>
    </form>

</asp:Content>

