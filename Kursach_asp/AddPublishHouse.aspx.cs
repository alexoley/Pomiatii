using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddPublishHouse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string name = TextBox1.Text;
            string address = TextBox2.Text;
            if (name == "") return;
            // строка запроса на добавление данных
            string query = "INSERT INTO PublishHouse (Name, Address) VALUES (N'" + name + "',N'" + address + "')";
            //выполнение запроса на добавление данных
            SqlDataSource1.InsertCommand = query;
            SqlDataSource1.Insert();
        }
        catch
        {

        }
    }
}