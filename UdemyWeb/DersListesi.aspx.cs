using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DersListesi : System.Web.UI.Page
{
    DataSetTableAdapters.TBL_DERSLERTableAdapter dersler = new DataSetTableAdapters.TBL_DERSLERTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = dersler.DersListesi();
        Repeater1.DataBind();
    }
}