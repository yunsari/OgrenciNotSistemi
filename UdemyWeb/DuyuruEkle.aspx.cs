using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DuyuruEkle : System.Web.UI.Page
{

    DataSetTableAdapters.TBL_OGRETMENTableAdapter dt = new DataSetTableAdapters.TBL_OGRETMENTableAdapter();

    DataSetTableAdapters.TBL_DUYURULARTableAdapter duyuru = new DataSetTableAdapters.TBL_DUYURULARTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            TxtDuyuruOgretmen.DataSource = dt.OgretmenListesi();
            TxtDuyuruOgretmen.DataTextField = "OGRTADSOYAD";
            TxtDuyuruOgretmen.DataValueField = "OGRTID";
            TxtDuyuruOgretmen.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        duyuru.DuyuruEkle(TxtDuyuruBaslik.Text, TxtDuyuruIcerik.Value.ToString(), Convert.ToInt32(TxtDuyuruOgretmen.SelectedValue));

        Response.Redirect("DuyuruListesi.aspx");
    }
}