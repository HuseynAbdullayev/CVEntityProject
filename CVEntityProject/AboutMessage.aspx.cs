using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVEntityProject
{
    public partial class AboutMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            DBCVENTITYEntities db = new DBCVENTITYEntities();
            int id = int.Parse(Request.QueryString["ID"]);
            var message = db.TBL_CONTACT.Find(id);
            TxtName.Text = message.NAME;
            TxtAbout.Text = message.ABOUT;
            TxtMail.Text = message.MAIL;
            TxtMessage.Text = message.MESSAGE;
           
        }
    }
}