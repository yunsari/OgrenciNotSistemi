using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DersSil : System.Web.UI.Page
{
    DataSetTableAdapters.TBL_DERSLERTableAdapter ders = new DataSetTableAdapters.TBL_DERSLERTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());

        ders.DersSil(id);

        Response.Redirect("DersListesi.aspx");
    }
}