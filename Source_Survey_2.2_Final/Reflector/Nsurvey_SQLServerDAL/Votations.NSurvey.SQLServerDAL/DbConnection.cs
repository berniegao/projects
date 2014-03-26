using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using Microsoft.Practices.EnterpriseLibrary.Common;
using Microsoft.Practices.EnterpriseLibrary.Data.Configuration;

using System.Data;

using System.Web;
using System.Web.Caching;
using System.Collections.Specialized;
using System.Configuration;

namespace Votations.NSurvey.SQLServerDAL
{
    public class DbConnection
    {

        /// <summary>
        /// Create Database and connect: see web.config file dataConfiguration defaultDatabase=
        /// </summary>     


        static DatabaseProviderFactory factory = new DatabaseProviderFactory();

        public static SqlDatabase db 
        {
            get
            {
            SqlDatabase db = factory.CreateDefault() as SqlDatabase;
            return db;
            }

        }
          
        
        public static string NewDbConnectionString
        {

            get
            {

                if (HttpContext.Current == null)
                {

                   // return System.Configuration.ConfigurationManager.ConnectionStrings[""].ConnectionString;     
            
                    DatabaseSettings dbSettings = (DatabaseSettings)ConfigurationManager.GetSection("dataConfiguration");
                    return ConfigurationManager.ConnectionStrings[dbSettings.DefaultDatabase].ConnectionString;

                }

                Cache cache = HttpContext.Current.Cache;

                if (cache["NSurvey.NewDbConnectionString"] == null)
                {

                    DatabaseSettings dbSettings = (DatabaseSettings)ConfigurationManager.GetSection("dataConfiguration");
                    String values2 = System.Configuration.ConfigurationManager.ConnectionStrings[dbSettings.DefaultDatabase].ConnectionString;

                    cache.Insert("NSurvey.NewDbConnectionString", values2);
                }

                return cache["NSurvey.NewDbConnectionString"].ToString();

            }

        }
    }
}
