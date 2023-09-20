using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MesajOluştur : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtGonderen.Text = Session["OgrtNumara"].ToString();
    }

    protected void btnGonder_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_MESAJLARTableAdapter dt = new DataSetTableAdapters.TBL_MESAJLARTableAdapter();

        dt.MesajGonder(txtGonderen.Text, txtAlici.Text, txtBaslik.Text, txtIcerik.Text);

        Response.Redirect("GidenMesajlar.aspx");
    }
}