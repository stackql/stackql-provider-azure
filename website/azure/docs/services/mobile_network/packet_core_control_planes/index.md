--- 
title: packet_core_control_planes
hide_title: false
hide_table_of_contents: false
keywords:
  - packet_core_control_planes
  - mobile_network
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

Creates, updates, deletes, gets or lists a <code>packet_core_control_planes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>packet_core_control_planes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mobile_network.packet_core_control_planes" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Request successful. The operation returns the resulting packet core control plane resource.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity used to retrieve the ingress certificate from Azure key vault.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Packet core control plane Properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

Request successful. The operation returns a list of packet core control plane resources.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity used to retrieve the ingress certificate from Azure key vault.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Packet core control plane Properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

Request successful. The operation returns a list of packet core control plane resources.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity used to retrieve the ingress certificate from Azure key vault.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Packet core control plane Properties.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-packetCoreControlPlaneName"><code>packetCoreControlPlaneName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets information about the specified packet core control plane.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all the packet core control planes in a resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all the packet core control planes in a subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-packetCoreControlPlaneName"><code>packetCoreControlPlaneName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates or updates a packet core control plane.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-packetCoreControlPlaneName"><code>packetCoreControlPlaneName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified packet core control plane.</td>
</tr>
<tr>
    <td><a href="#update_tags"><CopyableCode code="update_tags" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-packetCoreControlPlaneName"><code>packetCoreControlPlaneName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Patch packet core control plane resource.</td>
</tr>
<tr>
    <td><a href="#rollback"><CopyableCode code="rollback" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-packetCoreControlPlaneName"><code>packetCoreControlPlaneName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Roll back the specified packet core control plane to the previous version, "rollbackVersion". Multiple consecutive rollbacks are not possible. This action may cause a service outage.</td>
</tr>
<tr>
    <td><a href="#reinstall"><CopyableCode code="reinstall" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-packetCoreControlPlaneName"><code>packetCoreControlPlaneName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Reinstall the specified packet core control plane. This action will try to restore the packet core to the installed state that was disrupted by a transient failure. This action will cause a service outage.</td>
</tr>
<tr>
    <td><a href="#collect_diagnostics_package"><CopyableCode code="collect_diagnostics_package" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-packetCoreControlPlaneName"><code>packetCoreControlPlaneName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-storageAccountBlobUrl"><code>storageAccountBlobUrl</code></a></td>
    <td></td>
    <td>Collect a diagnostics package for the specified packet core control plane. This action will upload the diagnostics to a storage account.</td>
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
<tr id="parameter-packetCoreControlPlaneName">
    <td><CopyableCode code="packetCoreControlPlaneName" /></td>
    <td><code>string</code></td>
    <td>The name of the packet core control plane.</td>
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

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Gets information about the specified packet core control plane.

```sql
SELECT
identity,
location,
properties,
tags
FROM azure.mobile_network.packet_core_control_planes
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND packetCoreControlPlaneName = '{{ packetCoreControlPlaneName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Lists all the packet core control planes in a resource group.

```sql
SELECT
identity,
location,
properties,
tags
FROM azure.mobile_network.packet_core_control_planes
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

Lists all the packet core control planes in a subscription.

```sql
SELECT
identity,
location,
properties,
tags
FROM azure.mobile_network.packet_core_control_planes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Creates or updates a packet core control plane.

```sql
INSERT INTO azure.mobile_network.packet_core_control_planes (
data__properties,
data__identity,
data__tags,
data__location,
resourceGroupName,
packetCoreControlPlaneName,
subscriptionId
)
SELECT 
'{{ properties }}' /* required */,
'{{ identity }}',
'{{ tags }}',
'{{ location }}',
'{{ resourceGroupName }}',
'{{ packetCoreControlPlaneName }}',
'{{ subscriptionId }}'
RETURNING
identity,
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: packet_core_control_planes
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the packet_core_control_planes resource.
    - name: packetCoreControlPlaneName
      value: string
      description: Required parameter for the packet_core_control_planes resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the packet_core_control_planes resource.
    - name: properties
      value: object
      description: |
        Packet core control plane Properties.
    - name: identity
      value: object
      description: |
        The identity used to retrieve the ingress certificate from Azure key vault.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
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

Deletes the specified packet core control plane.

```sql
DELETE FROM azure.mobile_network.packet_core_control_planes
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND packetCoreControlPlaneName = '{{ packetCoreControlPlaneName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_tags"
    values={[
        { label: 'update_tags', value: 'update_tags' },
        { label: 'rollback', value: 'rollback' },
        { label: 'reinstall', value: 'reinstall' },
        { label: 'collect_diagnostics_package', value: 'collect_diagnostics_package' }
    ]}
>
<TabItem value="update_tags">

Patch packet core control plane resource.

```sql
EXEC azure.mobile_network.packet_core_control_planes.update_tags 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@packetCoreControlPlaneName='{{ packetCoreControlPlaneName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"identity": "{{ identity }}", 
"tags": "{{ tags }}"
}'
;
```
</TabItem>
<TabItem value="rollback">

Roll back the specified packet core control plane to the previous version, "rollbackVersion". Multiple consecutive rollbacks are not possible. This action may cause a service outage.

```sql
EXEC azure.mobile_network.packet_core_control_planes.rollback 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@packetCoreControlPlaneName='{{ packetCoreControlPlaneName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="reinstall">

Reinstall the specified packet core control plane. This action will try to restore the packet core to the installed state that was disrupted by a transient failure. This action will cause a service outage.

```sql
EXEC azure.mobile_network.packet_core_control_planes.reinstall 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@packetCoreControlPlaneName='{{ packetCoreControlPlaneName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="collect_diagnostics_package">

Collect a diagnostics package for the specified packet core control plane. This action will upload the diagnostics to a storage account.

```sql
EXEC azure.mobile_network.packet_core_control_planes.collect_diagnostics_package 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@packetCoreControlPlaneName='{{ packetCoreControlPlaneName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"storageAccountBlobUrl": "{{ storageAccountBlobUrl }}"
}'
;
```
</TabItem>
</Tabs>
