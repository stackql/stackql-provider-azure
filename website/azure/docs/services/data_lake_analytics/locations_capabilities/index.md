--- 
title: locations_capabilities
hide_title: false
hide_table_of_contents: false
keywords:
  - locations_capabilities
  - data_lake_analytics
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

Creates, updates, deletes, gets or lists a <code>locations_capabilities</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>locations_capabilities</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_lake_analytics.locations_capabilities" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Successfully retrieved the subscription-level properties and limits for Data Lake Analytics specified by resource location.

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
    <td><CopyableCode code="accountCount" /></td>
    <td><code>integer (int32)</code></td>
    <td>The current number of accounts under this subscription.</td>
</tr>
<tr>
    <td><CopyableCode code="maxAccountCount" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum supported number of accounts under this subscription.</td>
</tr>
<tr>
    <td><CopyableCode code="migrationState" /></td>
    <td><code>boolean</code></td>
    <td>The Boolean value of true or false to indicate the maintenance state.</td>
</tr>
<tr>
    <td><CopyableCode code="state" /></td>
    <td><code>string</code></td>
    <td>The subscription state.</td>
</tr>
<tr>
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The subscription credentials that uniquely identifies the subscription.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td></td>
    <td>Gets subscription-level properties and limits for Data Lake Analytics specified by resource location.</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The resource location without whitespace.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Gets subscription-level properties and limits for Data Lake Analytics specified by resource location.

```sql
SELECT
accountCount,
maxAccountCount,
migrationState,
state,
subscriptionId
FROM azure.data_lake_analytics.locations_capabilities
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND location = '{{ location }}' -- required
;
```
</TabItem>
</Tabs>
