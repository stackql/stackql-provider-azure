--- 
title: role_assignments_by_invoice_sections
hide_title: false
hide_table_of_contents: false
keywords:
  - role_assignments_by_invoice_sections
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

Creates, updates, deletes, gets or lists a <code>role_assignments_by_invoice_sections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>role_assignments_by_invoice_sections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.role_assignments_by_invoice_sections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

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
<TabItem value="list">

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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-invoiceSectionName"><code>invoiceSectionName</code></a>, <a href="#parameter-billingRoleAssignmentName"><code>billingRoleAssignmentName</code></a></td>
    <td></td>
    <td>Gets a role assignment for the caller on an invoice section. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-invoiceSectionName"><code>invoiceSectionName</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a></td>
    <td>Lists the role assignments for the caller on an invoice section. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-invoiceSectionName"><code>invoiceSectionName</code></a>, <a href="#parameter-data__roleDefinitionId"><code>data__roleDefinitionId</code></a></td>
    <td></td>
    <td>Adds a role assignment on an invoice section. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-invoiceSectionName"><code>invoiceSectionName</code></a>, <a href="#parameter-billingRoleAssignmentName"><code>billingRoleAssignmentName</code></a></td>
    <td></td>
    <td>Deletes a role assignment on an invoice section. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement.</td>
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
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets a role assignment for the caller on an invoice section. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_assignments_by_invoice_sections
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND invoiceSectionName = '{{ invoiceSectionName }}' -- required
AND billingRoleAssignmentName = '{{ billingRoleAssignmentName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists the role assignments for the caller on an invoice section. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.role_assignments_by_invoice_sections
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND invoiceSectionName = '{{ invoiceSectionName }}' -- required
AND filter = '{{ filter }}'
AND top = '{{ top }}'
AND skip = '{{ skip }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Adds a role assignment on an invoice section. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement.

```sql
INSERT INTO azure.billing.role_assignments_by_invoice_sections (
data__principalPuid,
data__principalId,
data__principalTenantId,
data__roleDefinitionId,
data__scope,
data__userAuthenticationType,
data__userEmailAddress,
billingAccountName,
billingProfileName,
invoiceSectionName
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
'{{ invoiceSectionName }}'
RETURNING
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: role_assignments_by_invoice_sections
  props:
    - name: billingAccountName
      value: string
      description: Required parameter for the role_assignments_by_invoice_sections resource.
    - name: billingProfileName
      value: string
      description: Required parameter for the role_assignments_by_invoice_sections resource.
    - name: invoiceSectionName
      value: string
      description: Required parameter for the role_assignments_by_invoice_sections resource.
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
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Deletes a role assignment on an invoice section. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement.

```sql
DELETE FROM azure.billing.role_assignments_by_invoice_sections
WHERE billingAccountName = '{{ billingAccountName }}' --required
AND billingProfileName = '{{ billingProfileName }}' --required
AND invoiceSectionName = '{{ invoiceSectionName }}' --required
AND billingRoleAssignmentName = '{{ billingRoleAssignmentName }}' --required
;
```
</TabItem>
</Tabs>
