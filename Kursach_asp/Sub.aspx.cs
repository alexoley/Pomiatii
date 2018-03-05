using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Sub : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
       
        int id_edit = Convert.ToInt32(DropDownList7.SelectedValue);
        int id_sub = Convert.ToInt32(DropDownList6.SelectedValue);
        string period = TextBox1.Text;
        string ddate = DateTime.Now.Day.ToString() + "." + DateTime.Now.Month.ToString() + "." + DateTime.Now.Year.ToString();
        if (id_sub == 0 || id_edit == 0 || period == "") return;
        // строка запроса на добавление данных
        String query = "INSERT INTO Sub (id_Edition,id_Subscriber,period,Registration_date) VALUES (" + id_edit + "," + id_sub + ",'" + period + "','" + ddate + "')";
         //выполнение запроса на добавление данных
        SqlDataSource1.InsertCommand = query;
        SqlDataSource1.Insert();

        String q = "update sub set cost = (period/e.periodicity*e.price) from edition e where e.id = sub.id_edition and e.id =" + id_edit;
        SqlDataSource1.UpdateCommand = q;
        SqlDataSource1.Update();
        


    }
    
}