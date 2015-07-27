using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//references
using ActivityLogger.Models;
using System.Web.ModelBinding;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace ActivityLogger.admin
{
    public partial class activitymanage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                if (!String.IsNullOrEmpty(Request.QueryString["ActivityID"]))
                {
                    GetActivity();
                }
            }           
        }

        protected void GetActivity()
        {
            activity objA = new activity();

            try
            {
                using (DefaultConnectionAL conn = new DefaultConnectionAL())
                {
                    Int32 ActivityID = Convert.ToInt32(Request.QueryString["ActivityID"]);
                    objA = (from a in conn.activities
                            where a.id == ActivityID
                            select a).FirstOrDefault();

                    txtActivityName.Text = objA.activity_name;
                    pnlTiming.Visible = false;
                    btnLog.Text = "Update";
                }
            }
            catch (Exception e2)
            {
                Response.Redirect("~/error.aspx");
            }      
        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            try
            {
                //connect
                using (DefaultConnectionAL conn = new DefaultConnectionAL())
                {
                    activity objA = new activity();

                    if (!String.IsNullOrEmpty(Request.QueryString["ActivityID"]))
                    {
                        int ActivityID = Convert.ToInt32(Request.QueryString["ActivityID"]);
                        objA = (from a in conn.activities
                                where a.id == ActivityID
                                select a).FirstOrDefault();

                        //Populate the activity from the input form
                        objA.activity_name = txtActivityName.Text;
                    }
                    else
                    {
                        //Populate the activity from the input form
                        objA.account_id = HttpContext.Current.GetOwinContext().Authentication.User.Identity.GetUserId();
                        objA.activity_name = txtActivityName.Text;
                        objA.duration = lblTimeHidden.Value;
                    }                    

                    if (String.IsNullOrEmpty(Request.QueryString["ActivityID"]))
                    {
                        //add
                        conn.activities.Add(objA);
                    }

                    conn.SaveChanges();
                    Response.Redirect("activitylog.aspx");
                }
            }
            catch (System.IO.IOException e3)
            {
                Server.Transfer("/error.aspx", true);
            }
        }
    }
}