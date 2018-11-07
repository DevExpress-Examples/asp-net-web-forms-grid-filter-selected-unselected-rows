<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<script type="text/javascript">
		function OnSelectedIndexChanged(s, e) {
			grid.PerformCallback(s.GetValue());
		}
	</script>
</head>
<body>
	<form id="mainForm" runat="server">
	<div>
		<dx:ASPxComboBox ID="cmbFilterMode" runat="server" ValueType="System.String" SelectedIndex="0">
			<Items>
				<dx:ListEditItem Text="All" Value="All" />
				<dx:ListEditItem Text="Selected" Value="Selected" />
				<dx:ListEditItem Text="UnSelected" Value="UnSelected" />
			</Items>
			<ClientSideEvents SelectedIndexChanged="OnSelectedIndexChanged" />
		</dx:ASPxComboBox>
		<dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid"
			DataSourceID="gridDataSource" KeyFieldName="ProductID" 
			OnCustomCallback="grid_CustomCallback">
			<Columns>
				<dx:GridViewCommandColumn ShowSelectCheckbox="True" VisibleIndex="0">
				</dx:GridViewCommandColumn>
				<dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" 
					VisibleIndex="0">
					<EditFormSettings Visible="False" />
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="2">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="3">
				</dx:GridViewDataTextColumn>
			</Columns>
		</dx:ASPxGridView>
	</div>
	<asp:AccessDataSource ID="gridDataSource" runat="server" 
		DataFile="~/App_Data/nwind.mdb" 
		SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID] FROM [Products]"></asp:AccessDataSource>
	</form>
</body>
</html>
