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
        //string newcon = ConfigurationManager.ConnectionStrings["BookStore"].ToString();
        string newcon = ConfigurationManager.ConnectionStrings["BookStore"].ConnectionString;



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }

        }

        protected void Btn_Save_Click(object sender, EventArgs e)
        {
            if (txtISBN.Text == "" || txtTitle.Text == "" || txtPublication.Text == "" || txtPrice.Text == "" || txtEdition.Text == "" || txtDescription.Text == "" || txtCopies.Text == "" || txtAuther.Text == "")
            {

                lbl_error_01.Text = "Please Fill All Fields.";

            }
            else
            {
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
                SqlCommand cmd = new SqlCommand("insert into Book_Details(ISBN, Title, Auther, Edition, Publication, Description, Copies, Prise) values ('" + isbn + "', '" + title + "','" + author + "','" + Edition + "','" + publcation + "','" + description + "','" + copy + "','" + price + "')", conn);
                int result = cmd.ExecuteNonQuery();

                conn.Close();

                if (result == 1)
                {

                    lbl_error_01.Text = "Data Successfully saved.";
                    LoadRecord();

                    resetForm();
                }
                else
                {

                    lbl_error_01.Text = "Data Not Saved.";

                }
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

        void LoadRecord()
        {
            SqlConnection conn = new SqlConnection(newcon);
            conn.Open();
            SqlCommand com = new SqlCommand("select * from Book_Details", conn);
            SqlDataAdapter d = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            d.Fill(dt);
            
            GridView1.DataSource = dt;
            GridView1.DataBind();

            conn.Close();
        }



   


        protected void btn_edit_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}




//}
