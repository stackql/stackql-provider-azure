--- 
title: location_supported_virtual_machine_skus
hide_title: false
hide_table_of_contents: false
keywords:
  - location_supported_virtual_machine_skus
  - batch
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

Creates, updates, deletes, gets or lists a <code>location_supported_virtual_machine_skus</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>location_supported_virtual_machine_skus</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.batch.location_supported_virtual_machine_skus" /></td></tr>
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

The operation was successful. The response contains the Batch service supported virtual machine vm sizes for the subscription in the specified location.

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
    <td>The name of the SKU.</td>
</tr>
<tr>
    <td><CopyableCode code="batchSupportEndOfLife" /></td>
    <td><code>string (date-time)</code></td>
    <td>The time when Azure Batch service will retire this SKU.</td>
</tr>
<tr>
    <td><CopyableCode code="capabilities" /></td>
    <td><code>array</code></td>
    <td>A collection of capabilities which this SKU supports.</td>
</tr>
<tr>
    <td><CopyableCode code="familyName" /></td>
    <td><code>string</code></td>
    <td>The family name of the SKU.</td>
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
    <td><a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-maxresults"><code>maxresults</code></a>, <a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Gets the list of Batch supported Virtual Machine VM sizes available at the given location.</td>
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
<tr id="parameter-locationName">
    <td><CopyableCode code="locationName" /></td>
    <td><code>string</code></td>
    <td>The region for which to retrieve Batch service supported SKUs.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000)</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>OData filter expression. Valid properties for filtering are "familyName".</td>
</tr>
<tr id="parameter-maxresults">
    <td><CopyableCode code="maxresults" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of items to return in the response.</td>
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

Gets the list of Batch supported Virtual Machine VM sizes available at the given location.

```sql
SELECT
name,
batchSupportEndOfLife,
capabilities,
familyName
FROM azure.batch.location_supported_virtual_machine_skus
WHERE locationName = '{{ locationName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND maxresults = '{{ maxresults }}'
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>
