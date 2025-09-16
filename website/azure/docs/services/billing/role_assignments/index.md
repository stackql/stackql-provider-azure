--- 
title: role_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - role_assignments
  - billing
  - azure
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure resources using SQL
custom_edit_url: null
image: /img/stackql-azure-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>role_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>role_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.role_assignments" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_customer"
    values={[
        { label: 'get_by_customer', value: 'get_by_customer' },
        { label: 'get_by_billing_profile', value: 'get_by_billing_profile' },
        { label: 'list_by_customer', value: 'list_by_customer' },
        { label: 'get_by_department', value: 'get_by_department' },
        { label: 'get_by_enrollment_account', value: 'get_by_enrollment_account' },
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'get_by_billing_account', value: 'get_by_billing_account' },
        { label: 'list_by_department', value: 'list_by_department' },
        { label: 'list_by_enrollment_account', value: 'list_by_enrollment_account' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' }
    ]}
>
<TabItem value="get_by_customer">

The properties of the billing role assignment.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the billing role assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_billing_profile">

The properties of the billing role assignment.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the billing role assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_customer">

The list of the billing role assignments.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the billing role assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_department">

The properties of the billing role assignment.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the billing role assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_enrollment_account">

The properties of the billing role assignment.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the billing role assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_billing_profile">

The list of the billing role assignments.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the billing role assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_billing_account">

The properties of the billing role assignment.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the billing role assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_department">

The list of the billing role assignments.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the billing role assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_enrollment_account">

The list of the billing role assignments.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the billing role assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_billing_account">

The list of the billing role assignments.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the billing role assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
</Tabs>

## Methods

The following methods are available for this resource:

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Accessible by</th>
    <th>Required Params</th>
    <th>Optional Params</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><a href="#get_by_customer"><CopyableCode code="get_by_customer" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-customerName"><code>customerName</code></a>, <a href="#parameter-billingRoleAssignmentName"><code>billingRoleAssignmentName</code></a></td>
    <td></td>
    <td>Gets a role assignment for the caller on a customer. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement.</td>
</tr>
<tr>
    <td><a href="#get_by_billing_profile"><CopyableCode code="get_by_billing_profile" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-billingRoleAssignmentName"><code>billingRoleAssignmentName</code></a></td>
    <td></td>
    <td>Gets a role assignment for the caller on a billing profile. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_customer"><CopyableCode code="list_by_customer" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-customerName"><code>customerName</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a></td>
    <td>Lists the role assignments for the caller on customer. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement.</td>
</tr>
<tr>
    <td><a href="#get_by_department"><CopyableCode code="get_by_department" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-departmentName"><code>departmentName</code></a>, <a href="#parameter-billingRoleAssignmentName"><code>billingRoleAssignmentName</code></a></td>
    <td></td>
    <td>Gets a role assignment for the caller on a department. The operation is supported only for billing accounts with agreement type Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#get_by_enrollment_account"><CopyableCode code="get_by_enrollment_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-enrollmentAccountName"><code>enrollmentAccountName</code></a>, <a href="#parameter-billingRoleAssignmentName"><code>billingRoleAssignmentName</code></a></td>
    <td></td>
    <td>Gets a role assignment for the caller on a enrollment Account. The operation is supported only for billing accounts with agreement type Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_profile"><CopyableCode code="list_by_billing_profile" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a></td>
    <td>Lists the role assignments for the caller on a billing profile. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#get_by_billing_account"><CopyableCode code="get_by_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingRoleAssignmentName"><code>billingRoleAssignmentName</code></a></td>
    <td></td>
    <td>Gets a role assignment for the caller on a billing account. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement, Microsoft Customer Agreement or Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_department"><CopyableCode code="list_by_department" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-departmentName"><code>departmentName</code></a></td>
    <td></td>
    <td>Lists the role assignments for the caller on a department. The operation is supported for billing accounts of type Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_enrollment_account"><CopyableCode code="list_by_enrollment_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-enrollmentAccountName"><code>enrollmentAccountName</code></a></td>
    <td></td>
    <td>Lists the role assignments for the caller on a enrollment account. The operation is supported for billing accounts of type Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_account"><CopyableCode code="list_by_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a></td>
    <td>Lists the role assignments for the caller on a billing account. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement, Microsoft Customer Agreement or Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#create_by_customer"><CopyableCode code="create_by_customer" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-customerName"><code>customerName</code></a>, <a href="#parameter-data__roleDefinitionId"><code>data__roleDefinitionId</code></a></td>
    <td></td>
    <td>Adds a role assignment on a customer. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement.</td>
