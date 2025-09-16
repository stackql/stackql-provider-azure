--- 
title: instances
hide_title: false
hide_table_of_contents: false
keywords:
  - instances
  - device_update
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

Creates, updates, deletes, gets or lists an <code>instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>instances</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.device_update.instances" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_account', value: 'list_by_account' }
    ]}
>
<TabItem value="get">

Instance details.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Device Update instance properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_account">

List of Instances.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Device Update instance properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-instanceName"><code>instanceName</code></a></td>
    <td></td>
    <td>Returns instance details for the given instance and account name.</td>
</tr>
<tr>
    <td><a href="#list_by_account"><CopyableCode code="list_by_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-accountName"><code>accountName</code></a></td>
    <td></td>
    <td>Returns instances for the given account name.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-instanceName"><code>instanceName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates or updates instance.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-instanceName"><code>instanceName</code></a></td>
    <td></td>
    <td>Updates instance's tags.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-instanceName"><code>instanceName</code></a></td>
    <td></td>
    <td>Deletes instance.</td>
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
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>Account name.</td>
</tr>
<tr id="parameter-instanceName">
    <td><CopyableCode code="instanceName" /></td>
    <td><code>string</code></td>
    <td>Instance name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_account', value: 'list_by_account' }
    ]}
>
<TabItem value="get">

Returns instance details for the given instance and account name.

```sql
SELECT
location,
properties,
tags
FROM azure.device_update.instances
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND accountName = '{{ accountName }}' -- required
AND instanceName = '{{ instanceName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_account">

Returns instances for the given account name.

```sql
SELECT
location,
properties,
tags
FROM azure.device_update.instances
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND accountName = '{{ accountName }}' -- required
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

Creates or updates instance.

```sql
INSERT INTO azure.device_update.instances (
data__tags,
data__location,
data__properties,
resourceGroupName,
subscriptionId,
accountName,
instanceName
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ properties }}' /* required */,
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ accountName }}',
'{{ instanceName }}'
RETURNING
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: instances
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the instances resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the instances resource.
    - name: accountName
      value: string
      description: Required parameter for the instances resource.
    - name: instanceName
      value: string
      description: Required parameter for the instances resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
    - name: properties
      value: object
      description: |
        Device Update instance properties.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Updates instance's tags.

```sql
UPDATE azure.device_update.instances
SET 
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND accountName = '{{ accountName }}' --required
AND instanceName = '{{ instanceName }}' --required
RETURNING
location,
properties,
tags;
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

Deletes instance.

```sql
DELETE FROM azure.device_update.instances
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND accountName = '{{ accountName }}' --required
AND instanceName = '{{ instanceName }}' --required
;
```
</TabItem>
</Tabs>
