<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128540248/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E3085)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->

# GridView for ASP.NET Web Forms - How to filter selected or unselected rows

The following example demonstrates how to filter grid rows based on their selection state.

## Overview

The outside [ASPxComboBox](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxComboBox) editor performs a grid's custom callback and determines the filter mode. The grid's filter expression is combined via the InOperator / GroupOperator objects - special types for data filtering.

## Files to Review

* [Default.aspx](./CS/WebSite/Default.aspx)
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs)

## Documentation

* [DevExpress.Data.Filtering Namespace](https://docs.devexpress.com/CoreLibraries/DevExpress.Data.Filtering)
