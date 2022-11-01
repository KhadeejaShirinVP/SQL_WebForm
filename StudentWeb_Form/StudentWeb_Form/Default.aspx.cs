using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWeb_Form
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }

        SqlConnection connection = new SqlConnection("Data Source=.;Initial Catalog=WebFormProgramming;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            connection.Open();
            SqlCommand cmd = new SqlCommand("Insert into Student_Information_Table Values('"+int.Parse(TextBox1.Text)+"','"+TextBox2.Text+"','"+DropDownList1.SelectedValue+"','"+double.Parse(TextBox3.Text)+"','"+TextBox4.Text+"')", connection);
            cmd.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully Inserted');", true);
            LoadRecord();

        }
        void LoadRecord()
        {
            SqlCommand cmd = new SqlCommand("select * from Student_Information_Table",connection);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt=new DataTable();
            adapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("Update Student_Information_Table set StudentName='" + TextBox2.Text + "',Address='" + DropDownList1.SelectedValue + "',Age='" + double.Parse(TextBox3.Text) + "',Contact='" + TextBox4.Text + "' where StudentID='" + int.Parse(TextBox1.Text) + "'",connection);
            cmd.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully Updated');", true);
            LoadRecord();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("Delete Student_Information_Table where StudentID='" + int.Parse(TextBox1.Text) + "'", connection);
            cmd.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully Deleted');", true);
            LoadRecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from Student_Information_Table where StudentID='" + int.Parse(TextBox1.Text) + "'", connection);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("select * from Student_Information_Table where StudentID='" + int.Parse(TextBox1.Text) + "'", connection);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                TextBox2.Text= reader.GetValue(1).ToString();
                DropDownList1.SelectedValue = reader.GetValue(2).ToString();
                TextBox3.Text = reader.GetValue(3).ToString();
                TextBox4.Text = reader.GetValue(4).ToString();
            }
           
        }
    }
}