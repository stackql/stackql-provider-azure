--- 
title: resource_skus
hide_title: false
hide_table_of_contents: false
keywords:
  - resource_skus
  - compute
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

Creates, updates, deletes, gets or lists a <code>resource_skus</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>resource_skus</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.resource_skus" /></td></tr>
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
    <td>The name of SKU.</td>
</tr>
<tr>
    <td><CopyableCode code="apiVersions" /></td>
    <td><code>array</code></td>
    <td>The api versions that support this SKU.</td>
</tr>
<tr>
    <td><CopyableCode code="capabilities" /></td>
    <td><code>array</code></td>
    <td>A name value pair to describe the capability.</td>
</tr>
<tr>
    <td><CopyableCode code="capacity" /></td>
    <td><code>object</code></td>
    <td>Specifies the number of virtual machines in the scale set.</td>
</tr>
<tr>
    <td><CopyableCode code="costs" /></td>
    <td><code>array</code></td>
    <td>Metadata for retrieving price info.</td>
</tr>
<tr>
    <td><CopyableCode code="family" /></td>
    <td><code>string</code></td>
    <td>The Family of this particular SKU.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The Kind of resources that are supported in this SKU.</td>
</tr>
<tr>
    <td><CopyableCode code="locationInfo" /></td>
    <td><code>array</code></td>
    <td>A list of locations and availability zones in those locations where the SKU is available.</td>
</tr>
<tr>
    <td><CopyableCode code="locations" /></td>
    <td><code>array</code></td>
    <td>The set of locations that the SKU is available.</td>
</tr>
<tr>
    <td><CopyableCode code="resourceType" /></td>
    <td><code>string</code></td>
    <td>The type of resource the SKU applies to.</td>
</tr>
<tr>
    <td><CopyableCode code="restrictions" /></td>
    <td><code>array</code></td>
    <td>The restrictions because of which SKU cannot be used. This is empty if there are no restrictions.</td>
</tr>
<tr>
    <td><CopyableCode code="size" /></td>
    <td><code>string</code></td>
    <td>The Size of the SKU.</td>
</tr>
<tr>
    <td><CopyableCode code="tier" /></td>
    <td><code>string</code></td>
    <td>Specifies the tier of virtual machines in a scale set.<br /><br /> Possible Values:<br /><br /> **Standard**<br /><br /> **Basic**</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-includeExtendedLocations"><code>includeExtendedLocations</code></a></td>
    <td>Gets the list of Microsoft.Compute SKUs available for your Subscription.</td>
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
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation. Only **location** filter is supported currently.</td>
</tr>
<tr id="parameter-includeExtendedLocations">
    <td><CopyableCode code="includeExtendedLocations" /></td>
    <td><code>string</code></td>
    <td>To Include Extended Locations information or not in the response.</td>
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

Gets the list of Microsoft.Compute SKUs available for your Subscription.

```sql
SELECT
name,
apiVersions,
capabilities,
capacity,
costs,
family,
kind,
locationInfo,
locations,
resourceType,
restrictions,
size,
tier
FROM azure.compute.resource_skus
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
AND includeExtendedLocations = '{{ includeExtendedLocations }}'
;
```
</TabItem>
</Tabs>
