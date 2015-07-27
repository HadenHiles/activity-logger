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
    public partial class activitylog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            GetActivities();
        }

        protected void GetActivities()
        {
            try
            {
                using (DefaultConnectionAL conn = new DefaultConnectionAL())
                {
                    var user = HttpContext.Current.GetOwinContext().Authentication.User.Identity.GetUserId();
                    //use link to query the Departments model
                    var activityItems = (from a in conn.activities
                            where a.account_id == user
                            select new { a.id, a.activity_name, a.duration }
                    );
                    
                    //bind the query result to the gridview
                    //String sort = Session["SortColumn"] + " " + Session["SortDirection"].ToString();
                    //grdActivities.DataSource = activity.AsQueryable().OrderBy(sort).ToList();
                    grdActivities.DataSource = activityItems.ToList();
                    grdActivities.DataBind();
                }
            }
            catch (Exception e1)
            {
                Response.Redirect("/error.aspx");
            }
        }
        protected void grdActivities_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (DefaultConnectionAL conn = new DefaultConnectionAL())
                {
                    var user = HttpContext.Current.GetOwinContext().Authentication.User.Identity.GetUserId();

                    Int32 ActivityID = Convert.ToInt32(grdActivities.DataKeys[e.RowIndex].Values["id"]);

                    var activityItem = (from a in conn.activities
                             where a.id == ActivityID
                             select a).FirstOrDefault();
                    //save
                    conn.activities.Remove(activityItem);
                    conn.SaveChanges();

                    //redirect to updated departments page
                    GetActivities();
                }
            }
            catch (Exception e2)
            {
                Response.Redirect("~/error.aspx");
            }
        }
    }
}