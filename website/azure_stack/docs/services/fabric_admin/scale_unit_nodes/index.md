--- 
title: scale_unit_nodes
hide_title: false
hide_table_of_contents: false
keywords:
  - scale_unit_nodes
  - fabric_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>scale_unit_nodes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>scale_unit_nodes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.fabric_admin.scale_unit_nodes" /></td></tr>
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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Holds all properties related to a scale unit node.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Holds all properties related to a scale unit node.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-scaleUnitNode"><code>scaleUnitNode</code></a></td>
    <td></td>
    <td>Return the requested scale unit node.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Returns a list of all scale unit nodes in a location.</td>
</tr>
<tr>
    <td><a href="#shutdown"><CopyableCode code="shutdown" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-scaleUnitNode"><code>scaleUnitNode</code></a></td>
    <td></td>
    <td>Shutdown a scale unit node.</td>
</tr>
<tr>
    <td><a href="#power_off"><CopyableCode code="power_off" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-scaleUnitNode"><code>scaleUnitNode</code></a></td>
    <td></td>
    <td>Power off a scale unit node.</td>
</tr>
<tr>
    <td><a href="#power_on"><CopyableCode code="power_on" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-scaleUnitNode"><code>scaleUnitNode</code></a></td>
    <td></td>
    <td>Power on a scale unit node.</td>
</tr>
<tr>
    <td><a href="#start_maintenance_mode"><CopyableCode code="start_maintenance_mode" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-scaleUnitNode"><code>scaleUnitNode</code></a></td>
    <td></td>
    <td>Start maintenance mode for a scale unit node.</td>
</tr>
<tr>
    <td><a href="#stop_maintenance_mode"><CopyableCode code="stop_maintenance_mode" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-scaleUnitNode"><code>scaleUnitNode</code></a></td>
    <td></td>
    <td>Stop maintenance mode for a scale unit node.</td>
</tr>
<tr>
    <td><a href="#repair"><CopyableCode code="repair" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-scaleUnitNode"><code>scaleUnitNode</code></a></td>
    <td></td>
    <td>Repairs a node of the cluster.</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The name of Azure region.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group.</td>
</tr>
<tr id="parameter-scaleUnitNode">
    <td><CopyableCode code="scaleUnitNode" /></td>
    <td><code>string</code></td>
    <td>Name of the scale unit node.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>OData filter parameter.</td>
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

Return the requested scale unit node.

```sql
SELECT
id,
name,
properties,
type
FROM azure_stack.fabric_admin.scale_unit_nodes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND location = '{{ location }}' -- required
AND scaleUnitNode = '{{ scaleUnitNode }}' -- required
;
```
</TabItem>
<TabItem value="list">

Returns a list of all scale unit nodes in a location.

```sql
SELECT
id,
name,
properties,
type
FROM azure_stack.fabric_admin.scale_unit_nodes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND location = '{{ location }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="shutdown"
    values={[
        { label: 'shutdown', value: 'shutdown' },
        { label: 'power_off', value: 'power_off' },
        { label: 'power_on', value: 'power_on' },
        { label: 'start_maintenance_mode', value: 'start_maintenance_mode' },
        { label: 'stop_maintenance_mode', value: 'stop_maintenance_mode' },
        { label: 'repair', value: 'repair' }
    ]}
>
<TabItem value="shutdown">

Shutdown a scale unit node.

```sql
EXEC azure_stack.fabric_admin.scale_unit_nodes.shutdown 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@location='{{ location }}' --required, 
@scaleUnitNode='{{ scaleUnitNode }}' --required
;
```
</TabItem>
<TabItem value="power_off">

Power off a scale unit node.

```sql
EXEC azure_stack.fabric_admin.scale_unit_nodes.power_off 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@location='{{ location }}' --required, 
@scaleUnitNode='{{ scaleUnitNode }}' --required
;
```
</TabItem>
<TabItem value="power_on">

Power on a scale unit node.

```sql
EXEC azure_stack.fabric_admin.scale_unit_nodes.power_on 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@location='{{ location }}' --required, 
@scaleUnitNode='{{ scaleUnitNode }}' --required
;
```
</TabItem>
<TabItem value="start_maintenance_mode">

Start maintenance mode for a scale unit node.

```sql
EXEC azure_stack.fabric_admin.scale_unit_nodes.start_maintenance_mode 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@location='{{ location }}' --required, 
@scaleUnitNode='{{ scaleUnitNode }}' --required
;
```
</TabItem>
<TabItem value="stop_maintenance_mode">

Stop maintenance mode for a scale unit node.

```sql
EXEC azure_stack.fabric_admin.scale_unit_nodes.stop_maintenance_mode 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@location='{{ location }}' --required, 
@scaleUnitNode='{{ scaleUnitNode }}' --required
;
```
</TabItem>
<TabItem value="repair">

Repairs a node of the cluster.

```sql
EXEC azure_stack.fabric_admin.scale_unit_nodes.repair 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@location='{{ location }}' --required, 
@scaleUnitNode='{{ scaleUnitNode }}' --required 
@@json=
'{
"bmcIpv4Address": "{{ bmcIpv4Address }}", 
"vendor": "{{ vendor }}", 
"model": "{{ model }}", 
"serialNumber": "{{ serialNumber }}", 
"biosVersion": "{{ biosVersion }}", 
"computerName": "{{ computerName }}", 
"clusterName": "{{ clusterName }}", 
"macAddress": "{{ macAddress }}"
}'
;
```
</TabItem>
</Tabs>
