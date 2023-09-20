<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPanel.aspx.cs" Inherits="LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Dosyalar1/bootstrap-3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
    <title></title>

    <style>
        .btnGiris {
            background: radial-gradient(circle, rgba(81,193,191,1) 35%, rgba(0,200,247,1) 100%);
            width: 300px;
            color: white;
            border: none;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 32px;
        }

            .btnGiris:hover {
                background: radial-gradient(circle, rgba(105,236,234,1) 35%, rgba(15,93,111,1) 100%);
            }

        h2 {
            color: rgb(105,236,234);
        }

        hr.new1 {
            border-top: 1px solid aqua;
        }

        .yeniStil6 {
            font-family: calibri;
        }

        .auto-style1 {
            display: block;
            width: 100%;
            height: 45px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            margin-left: 25;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">

        <br />
        <center>
        <h2><span class="yeniStil6">
            Öğrenci Sınav Not Sistemi Giriş Ekranı</span></h2>
        </center>
        <div style="width: 300px; margin: auto">
            <br />
            <br />
            <br />
            <br />
            <div style="margin: auto; text-align: center;">
                <asp:Image ID="Image1" runat="server" Height="194px" Width="205px" ImageUrl="~/educ0.png" />
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <div>
                <asp:TextBox ID="txtNumara" runat="server" CssClass="auto-style1" Style="border-radius: 32px;" placeholder="Kullanıcı Adı"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="txtSifre" runat="server" CssClass="form-control" Style="border-radius: 32px; height: 45px;" placeholder="Şifre" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <asp:Button class="button btnGiris" ID="btnGirisYap" runat="server" OnClick="Button1_Click" Text="Giriş Yap" /><br />
            <br />
            <hr class="new1" />
            <center>
            <asp:Button ID="Button1" runat="server" Style="width: 250px; border-radius: 32px;" CssClass="btn btn-default" Text="Öğretmen Girişi" OnClick="Button1_Click1" /><br />
                <br />
            <asp:Button ID="Button2" runat="server" Style="width: 250px; border-radius: 32px;" CssClass="btn btn-default" Text="Şifremi Unuttum" /><br />
                <br />
            <asp:Button ID="Button3" runat="server" Style="width: 250px; border-radius: 32px;" CssClass="btn btn-default" Text="Yardım" />
            </center>
        </div>

    </form>



</body>
</html>
