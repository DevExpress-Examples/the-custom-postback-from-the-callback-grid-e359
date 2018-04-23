<%-- BeginRegion TagPrefix and page properties --%>
<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="Grid_Templates_CustomPostback" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxEditors"
    TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxGridView"  TagPrefix="dxwgv" %>

<%-- EndRegion --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>The custom postback from the callback grid</title>
</head>
<body>
    <form id="form1" runat="server" enableviewstate="true">

    <asp:ListBox ID="lbPostback" runat="server" Visible= "false">
    </asp:ListBox>
    <dxwgv:ASPxGridView ID="grid" ClientInstanceName="grid" runat="server" DataSourceID="AccessDataSource1" KeyFieldName="CustomerID" Width="100%">
        <Columns>
            <dxwgv:GridViewDataColumn FieldName="CustomerID" VisibleIndex="0">
                <DataItemTemplate>
                    <asp:Button ID="btnTemplate" runat="server" CommandArgument='<%#Container.VisibleIndex%>'
                        OnClick="btnTemplate_Click" Text="Click Me" />
                </DataItemTemplate>
                 </dxwgv:GridViewDataColumn>

            <dxwgv:GridViewDataColumn FieldName="ContactName" VisibleIndex="1">
            </dxwgv:GridViewDataColumn>
            <dxwgv:GridViewDataColumn FieldName="CompanyName" VisibleIndex="2">
            </dxwgv:GridViewDataColumn>
            <dxwgv:GridViewDataColumn FieldName="City" VisibleIndex="3">
            </dxwgv:GridViewDataColumn>
            <dxwgv:GridViewDataColumn FieldName="Region" VisibleIndex="4">
            </dxwgv:GridViewDataColumn>
            <dxwgv:GridViewDataColumn FieldName="Country" VisibleIndex="5">
            </dxwgv:GridViewDataColumn>
        </Columns>
    </dxwgv:ASPxGridView>
    <%-- BeginRegion DataSource--%>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
        SelectCommand="SELECT * FROM [Customers]" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = ?" InsertCommand="INSERT INTO [Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [Customers] SET [CompanyName] = ?, [ContactName] = ?, [ContactTitle] = ?, [Address] = ?, [City] = ?, [Region] = ?, [PostalCode] = ?, [Country] = ?, [Phone] = ?, [Fax] = ? WHERE [CustomerID] = ?">
    </asp:AccessDataSource>
    <%-- EndRegion --%>
    </form>
</body>
</html>