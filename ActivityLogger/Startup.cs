﻿using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;

//reference the identity and owin security packages
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security.Cookies;

[assembly: OwinStartup(typeof(ActivityLogger.Startup))]

namespace ActivityLogger
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // For more information on how to configure your application, visit http://go.microsoft.com/fwlink/?LinkID=316888
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/login.aspx")
            });
        }
    }
}
