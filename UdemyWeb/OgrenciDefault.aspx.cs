using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciDefault : System.Web.UI.Page
{
    DataSetTableAdapters.TBL_OGRENCITableAdapter ogr = new DataSetTableAdapters.TBL_OGRENCITableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        no.Text = Session["Numara"].ToString();

        adSoyad.Text = ogr.OgrenciPaneliGetir(no.Text)[0].OGRAD + " " + ogr.OgrenciPaneliGetir(no.Text)[0].OGRSOYAD;

        mail.Text = ogr.OgrenciPaneliGetir(no.Text)[0].OGRMAIL;
        sifre.Text = ogr.OgrenciPaneliGetir(no.Text)[0].OGRSIFRE;
        //cinsiyet.Text = ogr.OgrenciPaneliGetir(no.Text)[0].OGRCINSIYET;
        tel.Text = ogr.OgrenciPaneliGetir(no.Text)[0].OGRTELEFON;
        foto.Text = ogr.OgrenciPaneliGetir(no.Text)[0].OGRFOTOGRAF;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("OgrenciGuncelle2.aspx?Numara=" + no.Text);
    }
}