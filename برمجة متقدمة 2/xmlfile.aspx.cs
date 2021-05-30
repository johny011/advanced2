using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Xml.Linq;
using System.Drawing;

namespace برمجة_متقدمة_2
{
    public partial class xmlfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                View();
            }
            catch
            {

            }

        }
        protected void View()
        {
            DataSet DS = new DataSet();
            DS.ReadXml(@"D:\برمجة متقدمة 2\students.xml");
            GridView1.DataSource = DS;
            GridView1.DataBind();
            if(!IsPostBack)
            {
                foreach(GridViewRow gr in GridView1.Rows)
                {
                    Dr_Delete.Items.Add(gr.Cells[3].Text);
                    Dr_Edit.Items.Add(gr.Cells[3].Text);
                }
                
            }
        }
        protected void Btn_Delete_Click(object sender, EventArgs e)
        {
            XDocument xDocument = XDocument.Load(@"D:\برمجة متقدمة 2\students.xml");
            xDocument.Root.Elements().Where(x => x.Attribute("id").Value == Dr_Delete.SelectedItem.Value).Remove();
            xDocument.Save(@"D:\برمجة متقدمة 2\students.xml");
            View();
            Dr_Edit.Items.Remove(Dr_Delete.SelectedItem);
            Dr_Delete.Items.Remove(Dr_Delete.SelectedItem);
        }

        protected void Dr_Delete_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
        }

        protected void Btn_Edit_Click(object sender, EventArgs e)
        {
            XDocument xDocument = XDocument.Load(@"D:\برمجة متقدمة 2\students.xml");
            xDocument.Element("students").Elements("student").Where(x => x.Attribute("id").Value == Dr_Edit.SelectedItem.Text).FirstOrDefault().SetElementValue("Name", Txt_Name.Text);
            xDocument.Element("students").Elements("student").Where(x => x.Attribute("id").Value == Dr_Edit.SelectedItem.Text).FirstOrDefault().SetElementValue("age", Txt_Age.Text);
            xDocument.Element("students").Elements("student").Where(x => x.Attribute("id").Value == Dr_Edit.SelectedItem.Text).FirstOrDefault().SetElementValue("year", Txt_Year.Text);
            xDocument.Save(@"D:\برمجة متقدمة 2\students.xml");
            View();
            Txt_Name.Text = "";
            Txt_Year .Text= "";
            Txt_Age.Text = "";
            
        }

        protected void Btn_Add_Click(object sender, EventArgs e)
        {
            XDocument xDocument = XDocument.Load(@"D:\برمجة متقدمة 2\students.xml");
            xDocument.Element("students").Add(
                new XElement("student", new XAttribute("id", int.Parse(Id.Text)),
                new XElement("Name", Name.Text),
                new XElement("age", Age.Text),
                new XElement("year", Year.Text)));
            xDocument.Save(@"D:\برمجة متقدمة 2\students.xml");
            Name.Text = "";
            Age.Text = "";
            Year.Text = "";
            Id.Text = "";
        }
        string conn=@"Data Source=DESKTOP-U91N0A8;Initial Catalog=Homework;Integrated Security=True";
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(conn);
            connection.Open();

            foreach (GridViewRow gr in GridView1.Rows)
            {
                SqlCommand command = new SqlCommand("insert into Users(Id,Name,Year,Age) values(@ID,@Name,@Year,@Age)", connection);
                command.Parameters.AddWithValue("@ID", int.Parse(gr.Cells[2].Text));
                command.Parameters.AddWithValue("@Name", gr.Cells[0].Text);
                command.Parameters.AddWithValue("@Year", gr.Cells[1].Text);
                command.Parameters.AddWithValue("@Age", gr.Cells[3].Text);
                command.ExecuteNonQuery();
            }
            connection.Close();
        }
    }
}