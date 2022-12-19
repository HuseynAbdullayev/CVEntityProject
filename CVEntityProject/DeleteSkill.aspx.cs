using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVEntityProject
{
    public partial class DeleteSkill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            DBCVENTITYEntities db = new DBCVENTITYEntities();
            int x = Convert.ToInt32(Request.QueryString["ID"]);
            var skill = db.TBL_SKILLS.Find(x);
            db.TBL_SKILLS.Remove(skill);
            db.SaveChanges();
            Response.Redirect("MySkills.aspx");
        }
    }
}