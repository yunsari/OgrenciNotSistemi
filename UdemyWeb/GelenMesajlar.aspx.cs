using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GelenMesajlar : System.Web.UI.Page
{
    DataSetTableAdapters.TBL_MESAJLARTableAdapter msj = new DataSetTableAdapters.TBL_MESAJLARTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = msj.OgretmenGelenMesaj(Session["OgrtNumara"].ToString());
        Repeater1.DataBind();
    }
}