using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//reference owin
using Microsoft.Owin.Security;

namespace ActivityLogger
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                plhPrivate.Visible = true;
                plhPublic.Visible = false;
            }
            else
            {
                plhPublic.Visible = true;
                plhPrivate.Visible = false;
            }
        }
    }
}