using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NotListesi : System.Web.UI.Page
{
    DataSetTableAdapters.OgrNotlarTableAdapter not = new DataSetTableAdapters.OgrNotlarTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = not.NotlarıGetir();
        Repeater1.DataBind();
    }
}