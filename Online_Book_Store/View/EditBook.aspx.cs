using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System;

namespace Online_Book_Store.View
{
    public partial class EditBook : System.Web.UI.Page
    {
        string newcon = ConfigurationManager.ConnectionStrings["BookStore"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBookDetails();
            }

        }

        void LoadBookDetails()
        {
            SqlConnection conn = new SqlConnection(newcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from Book_Details", conn);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);

            GridView_book.DataSource = dt;
            GridView_book.DataBind();

            conn.Close();
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(newcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from Book_Details where ISBN = @isbn", conn);
            cmd.Parameters.AddWithValue("isbn", txtISBN.Text);
            SqlDataReader rdr;
            rdr = cmd.ExecuteReader();
            if (rdr.Read()) {
                lbl_msg_01.Text = "";
                txtTitle.Text = rdr["Title"].ToString();
                txtAuther.Text = rdr["Auther"].ToString();
                txtEdition.Text = rdr["Edition"].ToString();
                txtPublication.Text = rdr["Publication"].ToString();
                txtDescription.Text = rdr["Description"].ToString();
                txtCopies.Text = rdr["Copies"].ToString();
                txtPrice.Text = rdr["prise"].ToString();

            }
            else {

                lbl_msg_01.Text = "No Data to Found";
            }

            conn.Close();
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            lbl_msg_01.Text = "";

            string isbn = txtISBN.Text.ToString();
            string title = txtTitle.Text.ToString();
            string author = txtAuther.Text.ToString();
            string Edition = txtEdition.Text.ToString();
            string publcation = txtPublication.Text.ToString();
            string description = txtDescription.Text.ToString();
            string copy = txtCopies.Text.ToString();
            string price = txtPrice.Text.ToString();

            SqlConnection conn = new SqlConnection(newcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand("UPDATE Book_Details set Title = '" + txtTitle.Text + "',Auther = '" + txtAuther.Text + "',Edition = '" + txtEdition.Text + "' , Publication = '" + txtPublication.Text + "', Description = '" + txtDescription.Text + "', Copies = '" + txtCopies.Text + "', Prise = '" + txtPrice.Text + "' WHERE ISBN = '"+txtISBN.Text+"'", conn);
            int result = cmd.ExecuteNonQuery();
            conn.Close();


            if (result == 1)
            {
                lbl_msg_01.Text = "Successfully Update";
                LoadBookDetails();
                resetForm();

            }
            else {

                lbl_msg_01.Text = "Error";
            }


            
        }

        private void resetForm()
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

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(newcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Delete from Book_Details  WHERE ISBN = '" + txtISBN.Text + "'", conn);
            int result = cmd.ExecuteNonQuery();
            conn.Close();

            if (result == 1)
            {
                lbl_msg_01.Text = "Successfully Deleted";
                LoadBookDetails();
                resetForm();

            }
            else
            {

                lbl_msg_01.Text = "Error";
            }
        }

        protected void btn_clear_Click(object sender, EventArgs e)
        {
            LoadBookDetails();
            resetForm();
        }
    }
}