</tr>
<tr>
    <td><a href="#create_by_billing_profile"><CopyableCode code="create_by_billing_profile" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-data__roleDefinitionId"><code>data__roleDefinitionId</code></a></td>
    <td></td>
    <td>Adds a role assignment on a billing profile. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#create_by_billing_account"><CopyableCode code="create_by_billing_account" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-data__roleDefinitionId"><code>data__roleDefinitionId</code></a></td>
    <td></td>
    <td>Adds a role assignment on a billing account. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#delete_by_customer"><CopyableCode code="delete_by_customer" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-customerName"><code>customerName</code></a>, <a href="#parameter-billingRoleAssignmentName"><code>billingRoleAssignmentName</code></a></td>
    <td></td>
    <td>Deletes a role assignment on a customer. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement.</td>
</tr>
<tr>
    <td><a href="#delete_by_billing_profile"><CopyableCode code="delete_by_billing_profile" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-billingRoleAssignmentName"><code>billingRoleAssignmentName</code></a></td>
    <td></td>
    <td>Deletes a role assignment on a billing profile. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#delete_by_department"><CopyableCode code="delete_by_department" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-departmentName"><code>departmentName</code></a>, <a href="#parameter-billingRoleAssignmentName"><code>billingRoleAssignmentName</code></a></td>
    <td></td>
    <td>Deletes a role assignment on a department. The operation is supported only for billing accounts with agreement type Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#delete_by_enrollment_account"><CopyableCode code="delete_by_enrollment_account" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-enrollmentAccountName"><code>enrollmentAccountName</code></a>, <a href="#parameter-billingRoleAssignmentName"><code>billingRoleAssignmentName</code></a></td>
    <td></td>
    <td>Deletes a role assignment on a enrollment Account. The operation is supported only for billing accounts with agreement type Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#delete_by_billing_account"><CopyableCode code="delete_by_billing_account" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingRoleAssignmentName"><code>billingRoleAssignmentName</code></a></td>
    <td></td>
    <td>Deletes a role assignment on a billing account. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement, Microsoft Customer Agreement or Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#resolve_by_customer"><CopyableCode code="resolve_by_customer" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-customerName"><code>customerName</code></a></td>
    <td><a href="#parameter-resolveScopeDisplayNames"><code>resolveScopeDisplayNames</code></a>, <a href="#parameter-filter"><code>filter</code></a></td>
    <td>Lists the role assignments for the caller on a customer while fetching user info for each role assignment. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement.</td>
</tr>
<tr>
    <td><a href="#resolve_by_invoice_section"><CopyableCode code="resolve_by_invoice_section" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-invoiceSectionName"><code>invoiceSectionName</code></a></td>
    <td><a href="#parameter-resolveScopeDisplayNames"><code>resolveScopeDisplayNames</code></a>, <a href="#parameter-filter"><code>filter</code></a></td>
    <td>Lists the role assignments for the caller on an invoice section while fetching user info for each role assignment. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#resolve_by_billing_profile"><CopyableCode code="resolve_by_billing_profile" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a></td>
    <td><a href="#parameter-resolveScopeDisplayNames"><code>resolveScopeDisplayNames</code></a>, <a href="#parameter-filter"><code>filter</code></a></td>
    <td>Lists the role assignments for the caller on an billing profile while fetching user info for each role assignment. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#resolve_by_billing_account"><CopyableCode code="resolve_by_billing_account" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td><a href="#parameter-resolveScopeDisplayNames"><code>resolveScopeDisplayNames</code></a>, <a href="#parameter-filter"><code>filter</code></a></td>
    <td>Lists the role assignments for the caller on a billing account while fetching user info for each role assignment. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement, Microsoft Customer Agreement or Enterprise Agreement.</td>
</tr>
</tbody>
</table>

## Parameters

