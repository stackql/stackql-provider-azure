--- 
title: permissions
hide_title: false
hide_table_of_contents: false
keywords:
  - permissions
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

Creates, updates, deletes, gets or lists a <code>permissions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>permissions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.permissions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_customer"
    values={[
        { label: 'list_by_customer', value: 'list_by_customer' },
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'list_by_customer_at_billing_account', value: 'list_by_customer_at_billing_account' },
        { label: 'list_by_department', value: 'list_by_department' },
        { label: 'list_by_enrollment_account', value: 'list_by_enrollment_account' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' }
    ]}
>
<TabItem value="list_by_customer">

The list of billingPermissions a caller has on a customer.

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
    <td><CopyableCode code="actions" /></td>
    <td><code>array</code></td>
    <td>The set of actions that the caller is allowed to perform.</td>
</tr>
<tr>
    <td><CopyableCode code="notActions" /></td>
    <td><code>array</code></td>
    <td>The set of actions that the caller is not allowed to perform.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_billing_profile">

The list of billingPermissions a caller has on a billing profile.

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
    <td><CopyableCode code="actions" /></td>
    <td><code>array</code></td>
    <td>The set of actions that the caller is allowed to perform.</td>
</tr>
<tr>
    <td><CopyableCode code="notActions" /></td>
    <td><code>array</code></td>
    <td>The set of actions that the caller is not allowed to perform.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_customer_at_billing_account">

The list of billingPermissions a caller has on a customer.

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
    <td><CopyableCode code="actions" /></td>
    <td><code>array</code></td>
    <td>The set of actions that the caller is allowed to perform.</td>
</tr>
<tr>
    <td><CopyableCode code="notActions" /></td>
    <td><code>array</code></td>
    <td>The set of actions that the caller is not allowed to perform.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_department">

The list of billingPermissions a caller has on a department.

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
    <td><CopyableCode code="actions" /></td>
    <td><code>array</code></td>
    <td>The set of actions that the caller is allowed to perform.</td>
</tr>
<tr>
    <td><CopyableCode code="notActions" /></td>
    <td><code>array</code></td>
    <td>The set of actions that the caller is not allowed to perform.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_enrollment_account">

The list of billingPermissions a caller has on an enrollment account.

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
    <td><CopyableCode code="actions" /></td>
    <td><code>array</code></td>
    <td>The set of actions that the caller is allowed to perform.</td>
</tr>
<tr>
    <td><CopyableCode code="notActions" /></td>
    <td><code>array</code></td>
    <td>The set of actions that the caller is not allowed to perform.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_billing_account">

The list of billingPermissions a caller has on a billing account.

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
    <td><CopyableCode code="actions" /></td>
    <td><code>array</code></td>
    <td>The set of actions that the caller is allowed to perform.</td>
</tr>
<tr>
    <td><CopyableCode code="notActions" /></td>
    <td><code>array</code></td>
    <td>The set of actions that the caller is not allowed to perform.</td>
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
    <td><a href="#list_by_customer"><CopyableCode code="list_by_customer" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-customerName"><code>customerName</code></a></td>
    <td></td>
    <td>Lists the billing permissions the caller has for a customer.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_profile"><CopyableCode code="list_by_billing_profile" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a></td>
    <td></td>
    <td>Lists the billing permissions the caller has on a billing profile.</td>
</tr>
<tr>
    <td><a href="#list_by_customer_at_billing_account"><CopyableCode code="list_by_customer_at_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-customerName"><code>customerName</code></a></td>
    <td></td>
    <td>Lists the billing permissions the caller has for a customer at billing account level.</td>
</tr>
<tr>
    <td><a href="#list_by_department"><CopyableCode code="list_by_department" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-departmentName"><code>departmentName</code></a></td>
    <td></td>
    <td>Lists the billing permissions the caller has for a department.</td>
</tr>
<tr>
    <td><a href="#list_by_enrollment_account"><CopyableCode code="list_by_enrollment_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-enrollmentAccountName"><code>enrollmentAccountName</code></a></td>
    <td></td>
    <td>Lists the billing permissions the caller has for an enrollment account.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_account"><CopyableCode code="list_by_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td></td>
    <td>Lists the billing permissions the caller has on a billing account.</td>
</tr>
<tr>
    <td><a href="#check_access_by_billing_profile"><CopyableCode code="check_access_by_billing_profile" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a></td>
    <td></td>
    <td>Provides a list of check access response objects for a billing profile.</td>
</tr>
<tr>
    <td><a href="#check_access_by_customer"><CopyableCode code="check_access_by_customer" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-customerName"><code>customerName</code></a></td>
    <td></td>
    <td>Provides a list of check access response objects for a customer.</td>
</tr>
<tr>
    <td><a href="#check_access_by_invoice_section"><CopyableCode code="check_access_by_invoice_section" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-invoiceSectionName"><code>invoiceSectionName</code></a></td>
    <td></td>
    <td>Provides a list of check access response objects for an invoice section.</td>
</tr>
<tr>
    <td><a href="#check_access_by_billing_account"><CopyableCode code="check_access_by_billing_account" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td></td>
    <td>Provides a list of check access response objects for a billing account.</td>
