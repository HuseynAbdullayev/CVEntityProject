using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVEntityProject
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DBCVENTITYEntities db = new DBCVENTITYEntities();

            var message = db.TBL_CONTACT.ToList();
            Repeater1.DataSource = message;
            Repeater1.DataBind();



        }
    }
}