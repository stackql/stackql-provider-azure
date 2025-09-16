--- 
title: disks
hide_title: false
hide_table_of_contents: false
keywords:
  - disks
  - compute_admin
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

Creates, updates, deletes, gets or lists a <code>disks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>disks</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.compute_admin.disks" /></td></tr>
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

OK -- The disk has been returned.

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
    <td>Disk properties.</td>
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

OK -- The list of disks has been returned.

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
    <td>Disk properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-diskId"><code>diskId</code></a></td>
    <td><a href="#parameter-showSizeDetail"><code>showSizeDetail</code></a></td>
    <td>Returns the disk.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td><a href="#parameter-userSubscriptionId"><code>userSubscriptionId</code></a>, <a href="#parameter-status"><code>status</code></a>, <a href="#parameter-sharePath"><code>sharePath</code></a>, <a href="#parameter-scaleUnit"><code>scaleUnit</code></a>, <a href="#parameter-volumeLabel"><code>volumeLabel</code></a>, <a href="#parameter-count"><code>count</code></a>, <a href="#parameter-start"><code>start</code></a></td>
    <td>Returns a list of disks.</td>
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
<tr id="parameter-diskId">
    <td><CopyableCode code="diskId" /></td>
    <td><code>string</code></td>
    <td>The disk guid as identity.</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The name of Azure region.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-count">
    <td><CopyableCode code="count" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of disks to return.</td>
</tr>
<tr id="parameter-scaleUnit">
    <td><CopyableCode code="scaleUnit" /></td>
    <td><code>string</code></td>
    <td>The scale unit which the resource belongs to.</td>
</tr>
<tr id="parameter-sharePath">
    <td><CopyableCode code="sharePath" /></td>
    <td><code>string</code></td>
    <td>The share which the resource belongs to.</td>
</tr>
<tr id="parameter-showSizeDetail">
    <td><CopyableCode code="showSizeDetail" /></td>
    <td><code>boolean</code></td>
    <td>Switch for whether summary or detailed disk size information is returned.</td>
</tr>
<tr id="parameter-start">
    <td><CopyableCode code="start" /></td>
    <td><code>integer (int32)</code></td>
    <td>The start index of disks in query.</td>
</tr>
<tr id="parameter-status">
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The parameters of disk state.</td>
</tr>
<tr id="parameter-userSubscriptionId">
    <td><CopyableCode code="userSubscriptionId" /></td>
    <td><code>string</code></td>
    <td>User Subscription Id which the resource belongs to.</td>
</tr>
<tr id="parameter-volumeLabel">
    <td><CopyableCode code="volumeLabel" /></td>
    <td><code>string</code></td>
    <td>The volume label of the volume which the resource belongs to.</td>
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

Returns the disk.

```sql
SELECT
id,
name,
properties,
type
FROM azure_stack.compute_admin.disks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND location = '{{ location }}' -- required
AND diskId = '{{ diskId }}' -- required
AND showSizeDetail = '{{ showSizeDetail }}'
;
```
</TabItem>
<TabItem value="list">

Returns a list of disks.

```sql
SELECT
id,
name,
properties,
type
FROM azure_stack.compute_admin.disks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND location = '{{ location }}' -- required
AND userSubscriptionId = '{{ userSubscriptionId }}'
AND status = '{{ status }}'
AND sharePath = '{{ sharePath }}'
AND scaleUnit = '{{ scaleUnit }}'
AND volumeLabel = '{{ volumeLabel }}'
AND count = '{{ count }}'
AND start = '{{ start }}'
;
```
</TabItem>
</Tabs>
