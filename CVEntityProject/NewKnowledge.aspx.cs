using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVEntityProject
{
    public partial class NewKnowledge : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DBCVENTITYEntities db = new DBCVENTITYEntities();
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            TBL_ABOUT t = new TBL_ABOUT();
            t.KNOWLEDGE = TextBox1.Text;
            t.EDUCATION = TextBox2.Text;
            t.WORK = TextBox3.Text;
            db.TBL_ABOUT.Add(t);
            db.SaveChanges();
            Response.Redirect("MyWorkLife.aspx");
        }
    }
}