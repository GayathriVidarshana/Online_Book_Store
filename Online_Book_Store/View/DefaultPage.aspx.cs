using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Book_Store.View
{
    public partial class DefaultPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_book_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertBook.aspx");
        }

        protected void Btn_edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditBook.aspx");
        }
    }
}