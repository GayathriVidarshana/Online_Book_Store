using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Online_Book_Store.View
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        //Database Con.
        //private SqlConnection con;
        //public void connect()
        //{
        //    string newcon = ConfigurationManager.ConnectionStrings["Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\pc\\Documents\\BookStore.mdf;Integrated Security=True;Connect Timeout=30"].ToString();
        //    con = new SqlConnection(newcon);

        //}
        protected void Page_Load(object sender, EventArgs e)
        {
            //connect();
            //con.Open();

            if(!IsPostBack)
            {
                LoadRecord();
            }
            
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            //connect();
            //con.Open();
            SqlCommand cmd = new SqlCommand("dbo.insertBookDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ISBNNO", SqlDbType.VarChar).Value = txtISBN.Text.Trim();
            cmd.Parameters.Add("@TITLE", SqlDbType.VarChar).Value = txtTitle.Text.Trim();
            cmd.Parameters.Add("@AUTHER", SqlDbType.VarChar).Value = txtAuther.Text.Trim(); ;
            cmd.Parameters.Add("@EDITION", SqlDbType.VarChar).Value = txtEdition.Text.Trim();
            cmd.Parameters.Add("@PUBLICATION", SqlDbType.VarChar).Value = txtPublication.Text.Trim();
            cmd.Parameters.Add("@DESCRIPTION", SqlDbType.VarChar).Value = txtDescription.Text.Trim();
            cmd.Parameters.Add("@COPIES", SqlDbType.VarChar).Value = txtCopies.Text.Trim(); ;
            cmd.Parameters.Add("@PRICE", SqlDbType.Int).Value = txtPrice.Text.Trim();

            int i = cmd.ExecuteNonQuery();

            if (i < 0)
            {
                Response.Write("Book Added successfuly!");
                resetForm();
                LoadRecord();
            }
            else
            {
                Response.Write("error occur");
            }

        }

        private void resetForm()
        {
            try
            {
                txtISBN.Text = "";
                txtTitle.Text = "";
                txtAuther.Text = "";
                txtEdition.Text = "";
                txtPublication.Text = "";
                txtDescription.Text = "";
                txtCopies.Text = "";
                txtPrice.Text = "";
            }
            catch (Exception)
            {
                throw;
            }
        }

        void LoadRecord()
        {
            //connect();
            //con.Open(); 
            SqlCommand com = new SqlCommand("select*from dbo.Book",con);
            SqlDataAdapter d = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        //protected void ButtonEdit_Click(object sender, EventArgs e)
        //{
        //    connect();
        //    con.Open();
        //    SqlCommand com = new SqlCommand("UPDATE dbo.Book set ISBNNO = '"+txtISBN.Text+ "', TITLE = '" + txtTitle.Text + "',AUTHER = '" + txtAuther.Text + "',EDITION = '" + txtEdition.Text + "' , PUBLICATION = '" + txtPublication.Text + "', DESCRIPTION = '" + txtDescription.Text + "', COPIES = '" + txtCopies.Text + "', PRICE = '" + txtPrice.Text + "' WHERE ISBNNO ", con);
        //    SqlDataAdapter d = new SqlDataAdapter(com);
        //    DataTable dt = new DataTable();
        //    d.Fill(dt);
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //}
    }
}