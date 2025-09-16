--- 
title: maintenance_windows
hide_title: false
hide_table_of_contents: false
keywords:
  - maintenance_windows
  - sql
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

Creates, updates, deletes, gets or lists a <code>maintenance_windows</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>maintenance_windows</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.maintenance_windows" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Successfully retrieved maintenance windows settings.

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
    <td>Resource properties.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-maintenanceWindowName"><code>maintenanceWindowName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets maintenance windows settings for a database.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-maintenanceWindowName"><code>maintenanceWindowName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Sets maintenance windows settings for a database.</td>
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
<tr id="parameter-databaseName">
    <td><CopyableCode code="databaseName" /></td>
    <td><code>string</code></td>
    <td>The name of the database to set maintenance windows for.</td>
</tr>
<tr id="parameter-maintenanceWindowName">
    <td><CopyableCode code="maintenanceWindowName" /></td>
    <td><code>string</code></td>
    <td>Maintenance window name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-serverName">
    <td><CopyableCode code="serverName" /></td>
    <td><code>string</code></td>
    <td>The name of the server.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID that identifies an Azure subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Gets maintenance windows settings for a database.

```sql
SELECT
properties
FROM azure.sql.maintenance_windows
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
AND maintenanceWindowName = '{{ maintenanceWindowName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Sets maintenance windows settings for a database.

```sql
INSERT INTO azure.sql.maintenance_windows (
data__properties,
resourceGroupName,
serverName,
databaseName,
maintenanceWindowName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ serverName }}',
'{{ databaseName }}',
'{{ maintenanceWindowName }}',
'{{ subscriptionId }}'
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: maintenance_windows
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the maintenance_windows resource.
    - name: serverName
      value: string
      description: Required parameter for the maintenance_windows resource.
    - name: databaseName
      value: string
      description: Required parameter for the maintenance_windows resource.
    - name: maintenanceWindowName
      value: string
      description: Required parameter for the maintenance_windows resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the maintenance_windows resource.
    - name: properties
      value: object
      description: |
        Resource properties.
```
</TabItem>
</Tabs>