Parameters can be passed in the `WHERE` clause of a query. Check the [Methods](#methods) section to see which parameters are required or optional for each operation.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr id="parameter-billingAccountName">
    <td><CopyableCode code="billingAccountName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a billing account.</td>
</tr>
<tr id="parameter-billingProfileName">
    <td><CopyableCode code="billingProfileName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a billing profile.</td>
</tr>
<tr id="parameter-billingRoleAssignmentName">
    <td><CopyableCode code="billingRoleAssignmentName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a role assignment.</td>
</tr>
<tr id="parameter-customerName">
    <td><CopyableCode code="customerName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a customer.</td>
</tr>
<tr id="parameter-departmentName">
    <td><CopyableCode code="departmentName" /></td>
    <td><code>string</code></td>
    <td>The name of the department.</td>
</tr>
<tr id="parameter-enrollmentAccountName">
    <td><CopyableCode code="enrollmentAccountName" /></td>
    <td><code>string</code></td>
    <td>The name of the enrollment account.</td>
</tr>
<tr id="parameter-invoiceSectionName">
    <td><CopyableCode code="invoiceSectionName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies an invoice section.</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>The filter query option allows clients to filter a collection of resources that are addressed by a request URL.</td>
</tr>
<tr id="parameter-resolveScopeDisplayNames">
    <td><CopyableCode code="resolveScopeDisplayNames" /></td>
    <td><code>boolean</code></td>
    <td>Resolves the scope display name for each of the role assignments.</td>
</tr>
<tr id="parameter-skip">
    <td><CopyableCode code="skip" /></td>
    <td><code>integer (int64)</code></td>
    <td>The skip query option requests the number of items in the queried collection that are to be skipped and not included in the result.</td>
</tr>
<tr id="parameter-top">
    <td><CopyableCode code="top" /></td>
    <td><code>integer (int64)</code></td>
    <td>The top query option requests the number of items in the queried collection to be included in the result. The maximum supported value for top is 50.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_customer"
    values={[
        { label: 'get_by_customer', value: 'get_by_customer' },
        { label: 'get_by_billing_profile', value: 'get_by_billing_profile' },
        { label: 'list_by_customer', value: 'list_by_customer' },
        { label: 'get_by_department', value: 'get_by_department' },
        { label: 'get_by_enrollment_account', value: 'get_by_enrollment_account' },
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'get_by_billing_account', value: 'get_by_billing_account' },
        { label: 'list_by_department', value: 'list_by_department' },
        { label: 'list_by_enrollment_account', value: 'list_by_enrollment_account' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' }
    ]}
>
<TabItem value="get_by_customer">

Gets a role assignment for the caller on a customer. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_assignments
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND customerName = '{{ customerName }}' -- required
AND billingRoleAssignmentName = '{{ billingRoleAssignmentName }}' -- required
;
```
</TabItem>
<TabItem value="get_by_billing_profile">

Gets a role assignment for the caller on a billing profile. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_assignments
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND billingRoleAssignmentName = '{{ billingRoleAssignmentName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_customer">

Lists the role assignments for the caller on customer. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_assignments
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND customerName = '{{ customerName }}' -- required
AND filter = '{{ filter }}'
AND top = '{{ top }}'
AND skip = '{{ skip }}'
;
```
</TabItem>
<TabItem value="get_by_department">

Gets a role assignment for the caller on a department. The operation is supported only for billing accounts with agreement type Enterprise Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_assignments
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND departmentName = '{{ departmentName }}' -- required
AND billingRoleAssignmentName = '{{ billingRoleAssignmentName }}' -- required
;
```
</TabItem>
<TabItem value="get_by_enrollment_account">

Gets a role assignment for the caller on a enrollment Account. The operation is supported only for billing accounts with agreement type Enterprise Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_assignments
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND enrollmentAccountName = '{{ enrollmentAccountName }}' -- required
AND billingRoleAssignmentName = '{{ billingRoleAssignmentName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_billing_profile">

Lists the role assignments for the caller on a billing profile. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_assignments
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND filter = '{{ filter }}'
AND top = '{{ top }}'
AND skip = '{{ skip }}'
;
```
</TabItem>
<TabItem value="get_by_billing_account">

Gets a role assignment for the caller on a billing account. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement, Microsoft Customer Agreement or Enterprise Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_assignments
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingRoleAssignmentName = '{{ billingRoleAssignmentName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_department">

Lists the role assignments for the caller on a department. The operation is supported for billing accounts of type Enterprise Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_assignments
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND departmentName = '{{ departmentName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_enrollment_account">

Lists the role assignments for the caller on a enrollment account. The operation is supported for billing accounts of type Enterprise Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_assignments
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND enrollmentAccountName = '{{ enrollmentAccountName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_billing_account">

Lists the role assignments for the caller on a billing account. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement, Microsoft Customer Agreement or Enterprise Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_assignments
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND filter = '{{ filter }}'
AND top = '{{ top }}'
AND skip = '{{ skip }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_by_customer"
    values={[
        { label: 'create_by_customer', value: 'create_by_customer' },
        { label: 'create_by_billing_profile', value: 'create_by_billing_profile' },
        { label: 'create_by_billing_account', value: 'create_by_billing_account' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_by_customer">

Adds a role assignment on a customer. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement.

```sql
INSERT INTO azure.billing.role_assignments (
data__principalPuid,
data__principalId,
data__principalTenantId,
data__roleDefinitionId,
data__scope,
data__userAuthenticationType,
data__userEmailAddress,
billingAccountName,
billingProfileName,
customerName
)
SELECT 
'{{ principalPuid }}',
'{{ principalId }}',
'{{ principalTenantId }}',
'{{ roleDefinitionId }}' /* required */,
'{{ scope }}',
'{{ userAuthenticationType }}',
'{{ userEmailAddress }}',
'{{ billingAccountName }}',
'{{ billingProfileName }}',
'{{ customerName }}'
RETURNING
properties,
tags
;
```
</TabItem>
<TabItem value="create_by_billing_profile">

Adds a role assignment on a billing profile. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.

```sql
INSERT INTO azure.billing.role_assignments (
data__principalPuid,
data__principalId,
data__principalTenantId,
data__roleDefinitionId,
data__scope,
data__userAuthenticationType,
data__userEmailAddress,
billingAccountName,
billingProfileName
)
SELECT 
'{{ principalPuid }}',
'{{ principalId }}',
'{{ principalTenantId }}',
'{{ roleDefinitionId }}' /* required */,
'{{ scope }}',
'{{ userAuthenticationType }}',
'{{ userEmailAddress }}',
'{{ billingAccountName }}',
'{{ billingProfileName }}'
RETURNING
properties,
tags
;
```
</TabItem>
<TabItem value="create_by_billing_account">

Adds a role assignment on a billing account. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.

```sql
INSERT INTO azure.billing.role_assignments (
data__principalPuid,
data__principalId,
data__principalTenantId,
data__roleDefinitionId,
data__scope,
data__userAuthenticationType,
data__userEmailAddress,
billingAccountName
)
SELECT 
'{{ principalPuid }}',
'{{ principalId }}',
'{{ principalTenantId }}',
'{{ roleDefinitionId }}' /* required */,
'{{ scope }}',
'{{ userAuthenticationType }}',
'{{ userEmailAddress }}',
'{{ billingAccountName }}'
RETURNING
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: role_assignments
  props:
    - name: billingAccountName
      value: string
      description: Required parameter for the role_assignments resource.
    - name: billingProfileName
      value: string
      description: Required parameter for the role_assignments resource.
    - name: customerName
      value: string
      description: Required parameter for the role_assignments resource.
    - name: principalPuid
      value: string
      description: |
        The principal PUID of the user to whom the role was assigned.
    - name: principalId
      value: string
      description: |
        The object id of the user to whom the role was assigned.
    - name: principalTenantId
      value: string
      description: |
        The principal tenant id of the user to whom the role was assigned.
    - name: roleDefinitionId
      value: string
      description: |
        The ID of the role definition.
    - name: scope
      value: string
      description: |
        The scope at which the role was assigned.
    - name: userAuthenticationType
      value: string
      description: |
        The authentication type of the user, whether Organization or MSA, of the user to whom the role was assigned. This is supported only for billing accounts with agreement type Enterprise Agreement.
    - name: userEmailAddress
      value: string
      description: |
        The email address of the user to whom the role was assigned. This is supported only for billing accounts with agreement type Enterprise Agreement.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_by_customer"
    values={[
        { label: 'delete_by_customer', value: 'delete_by_customer' },
        { label: 'delete_by_billing_profile', value: 'delete_by_billing_profile' },
        { label: 'delete_by_department', value: 'delete_by_department' },
        { label: 'delete_by_enrollment_account', value: 'delete_by_enrollment_account' },
        { label: 'delete_by_billing_account', value: 'delete_by_billing_account' }
    ]}
>
<TabItem value="delete_by_customer">

Deletes a role assignment on a customer. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement.

```sql
DELETE FROM azure.billing.role_assignments
WHERE billingAccountName = '{{ billingAccountName }}' --required
AND billingProfileName = '{{ billingProfileName }}' --required
AND customerName = '{{ customerName }}' --required
AND billingRoleAssignmentName = '{{ billingRoleAssignmentName }}' --required
;
```
</TabItem>
<TabItem value="delete_by_billing_profile">

Deletes a role assignment on a billing profile. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.

```sql
DELETE FROM azure.billing.role_assignments
WHERE billingAccountName = '{{ billingAccountName }}' --required
AND billingProfileName = '{{ billingProfileName }}' --required
AND billingRoleAssignmentName = '{{ billingRoleAssignmentName }}' --required
;
```
</TabItem>
<TabItem value="delete_by_department">

Deletes a role assignment on a department. The operation is supported only for billing accounts with agreement type Enterprise Agreement.

```sql
DELETE FROM azure.billing.role_assignments
WHERE billingAccountName = '{{ billingAccountName }}' --required
AND departmentName = '{{ departmentName }}' --required
AND billingRoleAssignmentName = '{{ billingRoleAssignmentName }}' --required
;
```
</TabItem>
<TabItem value="delete_by_enrollment_account">

Deletes a role assignment on a enrollment Account. The operation is supported only for billing accounts with agreement type Enterprise Agreement.

```sql
DELETE FROM azure.billing.role_assignments
WHERE billingAccountName = '{{ billingAccountName }}' --required
AND enrollmentAccountName = '{{ enrollmentAccountName }}' --required
AND billingRoleAssignmentName = '{{ billingRoleAssignmentName }}' --required
;
```
</TabItem>
<TabItem value="delete_by_billing_account">

Deletes a role assignment on a billing account. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement, Microsoft Customer Agreement or Enterprise Agreement.

```sql
DELETE FROM azure.billing.role_assignments
WHERE billingAccountName = '{{ billingAccountName }}' --required
AND billingRoleAssignmentName = '{{ billingRoleAssignmentName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="resolve_by_customer"
    values={[
        { label: 'resolve_by_customer', value: 'resolve_by_customer' },
        { label: 'resolve_by_invoice_section', value: 'resolve_by_invoice_section' },
        { label: 'resolve_by_billing_profile', value: 'resolve_by_billing_profile' },
        { label: 'resolve_by_billing_account', value: 'resolve_by_billing_account' }
    ]}
>
<TabItem value="resolve_by_customer">

Lists the role assignments for the caller on a customer while fetching user info for each role assignment. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement.

```sql
EXEC azure.billing.role_assignments.resolve_by_customer 
@billingAccountName='{{ billingAccountName }}' --required, 
@billingProfileName='{{ billingProfileName }}' --required, 
@customerName='{{ customerName }}' --required, 
@resolveScopeDisplayNames={{ resolveScopeDisplayNames }}, 
@filter='{{ filter }}'
;
```
</TabItem>
<TabItem value="resolve_by_invoice_section">

Lists the role assignments for the caller on an invoice section while fetching user info for each role assignment. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement.

```sql
EXEC azure.billing.role_assignments.resolve_by_invoice_section 
@billingAccountName='{{ billingAccountName }}' --required, 
@billingProfileName='{{ billingProfileName }}' --required, 
@invoiceSectionName='{{ invoiceSectionName }}' --required, 
@resolveScopeDisplayNames={{ resolveScopeDisplayNames }}, 
@filter='{{ filter }}'
;
```
</TabItem>
<TabItem value="resolve_by_billing_profile">

Lists the role assignments for the caller on an billing profile while fetching user info for each role assignment. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.

```sql
EXEC azure.billing.role_assignments.resolve_by_billing_profile 
@billingAccountName='{{ billingAccountName }}' --required, 
@billingProfileName='{{ billingProfileName }}' --required, 
@resolveScopeDisplayNames={{ resolveScopeDisplayNames }}, 
@filter='{{ filter }}'
;
```
</TabItem>
<TabItem value="resolve_by_billing_account">

Lists the role assignments for the caller on a billing account while fetching user info for each role assignment. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement, Microsoft Customer Agreement or Enterprise Agreement.

```sql
EXEC azure.billing.role_assignments.resolve_by_billing_account 
@billingAccountName='{{ billingAccountName }}' --required, 
@resolveScopeDisplayNames={{ resolveScopeDisplayNames }}, 
@filter='{{ filter }}'
;
```
</TabItem>
</Tabs>
