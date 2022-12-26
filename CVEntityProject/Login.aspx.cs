using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVEntityProject
{
    public partial class Login : System.Web.UI.Page
    {
        DBCVENTITYEntities db = new DBCVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            var query = from x in db.TBL_ADMIN
                        where x.USERNAME == TextBox1.Text && x.PASWORD ==
                        TextBox2.Text
                        select x;
            if(query.Any())
            {
                Response.Redirect("Contact.aspx");
            }
            else
            {
                Response.Write("Incorrect password or username.");
            }
        }
    }
}