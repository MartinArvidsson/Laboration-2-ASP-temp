using Laboration_2_Asp.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Laboration_2_Asp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SetFocus(UserTextBox);
        }

        protected void RunButton_Click(object sender, EventArgs e)
        {
            //ResultLabel.Text = Receipt.??(UserTextBox.Text);
            RunButton.Visible = false;
            ResetButton.Visible = true;
        }
    }
}