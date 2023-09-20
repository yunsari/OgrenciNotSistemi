using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciGidenMesajlar : System.Web.UI.Page
{
    DataSetTableAdapters.TBL_MESAJLARTableAdapter msg = new DataSetTableAdapters.TBL_MESAJLARTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = msg.OgrenciGidenKutusu1(Session["Numara"].ToString());
        Repeater1.DataBind();
    }
}