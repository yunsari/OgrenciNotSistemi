using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciMesajOlustur : System.Web.UI.Page
{
    DataSetTableAdapters.TBL_MESAJLARTableAdapter msg = new DataSetTableAdapters.TBL_MESAJLARTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        txtGonderen.Text = Session["Numara"].ToString();
    }

    protected void btnGonder_Click(object sender, EventArgs e)
    {
        msg.MesajGonder(txtGonderen.Text, txtAlici.Text, txtBaslik.Text, txtIcerik.Text);
        Response.Redirect("OgrenciGidenMesajlar.aspx");
    }
}