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
            
        }

        protected void RunButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Receipt rs = new Receipt(double.Parse(UserTextBox.Text));

                FirstSum.Text = string.Format("{0:c}", rs.SubTotal);
                DiscountSum.Text = string.Format("{0:p0}", rs.DiscountRate);
                AfterDiscount.Text = string.Format("{0:c}", rs.MoneyOff);
                FinalSum.Text = string.Format("{0:c}", rs.Total);

                RunButton.Visible = false;
                ResetButton.Visible = true;

                PlaceHolder.Visible = true;
            }
        }
    }
}