using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddSubscriber : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string LN = TextBox1.Text;
            string FN = TextBox2.Text;
            string P = TextBox3.Text;
            string AD = TextBox4.Text;
            if (LN == "" || FN == "" || P == "" || AD == "") return;
            // строка запроса на добавление данных
            string query = "INSERT INTO Subscriber ([Last Name], [First Name], [Patronymic], [Address]) VALUES (N'" + LN + "',N'" + FN + "',N'" + P + "',N'" + AD + "')";
            //выполнение запроса на добавление данных
            SqlDataSource1.InsertCommand = query;
            SqlDataSource1.Insert();
        }
        catch
        {

        }
    }
}