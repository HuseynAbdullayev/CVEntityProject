using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVEntityProject
{
    public partial class UpdateKnowledge : System.Web.UI.Page
    {
        DBCVENTITYEntities db = new DBCVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack== false)
            {
                int id = int.Parse(Request.QueryString["ID"]);
                var Knowledge = db.TBL_ABOUT.Find(id);
                TextBox1.Text = Knowledge.KNOWLEDGE;
                TextBox2.Text = Knowledge.EDUCATION;
                TextBox3.Text = Knowledge.WORK;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["ID"]);
            var Knowledge = db.TBL_ABOUT.Find(id);
            Knowledge.KNOWLEDGE = TextBox1.Text;
            Knowledge.EDUCATION = TextBox2.Text;
            Knowledge.WORK = TextBox3.Text;
            db.SaveChanges();
            Response.Redirect("MyWorkLife.aspx");
        }
    }
}