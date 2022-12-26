using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVEntityProject
{
    public partial class SignUp : System.Web.UI.Page
    {

        public int id()
        {
            var idd = from x in db.TBL_ADMIN
                      where x.USERNAME == TextBox1.Text && x.PASWORD == TextBox2.Text
                      select x.ID;
            int id = Convert.ToInt32(idd);
            return id;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        DBCVENTITYEntities db = new DBCVENTITYEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            TBL_ADMIN t = new TBL_ADMIN();
            t.USERNAME = TextBox1.Text;
            t.PASWORD = TextBox2.Text;
            t.EMAIL = TextBox3.Text;
            db.TBL_ADMIN.Add(t);
            db.SaveChanges();
            Response.Redirect("Default.aspx");
        }

      
    }
}