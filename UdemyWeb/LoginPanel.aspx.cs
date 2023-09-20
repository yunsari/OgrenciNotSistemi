using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginPanel : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=c-137;Initial Catalog=UdemySiteDB;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand komut = new SqlCommand("Select * From TBL_OGRENCI where Numara = @p1 and OGRSIFRE = @p2", baglanti);

        komut.Parameters.AddWithValue("@p1", txtNumara.Text);
        komut.Parameters.AddWithValue("@p2", txtSifre.Text);

        SqlDataReader dr = komut.ExecuteReader();

        if (dr.Read())
        {
            Session.Add("numara", txtNumara.Text);
            Response.Redirect("OgrenciDefault.aspx?Numara="+ txtNumara.Text);
        }
        else
        {
            txtSifre.Text = "Hatalı Şifre";
        }

        baglanti.Close();
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand komut = new SqlCommand("Select * From TBL_OGRETMEN where OgrtNumara = @p1 and OGRTSIFRE = @p2", baglanti);

        komut.Parameters.AddWithValue("@p1", txtNumara.Text);
        komut.Parameters.AddWithValue("@p2", txtSifre.Text);

        SqlDataReader dr = komut.ExecuteReader();

        if (dr.Read())
        {
            Session.Add("ogrtnumara", txtNumara.Text);
            Response.Redirect("Default.aspx?Numara=" + txtNumara.Text);
        }
        else
        {
            txtSifre.Text = "Hatalı Şifre";
        }

        baglanti.Close();
    }
}