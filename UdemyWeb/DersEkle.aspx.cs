using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DersEkle : System.Web.UI.Page
{
    DataSetTableAdapters.TBL_DERSLERTableAdapter ders = new DataSetTableAdapters.TBL_DERSLERTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ders.DersEkle(txtDers.Text);
        Response.Redirect("DersListesi.aspx");
    }
}