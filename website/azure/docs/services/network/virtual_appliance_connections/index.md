--- 
title: virtual_appliance_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_appliance_connections
  - network
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

Creates, updates, deletes, gets or lists a <code>virtual_appliance_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_appliance_connections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.virtual_appliance_connections" /></td></tr>
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

Request successful. Returns the details of the NVA connection

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the express route connection.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Request successful. Lists all the NVA connections under an NVA.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the express route connection.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkVirtualApplianceName"><code>networkVirtualApplianceName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a></td>
    <td></td>
    <td>Retrieves the details of specified NVA connection.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkVirtualApplianceName"><code>networkVirtualApplianceName</code></a></td>
    <td></td>
    <td>Lists NetworkVirtualApplianceConnections under the NVA.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkVirtualApplianceName"><code>networkVirtualApplianceName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a></td>
    <td></td>
    <td>Creates a connection to Network Virtual Appliance, if it doesn't exist else updates the existing NVA connection'</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkVirtualApplianceName"><code>networkVirtualApplianceName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a></td>
    <td></td>
    <td>Deletes a NVA connection.</td>
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
<tr id="parameter-connectionName">
    <td><CopyableCode code="connectionName" /></td>
    <td><code>string</code></td>
    <td>The name of the NVA connection.</td>
</tr>
<tr id="parameter-networkVirtualApplianceName">
    <td><CopyableCode code="networkVirtualApplianceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Network Virtual Appliance.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
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

Retrieves the details of specified NVA connection.

```sql
SELECT
id,
name,
properties
FROM azure.network.virtual_appliance_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND networkVirtualApplianceName = '{{ networkVirtualApplianceName }}' -- required
AND connectionName = '{{ connectionName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists NetworkVirtualApplianceConnections under the NVA.

```sql
SELECT
id,
name,
properties
FROM azure.network.virtual_appliance_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND networkVirtualApplianceName = '{{ networkVirtualApplianceName }}' -- required
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

Creates a connection to Network Virtual Appliance, if it doesn't exist else updates the existing NVA connection'

```sql
INSERT INTO azure.network.virtual_appliance_connections (
data__properties,
data__name,
data__id,
subscriptionId,
resourceGroupName,
networkVirtualApplianceName,
connectionName
)
SELECT 
'{{ properties }}',
'{{ name }}',
'{{ id }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ networkVirtualApplianceName }}',
'{{ connectionName }}'
RETURNING
id,
name,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: virtual_appliance_connections
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the virtual_appliance_connections resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the virtual_appliance_connections resource.
    - name: networkVirtualApplianceName
      value: string
      description: Required parameter for the virtual_appliance_connections resource.
    - name: connectionName
      value: string
      description: Required parameter for the virtual_appliance_connections resource.
    - name: properties
      value: object
      description: |
        Properties of the express route connection.
    - name: name
      value: string
      description: |
        The name of the resource.
    - name: id
      value: string
      description: |
        Resource ID.
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

Deletes a NVA connection.

```sql
DELETE FROM azure.network.virtual_appliance_connections
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND networkVirtualApplianceName = '{{ networkVirtualApplianceName }}' --required
AND connectionName = '{{ connectionName }}' --required
;
```
</TabItem>
</Tabs>
