--- 
title: available_skus
hide_title: false
hide_table_of_contents: false
keywords:
  - available_skus
  - data_box_edge
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

Creates, updates, deletes, gets or lists an <code>available_skus</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>available_skus</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_box_edge.available_skus" /></td></tr>
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

Lists the available Skus and information related to them.

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
    <td>The Sku name.</td>
</tr>
<tr>
    <td><CopyableCode code="apiVersions" /></td>
    <td><code>array</code></td>
    <td>The API versions in which Sku is available.</td>
</tr>
<tr>
    <td><CopyableCode code="availability" /></td>
    <td><code>string</code></td>
    <td>Links to the next set of results</td>
</tr>
<tr>
    <td><CopyableCode code="capabilities" /></td>
    <td><code>array</code></td>
    <td>The capability info of the SKU.</td>
</tr>
<tr>
    <td><CopyableCode code="costs" /></td>
    <td><code>array</code></td>
    <td>The pricing info of the Sku.</td>
</tr>
<tr>
    <td><CopyableCode code="family" /></td>
    <td><code>string</code></td>
    <td>The Sku family.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The Sku kind.</td>
</tr>
<tr>
    <td><CopyableCode code="locationInfo" /></td>
    <td><code>array</code></td>
    <td>Availability of the Sku for the location/zone/site.</td>
</tr>
<tr>
    <td><CopyableCode code="locations" /></td>
    <td><code>array</code></td>
    <td>Availability of the Sku for the region.</td>
</tr>
<tr>
    <td><CopyableCode code="resourceType" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="shipmentTypes" /></td>
    <td><code>array</code></td>
    <td>List of Shipment Types supported by this SKU</td>
</tr>
<tr>
    <td><CopyableCode code="signupOption" /></td>
    <td><code>string</code></td>
    <td>Sku can be signed up by customer or not.</td>
</tr>
<tr>
    <td><CopyableCode code="size" /></td>
    <td><code>string</code></td>
    <td>The Sku kind.</td>
</tr>
<tr>
    <td><CopyableCode code="tier" /></td>
    <td><code>string</code></td>
    <td>The Sku tier.</td>
</tr>
<tr>
    <td><CopyableCode code="version" /></td>
    <td><code>string</code></td>
    <td>Availability of the Sku as preview/stable.</td>
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
    <td></td>
    <td></td>
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
    <td>The subscription ID.</td>
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

Lists the available Skus and information related to them.

```sql
SELECT
name,
apiVersions,
availability,
capabilities,
costs,
family,
kind,
locationInfo,
locations,
resourceType,
shipmentTypes,
signupOption,
size,
tier,
version
FROM azure.data_box_edge.available_skus
WHERE subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
