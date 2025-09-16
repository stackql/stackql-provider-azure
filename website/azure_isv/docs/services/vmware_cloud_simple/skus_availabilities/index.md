--- 
title: skus_availabilities
hide_title: false
hide_table_of_contents: false
keywords:
  - skus_availabilities
  - vmware_cloud_simple
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>skus_availabilities</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>skus_availabilities</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.vmware_cloud_simple.skus_availabilities" /></td></tr>
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

successful operation

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
    <td><CopyableCode code="dedicatedAvailabilityZoneId" /></td>
    <td><code>string</code></td>
    <td>CloudSimple Availability Zone id</td>
</tr>
<tr>
    <td><CopyableCode code="dedicatedAvailabilityZoneName" /></td>
    <td><code>string</code></td>
    <td>CloudSimple Availability Zone Name</td>
</tr>
<tr>
    <td><CopyableCode code="dedicatedPlacementGroupId" /></td>
    <td><code>string</code></td>
    <td>CloudSimple Placement Group Id</td>
</tr>
<tr>
    <td><CopyableCode code="dedicatedPlacementGroupName" /></td>
    <td><code>string</code></td>
    <td>CloudSimple Placement Group name</td>
</tr>
<tr>
    <td><CopyableCode code="limit" /></td>
    <td><code>integer</code></td>
    <td>indicates how many resources of a given SKU is available in a AZ-&gt;PG</td>
</tr>
<tr>
    <td><CopyableCode code="resourceType" /></td>
    <td><code>string</code></td>
    <td>resource type e.g. DedicatedCloudNodes</td>
</tr>
<tr>
    <td><CopyableCode code="skuId" /></td>
    <td><code>string</code></td>
    <td>sku id</td>
</tr>
<tr>
    <td><CopyableCode code="skuName" /></td>
    <td><code>string</code></td>
    <td>sku name</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-regionId"><code>regionId</code></a></td>
    <td><a href="#parameter-skuId"><code>skuId</code></a>, <a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Returns list of available resources in region</td>
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
<tr id="parameter-regionId">
    <td><CopyableCode code="regionId" /></td>
    <td><code>string</code></td>
    <td>The region Id (westus, eastus)</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client API version.</td>
</tr>
<tr id="parameter-skuId">
    <td><CopyableCode code="skuId" /></td>
    <td><code>string</code></td>
    <td>sku id, if no sku is passed availability for all skus will be returned</td>
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

Returns list of available resources in region

```sql
SELECT
dedicatedAvailabilityZoneId,
dedicatedAvailabilityZoneName,
dedicatedPlacementGroupId,
dedicatedPlacementGroupName,
limit,
resourceType,
skuId,
skuName
FROM azure_isv.vmware_cloud_simple.skus_availabilities
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND regionId = '{{ regionId }}' -- required
AND skuId = '{{ skuId }}'
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
