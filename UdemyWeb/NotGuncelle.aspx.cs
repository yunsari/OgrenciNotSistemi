using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NotGuncelle : System.Web.UI.Page
{
    int nid;

    DataSetTableAdapters.OgrNotlarTableAdapter nots = new DataSetTableAdapters.OgrNotlarTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());

            txtOgrID.Text = nots.NotGetir2(nid)[0].OGRENCIID.ToString();
            txtOgrAdSoyad.Text = nots.NotGetir2(nid)[0].OGRENCIADSOYAD;
            txtDersAd.Text = nots.NotGetir2(nid)[0].DERSAD;
            txtSınav1.Text = nots.NotGetir2(nid)[0].SINAV1.ToString();
            txtSınav2.Text = nots.NotGetir2(nid)[0].SINAV2.ToString();
            txtSınav3.Text = nots.NotGetir2(nid)[0].SINAV3.ToString();
            txtOrtalama.Text = nots.NotGetir2(nid)[0].ORTALAMA.ToString();
            txtDurum.Text = nots.NotGetir2(nid)[0].DURUM.ToString();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        double s1, s2, s3;
        double avg;

        s1 = Convert.ToInt32(txtSınav1.Text);
        s2 = Convert.ToInt32(txtSınav2.Text);
        s3 = Convert.ToInt32(txtSınav3.Text);
        avg = (s1 + s2 + s3) / 3;
        txtOrtalama.Text = avg.ToString("0.00");

        if (avg >= 50)
        {
            txtDurum.Text = "True";
        }
        else
        {
            txtDurum.Text = "False";
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
        DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();
        dt.NotGuncelle(byte.Parse(txtSınav1.Text), byte.Parse(txtSınav2.Text), byte.Parse(txtSınav3.Text), decimal.Parse(txtOrtalama.Text), bool.Parse(txtDurum.Text), nid);

        Response.Redirect("NotListesi.Aspx");
    }
}