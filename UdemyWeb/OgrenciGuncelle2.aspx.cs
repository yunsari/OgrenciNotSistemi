using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciGuncelle2 : System.Web.UI.Page
{
    DataSetTableAdapters.TBL_OGRENCITableAdapter ogr = new DataSetTableAdapters.TBL_OGRENCITableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        no.Text = Request.QueryString["Numara"];

        if (Page.IsPostBack == false)
        {

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (sifre.Text == sifreAgain.Text)
        {
            ogr.OgrenciOzellikGuncelle(sifre.Text, no.Text);
            Response.Redirect("OgrenciDefault.aspx?Numara=" + no.Text);
        }
        else
        {
            sifreAgain.Text = "Şifreler aynı değil!";
        }


    }
}