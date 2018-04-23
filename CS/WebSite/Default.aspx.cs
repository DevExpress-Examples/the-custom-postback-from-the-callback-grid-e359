using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Grid_Templates_CustomPostback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) {
    }
    protected void btnTemplate_Click(object sender, EventArgs e) {
        Button button = sender as Button;
        if(button == null) return;
        lbPostback.Visible = true;
        int visibleIndex = int.Parse(button.CommandArgument);
        object[] values = grid.GetRowValues(visibleIndex, "CustomerID", "ContactName", "CompanyName") as object[];
        lbPostback.Items.Add(string.Format("Custmer Id: {0}, Contact Name: {1}, Company Name: {2}.", values[0], values[1], values[2]));
    }
}
