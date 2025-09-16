--- 
title: packet_core_control_plane_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - packet_core_control_plane_versions
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

Creates, updates, deletes, gets or lists a <code>packet_core_control_plane_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>packet_core_control_plane_versions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mobile_network.packet_core_control_plane_versions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_subscription"
    values={[
        { label: 'get_by_subscription', value: 'get_by_subscription' },
        { label: 'get', value: 'get' },
        { label: 'list_by_subscription', value: 'list_by_subscription' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_by_subscription">

Request successful. The operation returns the resulting packet core control plane version resource.

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
    <td>Packet core control plane version properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get">

Request successful. The operation returns the resulting packet core control plane version resource.

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
    <td>Packet core control plane version properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

Get supported packet core control plane versions successful.

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
    <td>Packet core control plane version properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Get supported packet core control plane versions successful.

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
    <td>Packet core control plane version properties.</td>
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
    <td><a href="#get_by_subscription"><CopyableCode code="get_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-versionName"><code>versionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets information about the specified packet core control plane version.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-versionName"><code>versionName</code></a></td>
    <td></td>
    <td>Gets information about the specified packet core control plane version.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all supported packet core control planes versions.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>Lists all supported packet core control planes versions.</td>
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
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-versionName">
    <td><CopyableCode code="versionName" /></td>
    <td><code>string</code></td>
    <td>The name of the packet core control plane version.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_subscription"
    values={[
        { label: 'get_by_subscription', value: 'get_by_subscription' },
        { label: 'get', value: 'get' },
        { label: 'list_by_subscription', value: 'list_by_subscription' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_by_subscription">

Gets information about the specified packet core control plane version.

```sql
SELECT
properties
FROM azure.mobile_network.packet_core_control_plane_versions
WHERE versionName = '{{ versionName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get">

Gets information about the specified packet core control plane version.

```sql
SELECT
properties
FROM azure.mobile_network.packet_core_control_plane_versions
WHERE versionName = '{{ versionName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

Lists all supported packet core control planes versions.

```sql
SELECT
properties
FROM azure.mobile_network.packet_core_control_plane_versions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all supported packet core control planes versions.

```sql
SELECT
properties
FROM azure.mobile_network.packet_core_control_plane_versions
;
```
</TabItem>
</Tabs>
