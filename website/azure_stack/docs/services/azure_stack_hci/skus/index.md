--- 
title: skus
hide_title: false
hide_table_of_contents: false
keywords:
  - skus
  - azure_stack_hci
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

Creates, updates, deletes, gets or lists a <code>skus</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>skus</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack_hci.skus" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_offer', value: 'list_by_offer' }
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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the SKU. E.g. P3. It is typically a letter+number code</td>
</tr>
<tr>
    <td><CopyableCode code="capacity" /></td>
    <td><code>integer (int32)</code></td>
    <td>If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.</td>
</tr>
<tr>
    <td><CopyableCode code="family" /></td>
    <td><code>string</code></td>
    <td>If the service has different generations of hardware, for the same SKU, then that can be captured here.</td>
</tr>
<tr>
    <td><CopyableCode code="size" /></td>
    <td><code>string</code></td>
    <td>The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code. </td>
</tr>
<tr>
    <td><CopyableCode code="tier" /></td>
    <td><code>string</code></td>
    <td>This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_offer">

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
    <td>The name of the SKU. E.g. P3. It is typically a letter+number code</td>
</tr>
<tr>
    <td><CopyableCode code="capacity" /></td>
    <td><code>integer (int32)</code></td>
    <td>If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.</td>
</tr>
<tr>
    <td><CopyableCode code="family" /></td>
    <td><code>string</code></td>
    <td>If the service has different generations of hardware, for the same SKU, then that can be captured here.</td>
</tr>
<tr>
    <td><CopyableCode code="size" /></td>
    <td><code>string</code></td>
    <td>The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code. </td>
</tr>
<tr>
    <td><CopyableCode code="tier" /></td>
    <td><code>string</code></td>
    <td>This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-offerName"><code>offerName</code></a>, <a href="#parameter-skuName"><code>skuName</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Get SKU resource details within a offer of HCI Cluster.</td>
</tr>
<tr>
    <td><a href="#list_by_offer"><CopyableCode code="list_by_offer" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-offerName"><code>offerName</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>List Skus available for a offer within the HCI Cluster.</td>
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
<tr id="parameter-clusterName">
    <td><CopyableCode code="clusterName" /></td>
    <td><code>string</code></td>
    <td>The name of the cluster.</td>
</tr>
<tr id="parameter-offerName">
    <td><CopyableCode code="offerName" /></td>
    <td><code>string</code></td>
    <td>The name of the offer available within HCI cluster.</td>
</tr>
<tr id="parameter-publisherName">
    <td><CopyableCode code="publisherName" /></td>
    <td><code>string</code></td>
    <td>The name of the publisher available within HCI cluster.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-skuName">
    <td><CopyableCode code="skuName" /></td>
    <td><code>string</code></td>
    <td>The name of the SKU available within HCI cluster.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>Specify $expand=content,contentVersion to populate additional fields related to the marketplace offer.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_offer', value: 'list_by_offer' }
    ]}
>
<TabItem value="get">

Get SKU resource details within a offer of HCI Cluster.

```sql
SELECT
name,
capacity,
family,
size,
tier
FROM azure_stack.azure_stack_hci.skus
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
AND publisherName = '{{ publisherName }}' -- required
AND offerName = '{{ offerName }}' -- required
AND skuName = '{{ skuName }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list_by_offer">

List Skus available for a offer within the HCI Cluster.

```sql
SELECT
name,
capacity,
family,
size,
tier
FROM azure_stack.azure_stack_hci.skus
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
AND publisherName = '{{ publisherName }}' -- required
AND offerName = '{{ offerName }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
</Tabs>
