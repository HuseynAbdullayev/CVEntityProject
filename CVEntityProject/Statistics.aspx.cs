using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVEntityProject
{
    public partial class Statistics : System.Web.UI.Page
    {
        DBCVENTITYEntities db = new DBCVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = db.TBL_SKILLS.Count().ToString();
            Label2.Text = db.TBL_CONTACT.Count().ToString();
            Label3.Text = Convert.ToInt32(db.TBL_SKILLS.Average(x=>x.DEGREE)).ToString();
            Label4.Text = Convert.ToInt32(db.TBL_SKILLS.Max(x => x.DEGREE)).ToString();
        }
    }
}