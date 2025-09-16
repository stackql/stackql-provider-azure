--- 
title: diagnostics_packages
hide_title: false
hide_table_of_contents: false
keywords:
  - diagnostics_packages
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

Creates, updates, deletes, gets or lists a <code>diagnostics_packages</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>diagnostics_packages</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mobile_network.diagnostics_packages" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_packet_core_control_plane', value: 'list_by_packet_core_control_plane' }
    ]}
>
<TabItem value="get">

Request successful. The operation returns information about the diagnostics package.

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
    <td>Diagnostics package properties. A diagnostics package file derived from the name of this resource will be uploaded to the Storage Account Container URL in the packet core control plane properties</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_packet_core_control_plane">

Request successful. The operation returns a list of diagnostics packages.

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
    <td>Diagnostics package properties. A diagnostics package file derived from the name of this resource will be uploaded to the Storage Account Container URL in the packet core control plane properties</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-packetCoreControlPlaneName"><code>packetCoreControlPlaneName</code></a>, <a href="#parameter-diagnosticsPackageName"><code>diagnosticsPackageName</code></a></td>
    <td></td>
    <td>Gets information about the specified diagnostics package.</td>
</tr>
<tr>
    <td><a href="#list_by_packet_core_control_plane"><CopyableCode code="list_by_packet_core_control_plane" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-packetCoreControlPlaneName"><code>packetCoreControlPlaneName</code></a></td>
    <td></td>
    <td>Lists all the diagnostics packages under a packet core control plane.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-packetCoreControlPlaneName"><code>packetCoreControlPlaneName</code></a>, <a href="#parameter-diagnosticsPackageName"><code>diagnosticsPackageName</code></a></td>
    <td></td>
    <td>Creates or updates a diagnostics package.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-packetCoreControlPlaneName"><code>packetCoreControlPlaneName</code></a>, <a href="#parameter-diagnosticsPackageName"><code>diagnosticsPackageName</code></a></td>
    <td></td>
    <td>Deletes the specified diagnostics package.</td>
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
<tr id="parameter-diagnosticsPackageName">
    <td><CopyableCode code="diagnosticsPackageName" /></td>
    <td><code>string</code></td>
    <td>The name of the diagnostics package.</td>
</tr>
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
        { label: 'list_by_packet_core_control_plane', value: 'list_by_packet_core_control_plane' }
    ]}
>
<TabItem value="get">

Gets information about the specified diagnostics package.

```sql
SELECT
properties
FROM azure.mobile_network.diagnostics_packages
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND packetCoreControlPlaneName = '{{ packetCoreControlPlaneName }}' -- required
AND diagnosticsPackageName = '{{ diagnosticsPackageName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_packet_core_control_plane">

Lists all the diagnostics packages under a packet core control plane.

```sql
SELECT
properties
FROM azure.mobile_network.diagnostics_packages
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND packetCoreControlPlaneName = '{{ packetCoreControlPlaneName }}' -- required
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

Creates or updates a diagnostics package.

```sql
INSERT INTO azure.mobile_network.diagnostics_packages (
subscriptionId,
resourceGroupName,
packetCoreControlPlaneName,
diagnosticsPackageName
)
SELECT 
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ packetCoreControlPlaneName }}',
'{{ diagnosticsPackageName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: diagnostics_packages
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the diagnostics_packages resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the diagnostics_packages resource.
    - name: packetCoreControlPlaneName
      value: string
      description: Required parameter for the diagnostics_packages resource.
    - name: diagnosticsPackageName
      value: string
      description: Required parameter for the diagnostics_packages resource.
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

Deletes the specified diagnostics package.

```sql
DELETE FROM azure.mobile_network.diagnostics_packages
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND packetCoreControlPlaneName = '{{ packetCoreControlPlaneName }}' --required
AND diagnosticsPackageName = '{{ diagnosticsPackageName }}' --required
;
```
</TabItem>
</Tabs>
