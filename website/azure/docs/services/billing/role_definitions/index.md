--- 
title: role_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - role_definitions
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

Creates, updates, deletes, gets or lists a <code>role_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>role_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.role_definitions" /></td></tr>
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

The properties of a role definition.

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
    <td>The properties of a role definition.</td>
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

The properties of a role definition.

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
    <td>The properties of a role definition.</td>
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

The list of role definitions.

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
    <td>The properties of a role definition.</td>
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

The properties of a role definition.

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
    <td>The properties of a role definition.</td>
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

The properties of a role definition.

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
    <td>The properties of a role definition.</td>
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

The list of role definitions.

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
    <td>The properties of a role definition.</td>
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

The properties of a role definition.

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
    <td>The properties of a role definition.</td>
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

The properties of a role definition.

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
    <td>The properties of a role definition.</td>
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

The list of role definitions.

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
    <td>The properties of a role definition.</td>
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

The list of role definitions.

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
    <td>The properties of a role definition.</td>
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
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-customerName"><code>customerName</code></a>, <a href="#parameter-roleDefinitionName"><code>roleDefinitionName</code></a></td>
    <td></td>
    <td>Gets the definition for a role on a customer. The operation is supported only for billing accounts with agreement type Microsoft Partner Agreement.</td>
</tr>
<tr>
    <td><a href="#get_by_billing_profile"><CopyableCode code="get_by_billing_profile" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-roleDefinitionName"><code>roleDefinitionName</code></a></td>
    <td></td>
    <td>Gets the definition for a role on a billing profile. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_customer"><CopyableCode code="list_by_customer" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-customerName"><code>customerName</code></a></td>
    <td></td>
    <td>Lists the role definitions for a customer. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement.</td>
</tr>
<tr>
    <td><a href="#get_by_department"><CopyableCode code="get_by_department" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-departmentName"><code>departmentName</code></a>, <a href="#parameter-roleDefinitionName"><code>roleDefinitionName</code></a></td>
    <td></td>
    <td>Gets the definition for a role on a department. The operation is supported for billing accounts with agreement type Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#get_by_enrollment_account"><CopyableCode code="get_by_enrollment_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-enrollmentAccountName"><code>enrollmentAccountName</code></a>, <a href="#parameter-roleDefinitionName"><code>roleDefinitionName</code></a></td>
    <td></td>
    <td>Gets the definition for a role on an enrollment account. The operation is supported for billing accounts with agreement type Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_profile"><CopyableCode code="list_by_billing_profile" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a></td>
    <td></td>
    <td>Lists the role definitions for a billing profile. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement, Microsoft Customer Agreement or Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#get_by_billing_account"><CopyableCode code="get_by_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-roleDefinitionName"><code>roleDefinitionName</code></a></td>
    <td></td>
    <td>Gets the definition for a role on a billing account. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement, Microsoft Customer Agreement or Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_department"><CopyableCode code="list_by_department" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-departmentName"><code>departmentName</code></a></td>
    <td></td>
    <td>List the definition for a department. The operation is supported for billing accounts with agreement type Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_enrollment_account"><CopyableCode code="list_by_enrollment_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-enrollmentAccountName"><code>enrollmentAccountName</code></a></td>
    <td></td>
    <td>List the definition for an enrollment account. The operation is supported for billing accounts with agreement type Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_account"><CopyableCode code="list_by_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td></td>
    <td>Lists the role definitions for a billing account. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement, Microsoft Customer Agreement or Enterprise Agreement.</td>
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
<tr id="parameter-roleDefinitionName">
    <td><CopyableCode code="roleDefinitionName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a role definition.</td>
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

Gets the definition for a role on a customer. The operation is supported only for billing accounts with agreement type Microsoft Partner Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_definitions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND customerName = '{{ customerName }}' -- required
AND roleDefinitionName = '{{ roleDefinitionName }}' -- required
;
```
</TabItem>
<TabItem value="get_by_billing_profile">

Gets the definition for a role on a billing profile. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_definitions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND roleDefinitionName = '{{ roleDefinitionName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_customer">

Lists the role definitions for a customer. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_definitions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND customerName = '{{ customerName }}' -- required
;
```
</TabItem>
<TabItem value="get_by_department">

Gets the definition for a role on a department. The operation is supported for billing accounts with agreement type Enterprise Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_definitions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND departmentName = '{{ departmentName }}' -- required
AND roleDefinitionName = '{{ roleDefinitionName }}' -- required
;
```
</TabItem>
<TabItem value="get_by_enrollment_account">

Gets the definition for a role on an enrollment account. The operation is supported for billing accounts with agreement type Enterprise Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_definitions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND enrollmentAccountName = '{{ enrollmentAccountName }}' -- required
AND roleDefinitionName = '{{ roleDefinitionName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_billing_profile">

Lists the role definitions for a billing profile. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement, Microsoft Customer Agreement or Enterprise Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_definitions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
;
```
</TabItem>
<TabItem value="get_by_billing_account">

Gets the definition for a role on a billing account. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement, Microsoft Customer Agreement or Enterprise Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_definitions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND roleDefinitionName = '{{ roleDefinitionName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_department">

List the definition for a department. The operation is supported for billing accounts with agreement type Enterprise Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_definitions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND departmentName = '{{ departmentName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_enrollment_account">

List the definition for an enrollment account. The operation is supported for billing accounts with agreement type Enterprise Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_definitions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND enrollmentAccountName = '{{ enrollmentAccountName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_billing_account">

Lists the role definitions for a billing account. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement, Microsoft Customer Agreement or Enterprise Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_definitions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
;
```
</TabItem>
</Tabs>
