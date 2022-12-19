using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVEntityProject
{
    public partial class DeleteKnowledge : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBCVENTITYEntities db = new DBCVENTITYEntities();
            int x = Convert.ToInt32(Request.QueryString["ID"]);
            var Knowledge = db.TBL_ABOUT.Find(x);
            db.TBL_ABOUT.Remove(Knowledge);
            db.SaveChanges();
            Response.Redirect("MyWorkLife.aspx");
        }
    }
}