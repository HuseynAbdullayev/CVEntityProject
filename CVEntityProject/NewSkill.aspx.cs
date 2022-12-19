using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVEntityProject
{
    public partial class NewSkill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DBCVENTITYEntities db = new DBCVENTITYEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            TBL_SKILLS t = new TBL_SKILLS();
            t.SKILL = TextBox1.Text;
            db.TBL_SKILLS.Add(t);
            db.SaveChanges();
            Response.Redirect("MySkills.aspx");
        }
    }
}