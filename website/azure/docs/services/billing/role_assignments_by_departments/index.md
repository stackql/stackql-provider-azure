--- 
title: role_assignments_by_departments
hide_title: false
hide_table_of_contents: false
keywords:
  - role_assignments_by_departments
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

Creates, updates, deletes, gets or lists a <code>role_assignments_by_departments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>role_assignments_by_departments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.role_assignments_by_departments" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-departmentName"><code>departmentName</code></a>, <a href="#parameter-billingRoleAssignmentName"><code>billingRoleAssignmentName</code></a></td>
    <td></td>
    <td>Create or update a billing role assignment. The operation is supported only for billing accounts with agreement type Enterprise Agreement.</td>
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
<tr id="parameter-billingRoleAssignmentName">
    <td><CopyableCode code="billingRoleAssignmentName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a role assignment.</td>
</tr>
<tr id="parameter-departmentName">
    <td><CopyableCode code="departmentName" /></td>
    <td><code>string</code></td>
    <td>The name of the department.</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Create or update a billing role assignment. The operation is supported only for billing accounts with agreement type Enterprise Agreement.

```sql
INSERT INTO azure.billing.role_assignments_by_departments (
data__tags,
data__properties,
billingAccountName,
departmentName,
billingRoleAssignmentName
)
SELECT 
'{{ tags }}',
'{{ properties }}',
'{{ billingAccountName }}',
'{{ departmentName }}',
'{{ billingRoleAssignmentName }}'
RETURNING
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: role_assignments_by_departments
  props:
    - name: billingAccountName
      value: string
      description: Required parameter for the role_assignments_by_departments resource.
    - name: departmentName
      value: string
      description: Required parameter for the role_assignments_by_departments resource.
    - name: billingRoleAssignmentName
      value: string
      description: Required parameter for the role_assignments_by_departments resource.
    - name: tags
      value: object
      description: |
        Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
    - name: properties
      value: object
      description: |
        The properties of the billing role assignment.
```
</TabItem>
</Tabs>
