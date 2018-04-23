using System;
using System.Collections.Generic;
using DevExpress.Data.Filtering;
using DevExpress.Web.ASPxGridView;

public partial class _Default : System.Web.UI.Page {
    protected void grid_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e) {
        ASPxGridView gridView = (ASPxGridView)sender;
        switch (e.Parameters) {
            case "All":
                gridView.FilterExpression = string.Empty;
                break;
            case "Selected":
                FilterOutNonSelectedRows(gridView, true);
                break;
            case "UnSelected":
                FilterOutNonSelectedRows(gridView, false);
                break;
        }
        gridView.DataBind();
    }
    protected void FilterOutNonSelectedRows(ASPxGridView gridView, bool selectedRows) {
        CriteriaOperator selectionCriteria = new InOperator(gridView.KeyFieldName, gridView.GetSelectedFieldValues(gridView.KeyFieldName));
        if (!selectedRows) 
            selectionCriteria = selectionCriteria.Not();
        gridView.FilterExpression = (GroupOperator.Combine(GroupOperatorType.And, selectionCriteria)).ToString();
    }
}