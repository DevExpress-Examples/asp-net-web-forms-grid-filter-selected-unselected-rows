Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports DevExpress.Data.Filtering
Imports DevExpress.Web.ASPxGridView

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub grid_CustomCallback(ByVal sender As Object, ByVal e As ASPxGridViewCustomCallbackEventArgs)
		Dim gridView As ASPxGridView = CType(sender, ASPxGridView)
		Select Case e.Parameters
			Case "All"
				gridView.FilterExpression = String.Empty
			Case "Selected"
				FilterOutNonSelectedRows(gridView, True)
			Case "UnSelected"
				FilterOutNonSelectedRows(gridView, False)
		End Select
		gridView.DataBind()
	End Sub
	Protected Sub FilterOutNonSelectedRows(ByVal gridView As ASPxGridView, ByVal selectedRows As Boolean)
		Dim selectionCriteria As CriteriaOperator = New InOperator(gridView.KeyFieldName, gridView.GetSelectedFieldValues(gridView.KeyFieldName))
		If (Not selectedRows) Then
			selectionCriteria = selectionCriteria.Not()
		End If
		gridView.FilterExpression = (GroupOperator.Combine(GroupOperatorType.And, selectionCriteria)).ToString()
	End Sub
End Class