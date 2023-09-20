using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciNotu : System.Web.UI.Page
{
    DataSetTableAdapters.OgrNotlarTableAdapter nots = new DataSetTableAdapters.OgrNotlarTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = nots.OgrenciNotu(Session["Numara"].ToString());
        Repeater1.DataBind();
    }
}