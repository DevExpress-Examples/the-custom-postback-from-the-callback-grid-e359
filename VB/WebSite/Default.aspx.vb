Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Partial Public Class Grid_Templates_CustomPostback
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
    End Sub
    Protected Sub btnTemplate_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim button As Button = TryCast(sender, Button)
        If button Is Nothing Then
            Return
        End If
        lbPostback.Visible = True
        Dim visibleIndex As Integer = Integer.Parse(button.CommandArgument)
        Dim values() As Object = TryCast(grid.GetRowValues(visibleIndex, "CustomerID", "ContactName", "CompanyName"), Object())
        lbPostback.Items.Add(String.Format("Custmer Id: {0}, Contact Name: {1}, Company Name: {2}.", values(0), values(1), values(2)))
    End Sub
End Class
