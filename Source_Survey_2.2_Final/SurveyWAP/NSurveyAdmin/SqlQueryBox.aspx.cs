using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Votations.NSurvey.WebAdmin.UserControls;
using Votations.NSurvey.Web;
using Votations.NSurvey.Data;
using Votations.NSurvey.WebAdmin;
// using Votations.NSurvey.WebAdmin.SQL;

namespace Votations.NSurvey.WebAdmin
{
    public partial class SqlQueryBox : PageBase
    {
        //protected SqlBox NewSqlQueryBox;
		new protected HeaderControl Header;
        

        protected void Page_Load(object sender, EventArgs e)
        {

            //Setup page security
            //SetupSecurity();

            // Put user code to initialize the page here
            
            ((Wap)Master).HeaderControl.SurveyId = -1;

        }

        private void SetupSecurity()
		{
			CheckRight(NSurveyRights.CreateSurvey, true);
		}


        #region Web Form Designer generated code
        override protected void OnInit(EventArgs e)
        {
            //
            // CODEGEN: This call is required by the ASP.NET Web Form Designer.
            //
            InitializeComponent();
            base.OnInit(e);
        }

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion



    }
}