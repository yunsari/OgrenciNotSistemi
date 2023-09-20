using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GidenMesajlar : System.Web.UI.Page
{
    DataSetTableAdapters.TBL_MESAJLARTableAdapter msj = new DataSetTableAdapters.TBL_MESAJLARTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = msj.OgretmenGidenMesajlar(Session["OgrtNumara"].ToString());
        Repeater1.DataBind();
    }
}