</tr>
<tr>
    <td><a href="#check_access_by_department"><CopyableCode code="check_access_by_department" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-departmentName"><code>departmentName</code></a></td>
    <td></td>
    <td>Provides a list of check access response objects for a department.</td>
</tr>
<tr>
    <td><a href="#check_access_by_enrollment_account"><CopyableCode code="check_access_by_enrollment_account" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-enrollmentAccountName"><code>enrollmentAccountName</code></a></td>
    <td></td>
    <td>Provides a list of check access response objects for an enrollment account.</td>
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
<tr id="parameter-invoiceSectionName">
    <td><CopyableCode code="invoiceSectionName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies an invoice section.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_customer"
    values={[
        { label: 'list_by_customer', value: 'list_by_customer' },
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'list_by_customer_at_billing_account', value: 'list_by_customer_at_billing_account' },
        { label: 'list_by_department', value: 'list_by_department' },
        { label: 'list_by_enrollment_account', value: 'list_by_enrollment_account' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' }
    ]}
>
<TabItem value="list_by_customer">

Lists the billing permissions the caller has for a customer.

```sql
SELECT
actions,
notActions
FROM azure.billing.permissions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND customerName = '{{ customerName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_billing_profile">

Lists the billing permissions the caller has on a billing profile.

```sql
SELECT
actions,
notActions
FROM azure.billing.permissions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_customer_at_billing_account">

Lists the billing permissions the caller has for a customer at billing account level.

```sql
SELECT
actions,
notActions
FROM azure.billing.permissions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND customerName = '{{ customerName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_department">

Lists the billing permissions the caller has for a department.

```sql
SELECT
actions,
notActions
FROM azure.billing.permissions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND departmentName = '{{ departmentName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_enrollment_account">

Lists the billing permissions the caller has for an enrollment account.

```sql
SELECT
actions,
notActions
FROM azure.billing.permissions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND enrollmentAccountName = '{{ enrollmentAccountName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_billing_account">

Lists the billing permissions the caller has on a billing account.

```sql
SELECT
actions,
notActions
FROM azure.billing.permissions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="check_access_by_billing_profile"
    values={[
        { label: 'check_access_by_billing_profile', value: 'check_access_by_billing_profile' },
        { label: 'check_access_by_customer', value: 'check_access_by_customer' },
        { label: 'check_access_by_invoice_section', value: 'check_access_by_invoice_section' },
        { label: 'check_access_by_billing_account', value: 'check_access_by_billing_account' },
        { label: 'check_access_by_department', value: 'check_access_by_department' },
        { label: 'check_access_by_enrollment_account', value: 'check_access_by_enrollment_account' }
    ]}
>
<TabItem value="check_access_by_billing_profile">

Provides a list of check access response objects for a billing profile.

```sql
EXEC azure.billing.permissions.check_access_by_billing_profile 
@billingAccountName='{{ billingAccountName }}' --required, 
@billingProfileName='{{ billingProfileName }}' --required 
@@json=
'{
"actions": "{{ actions }}"
}'
;
```
</TabItem>
<TabItem value="check_access_by_customer">

Provides a list of check access response objects for a customer.

```sql
EXEC azure.billing.permissions.check_access_by_customer 
@billingAccountName='{{ billingAccountName }}' --required, 
@billingProfileName='{{ billingProfileName }}' --required, 
@customerName='{{ customerName }}' --required 
@@json=
'{
"actions": "{{ actions }}"
}'
;
```
</TabItem>
<TabItem value="check_access_by_invoice_section">

Provides a list of check access response objects for an invoice section.

```sql
EXEC azure.billing.permissions.check_access_by_invoice_section 
@billingAccountName='{{ billingAccountName }}' --required, 
@billingProfileName='{{ billingProfileName }}' --required, 
@invoiceSectionName='{{ invoiceSectionName }}' --required 
@@json=
'{
"actions": "{{ actions }}"
}'
;
```
</TabItem>
<TabItem value="check_access_by_billing_account">

Provides a list of check access response objects for a billing account.

```sql
EXEC azure.billing.permissions.check_access_by_billing_account 
@billingAccountName='{{ billingAccountName }}' --required 
@@json=
'{
"actions": "{{ actions }}"
}'
;
```
</TabItem>
<TabItem value="check_access_by_department">

Provides a list of check access response objects for a department.

```sql
EXEC azure.billing.permissions.check_access_by_department 
@billingAccountName='{{ billingAccountName }}' --required, 
@departmentName='{{ departmentName }}' --required 
@@json=
'{
"actions": "{{ actions }}"
}'
;
```
</TabItem>
<TabItem value="check_access_by_enrollment_account">

Provides a list of check access response objects for an enrollment account.

```sql
EXEC azure.billing.permissions.check_access_by_enrollment_account 
@billingAccountName='{{ billingAccountName }}' --required, 
@enrollmentAccountName='{{ enrollmentAccountName }}' --required 
@@json=
'{
"actions": "{{ actions }}"
}'
;
```
</TabItem>
</Tabs>
