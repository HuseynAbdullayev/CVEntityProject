using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVEntityProject
{
    public partial class Default : System.Web.UI.Page
    {
        DBCVENTITYEntities db = new DBCVENTITYEntities();
    
        protected void Page_Load(object sender, EventArgs e)
        {


            Repeater1.DataSource = db.TBL_ABOUT.ToList();
            Repeater1.DataBind();
            Repeater2.DataSource = db.TBL_ABOUT.ToList();
            Repeater2.DataBind();
            Repeater3.DataSource = db.TBL_ABOUT.ToList();
            Repeater3.DataBind();
            Repeater4.DataSource = db.TBL_SKILLS.ToList();
            Repeater4.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBL_CONTACT t = new TBL_CONTACT();
        
            t.NAME = TextBox1.Text;
            t.MAIL = TextBox2.Text;
            t.ABOUT = TextBox3.Text;
            t.MESSAGE = TextBox4.Text;
            db.TBL_CONTACT.Add(t);
            db.SaveChanges();
        }
    }
}