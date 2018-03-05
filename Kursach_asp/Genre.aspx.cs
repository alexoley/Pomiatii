using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class Genre : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            string genre = TextBox1.Text;
            if (genre == "") return;
            // строка запроса на добавление данных
            string query = "INSERT INTO Genre (Name) VALUES (N'" + genre + "')";
            //выполнение запроса на добавление данных
            SqlDataSource1.InsertCommand = query;
            SqlDataSource1.Insert();
        }
        catch
        {

        }
    }
}