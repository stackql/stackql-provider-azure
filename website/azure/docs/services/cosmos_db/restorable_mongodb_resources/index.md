--- 
title: restorable_mongodb_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - restorable_mongodb_resources
  - cosmos_db
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

Creates, updates, deletes, gets or lists a <code>restorable_mongodb_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>restorable_mongodb_resources</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.restorable_mongodb_resources" /></td></tr>
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

The operation completed successfully.

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
    <td>The unique resource identifier of the ARM resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the ARM resource.</td>
</tr>
<tr>
    <td><CopyableCode code="collectionNames" /></td>
    <td><code>array</code></td>
    <td>The names of the collections available for restore.</td>
</tr>
<tr>
    <td><CopyableCode code="databaseName" /></td>
    <td><code>string</code></td>
    <td>The name of the database available for restore.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of Azure resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a></td>
    <td><a href="#parameter-restoreLocation"><code>restoreLocation</code></a>, <a href="#parameter-restoreTimestampInUtc"><code>restoreTimestampInUtc</code></a></td>
    <td>Return a list of database and collection combo that exist on the account at the given timestamp and location. This helps in scenarios to validate what resources exist at given timestamp and location. This API requires 'Microsoft.DocumentDB/locations/restorableDatabaseAccounts/.../read' permission.</td>
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
<tr id="parameter-instanceId">
    <td><CopyableCode code="instanceId" /></td>
    <td><code>string</code></td>
    <td>The instanceId GUID of a restorable database account.</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Cosmos DB region, with spaces between words and each word capitalized.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-restoreLocation">
    <td><CopyableCode code="restoreLocation" /></td>
    <td><code>string</code></td>
    <td>The location where the restorable resources are located.</td>
</tr>
<tr id="parameter-restoreTimestampInUtc">
    <td><CopyableCode code="restoreTimestampInUtc" /></td>
    <td><code>string</code></td>
    <td>The timestamp when the restorable resources existed.</td>
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

Return a list of database and collection combo that exist on the account at the given timestamp and location. This helps in scenarios to validate what resources exist at given timestamp and location. This API requires 'Microsoft.DocumentDB/locations/restorableDatabaseAccounts/.../read' permission.

```sql
SELECT
id,
name,
collectionNames,
databaseName,
type
FROM azure.cosmos_db.restorable_mongodb_resources
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND location = '{{ location }}' -- required
AND instanceId = '{{ instanceId }}' -- required
AND restoreLocation = '{{ restoreLocation }}'
AND restoreTimestampInUtc = '{{ restoreTimestampInUtc }}'
;
```
</TabItem>
</Tabs>
