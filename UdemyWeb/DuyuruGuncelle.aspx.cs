using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DuyuruGuncelle : System.Web.UI.Page
{
    int id;
    
    DataSetTableAdapters.TBL_DUYURULARTableAdapter dt = new DataSetTableAdapters.TBL_DUYURULARTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id = Convert.ToInt32(Request.QueryString["DUYURUID"].ToString());

            TxtDuyuruID.Text = id.ToString();

            TxtDuyuruBaslik.Text = dt.DuyuruSec(id)[0].DUYURUBASLIK;

            TxtDuyuruIcerik.Value = dt.DuyuruSec(id)[0].DUYURUICERIK;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        dt.DuyuruGuncelle(TxtDuyuruBaslik.Text, TxtDuyuruIcerik.Value, Convert.ToInt32(TxtDuyuruID.Text));
        Response.Redirect("DuyuruListesi.aspx");
    }
}