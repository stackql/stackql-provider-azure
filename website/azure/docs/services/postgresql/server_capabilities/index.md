--- 
title: server_capabilities
hide_title: false
hide_table_of_contents: false
keywords:
  - server_capabilities
  - postgresql
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

Creates, updates, deletes, gets or lists a <code>server_capabilities</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>server_capabilities</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.postgresql.server_capabilities" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of flexible servers capability</td>
</tr>
<tr>
    <td><CopyableCode code="fastProvisioningSupported" /></td>
    <td><code>string</code></td>
    <td>Gets a value indicating whether fast provisioning is supported. "Enabled" means fast provisioning is supported. "Disabled" stands for fast provisioning is not supported.</td>
</tr>
<tr>
    <td><CopyableCode code="geoBackupSupported" /></td>
    <td><code>string</code></td>
    <td>Determines if geo-backup is supported in this region. "Enabled" means geo-backup is supported. "Disabled" stands for geo-back is not supported.</td>
</tr>
<tr>
    <td><CopyableCode code="onlineResizeSupported" /></td>
    <td><code>string</code></td>
    <td>A value indicating whether online resize is supported in this region for the given subscription. "Enabled" means storage online resize is supported. "Disabled" means storage online resize is not supported.</td>
</tr>
<tr>
    <td><CopyableCode code="reason" /></td>
    <td><code>string</code></td>
    <td>The reason for the capability not being available.</td>
</tr>
<tr>
    <td><CopyableCode code="restricted" /></td>
    <td><code>string</code></td>
    <td>A value indicating whether this region is restricted. "Enabled" means region is restricted. "Disabled" stands for region is not restricted.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the capability.</td>
</tr>
<tr>
    <td><CopyableCode code="storageAutoGrowthSupported" /></td>
    <td><code>string</code></td>
    <td>A value indicating whether storage auto-grow is supported in this region. "Enabled" means storage auto-grow is supported. "Disabled" stands for storage auto-grow is not supported.</td>
</tr>
<tr>
    <td><CopyableCode code="supportedFastProvisioningEditions" /></td>
    <td><code>array</code></td>
    <td>List of supported server editions for fast provisioning</td>
</tr>
<tr>
    <td><CopyableCode code="supportedServerEditions" /></td>
    <td><code>array</code></td>
    <td>List of supported flexible server editions</td>
</tr>
<tr>
    <td><CopyableCode code="supportedServerVersions" /></td>
    <td><code>array</code></td>
    <td>The list of server versions supported for this capability.</td>
</tr>
<tr>
    <td><CopyableCode code="zoneRedundantHaAndGeoBackupSupported" /></td>
    <td><code>string</code></td>
    <td>A value indicating whether Zone Redundant HA and Geo-backup is supported in this region. "Enabled" means zone redundant HA and geo-backup is supported. "Disabled" stands for zone redundant HA and geo-backup is not supported.</td>
</tr>
<tr>
    <td><CopyableCode code="zoneRedundantHaSupported" /></td>
    <td><code>string</code></td>
    <td>A value indicating whether Zone Redundant HA is supported in this region. "Enabled" means zone redundant HA is supported. "Disabled" stands for zone redundant HA is not supported.</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a></td>
    <td></td>
    <td>Get capabilities for a flexible server.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-serverName">
    <td><CopyableCode code="serverName" /></td>
    <td><code>string</code></td>
    <td>The name of the server.</td>
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
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Get capabilities for a flexible server.

```sql
SELECT
name,
fastProvisioningSupported,
geoBackupSupported,
onlineResizeSupported,
reason,
restricted,
status,
storageAutoGrowthSupported,
supportedFastProvisioningEditions,
supportedServerEditions,
supportedServerVersions,
zoneRedundantHaAndGeoBackupSupported,
zoneRedundantHaSupported
FROM azure.postgresql.server_capabilities
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
;
```
</TabItem>
</Tabs>
