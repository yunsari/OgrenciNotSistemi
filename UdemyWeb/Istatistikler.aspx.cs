using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Istatistikler : System.Web.UI.Page
{
    DataSetTableAdapters.TBL_OGRENCI1TableAdapter dt = new DataSetTableAdapters.TBL_OGRENCI1TableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        txtSumStdnt.Text = "Toplam Öğrenci Sayısı: " + dt.İstatistik1().ToString();

        txtSumTchr.Text = "Toplam Öğretmen Sayısı: " + dt.İstatistik2().ToString();

        txtSumLssn.Text = "Toplam Ders Sayısı: " + dt.İstatistik3().ToString();

        enBasariliDers.Text = "Matematik 1.Sınav'da En Başarılı Öğrenci : " + dt.İstatistik4().ToString();

        fizAvg.Text = "Fizik 1.Sınav'da En Başarılı Öğrenci : " + dt.İstatistik5().ToString();

        dilAvg.Text = "Dil Anlatım 1.Sınav'da En Başarılı Öğrenci : " + dt.İstatistik6().ToString();

        edbAvg.Text = "Edebiyat 1.Sınav'da En Başarılı Öğrenci : " + dt.İstatistik7().ToString();

        matAvg.Text = "Matematik Ortalaması: " + dt.İstatistik8().ToString();

        ANO.Text = "ANO: " + dt.İstatistik9().ToString();
    }
}