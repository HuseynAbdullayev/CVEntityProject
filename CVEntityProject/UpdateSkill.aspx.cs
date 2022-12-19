using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVEntityProject
{
    public partial class UpdateSkill : System.Web.UI.Page
    {
        DBCVENTITYEntities db = new DBCVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                int id = int.Parse(Request.QueryString["ID"]);
                var skill = db.TBL_SKILLS.Find(id);
                TextBox1.Text = skill.SKILL;
            }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["ID"]);
            var skill = db.TBL_SKILLS.Find(id);
            skill.SKILL = TextBox1.Text;
            db.SaveChanges();
            Response.Redirect("MySkills.aspx");
        }
    }
}