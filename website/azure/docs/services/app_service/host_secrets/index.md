--- 
title: host_secrets
hide_title: false
hide_table_of_contents: false
keywords:
  - host_secrets
  - app_service
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

Creates, updates, deletes, gets or lists a <code>host_secrets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>host_secrets</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.host_secrets" /></td></tr>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-keyType"><code>keyType</code></a>, <a href="#parameter-keyName"><code>keyName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Add or update a host level secret.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-keyType"><code>keyType</code></a>, <a href="#parameter-keyName"><code>keyName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Delete a host level secret.</td>
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
<tr id="parameter-keyName">
    <td><CopyableCode code="keyName" /></td>
    <td><code>string</code></td>
    <td>The name of the key.</td>
</tr>
<tr id="parameter-keyType">
    <td><CopyableCode code="keyType" /></td>
    <td><code>string</code></td>
    <td>The type of host key.</td>
</tr>
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Site name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group to which the resource belongs.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).</td>
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

Description for Add or update a host level secret.

```sql
INSERT INTO azure.app_service.host_secrets (
data__name,
data__value,
resourceGroupName,
name,
keyType,
keyName,
subscriptionId
)
SELECT 
'{{ name }}',
'{{ value }}',
'{{ resourceGroupName }}',
'{{ name }}',
'{{ keyType }}',
'{{ keyName }}',
'{{ subscriptionId }}'
RETURNING
name,
value
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: host_secrets
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the host_secrets resource.
    - name: name
      value: string
      description: Required parameter for the host_secrets resource.
    - name: keyType
      value: string
      description: Required parameter for the host_secrets resource.
    - name: keyName
      value: string
      description: Required parameter for the host_secrets resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the host_secrets resource.
    - name: name
      value: string
      description: |
        Key name
    - name: value
      value: string
      description: |
        Key value
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

Description for Delete a host level secret.

```sql
DELETE FROM azure.app_service.host_secrets
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND name = '{{ name }}' --required
AND keyType = '{{ keyType }}' --required
AND keyName = '{{ keyName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
