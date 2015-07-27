using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//reference owin
using Microsoft.Owin.Security;
using ActivityLogger.Models;
using System.Web.ModelBinding;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace ActivityLogger
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Visible = false;

            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                plhPrivate.Visible = true;
                plhPublic.Visible = false;
                GetName();
            }
            else
            {
                plhPublic.Visible = true;
                plhPrivate.Visible = false;
            }
        }

        protected void GetName()
        {
            try
            {
                using (DefaultConnectionAL conn = new DefaultConnectionAL())
                {
                    var user = HttpContext.Current.GetOwinContext().Authentication.User.Identity.GetUserId();

                    var name = (from n in conn.AspNetUsers
                                    where n.Id == user
                                    select n).FirstOrDefault();

                    lblName.Visible = true;
                    lblName.Text = "Hey " + name.UserName + "! Start your active lifestyle by recording an activity now!";
                }
            }
            catch (Exception e)
            {
                Response.Redirect("~/error.aspx");
            }
        }
    }
}