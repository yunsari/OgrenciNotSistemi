using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DersGuncelle : System.Web.UI.Page
{
    DataSetTableAdapters.TBL_DERSLERTableAdapter dersler = new DataSetTableAdapters.TBL_DERSLERTableAdapter();

    int id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());

            txtDersID.Text = id.ToString();

            txtDers.Text = dersler.DersGetir(id)[0].DERSAD;
        }
    }

    protected void btnDersGuncelle_Click(object sender, EventArgs e)
    {
        dersler.DersGuncelle(txtDers.Text, Convert.ToInt32(txtDersID.Text));
        Response.Redirect("DersListesi.aspx");
    }
}