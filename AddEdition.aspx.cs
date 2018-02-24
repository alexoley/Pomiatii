using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddEdition : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string Type = DropDownList1.SelectedValue;
            string Title = TextBox1.Text;
            double Price = Convert.ToDouble(TextBox2.Text);
            string Periodicity = DropDownList2.SelectedValue;
            int idPH = Convert.ToInt32(DropDownList3.SelectedValue);
            int idGenre = Convert.ToInt32(DropDownList4.SelectedValue);
            if (Type == "" || Title == "" || Price == 0 || Periodicity == "" || idPH == 0 || idGenre == 0) return;
            // строка запроса на добавление данных
            string query = "INSERT INTO Edition ([Type], [Title], [Price], [Periodicity], [id_PublishHouse], [id_Genre]) VALUES ('" + Type + "',N'" + Title + "'," + Price + ",'" + Periodicity + "'," + idPH + "," + idGenre + ")";
            //выполнение запроса на добавление данных
            SqlDataSource1.InsertCommand = query;
            SqlDataSource1.Insert();
        }
        catch
        {

        }
    }
}