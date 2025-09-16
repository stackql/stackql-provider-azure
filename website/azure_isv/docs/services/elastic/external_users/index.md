--- 
title: external_users
hide_title: false
hide_table_of_contents: false
keywords:
  - external_users
  - elastic
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>external_users</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>external_users</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.elastic.external_users" /></td></tr>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-monitorName"><code>monitorName</code></a></td>
    <td></td>
    <td></td>
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
<tr id="parameter-monitorName">
    <td><CopyableCode code="monitorName" /></td>
    <td><code>string</code></td>
    <td>Monitor resource name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
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

No description available.

```sql
INSERT INTO azure_isv.elastic.external_users (
data__userName,
data__fullName,
data__password,
data__emailId,
data__roles,
subscriptionId,
resourceGroupName,
monitorName
)
SELECT 
'{{ userName }}',
'{{ fullName }}',
'{{ password }}',
'{{ emailId }}',
'{{ roles }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ monitorName }}'
RETURNING
created
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: external_users
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the external_users resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the external_users resource.
    - name: monitorName
      value: string
      description: Required parameter for the external_users resource.
    - name: userName
      value: string
      description: |
        Username of the user to be created or updated
    - name: fullName
      value: string
      description: |
        Full name of the user to be created or updated
    - name: password
      value: string
      description: |
        Password of the user to be created or updated
    - name: emailId
      value: string
      description: |
        Email id of the user to be created or updated
    - name: roles
      value: array
      description: |
        Roles to be assigned for  created or updated user
```
</TabItem>
</Tabs>
