--- 
title: capabilities
hide_title: false
hide_table_of_contents: false
keywords:
  - capabilities
  - sql
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

Creates, updates, deletes, gets or lists a <code>capabilities</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>capabilities</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.capabilities" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_location"
    values={[
        { label: 'list_by_location', value: 'list_by_location' }
    ]}
>
<TabItem value="list_by_location">

Successfully retrieved the subscription location capabilities.

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
    <td>The location name.</td>
</tr>
<tr>
    <td><CopyableCode code="reason" /></td>
    <td><code>string</code></td>
    <td>The reason for the capability not being available.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the capability.</td>
</tr>
<tr>
    <td><CopyableCode code="supportedManagedInstanceVersions" /></td>
    <td><code>array</code></td>
    <td>The list of supported managed instance versions.</td>
</tr>
<tr>
    <td><CopyableCode code="supportedServerVersions" /></td>
    <td><code>array</code></td>
    <td>The list of supported server versions.</td>
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
    <td><a href="#list_by_location"><CopyableCode code="list_by_location" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-include"><code>include</code></a></td>
    <td>Gets the subscription capabilities available for the specified location.</td>
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
    <td>The location name whose capabilities are retrieved.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID that identifies an Azure subscription.</td>
</tr>
<tr id="parameter-include">
    <td><CopyableCode code="include" /></td>
    <td><code>string</code></td>
    <td>If specified, restricts the response to only include the selected item.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_location"
    values={[
        { label: 'list_by_location', value: 'list_by_location' }
    ]}
>
<TabItem value="list_by_location">

Gets the subscription capabilities available for the specified location.

```sql
SELECT
name,
reason,
status,
supportedManagedInstanceVersions,
supportedServerVersions
FROM azure.sql.capabilities
WHERE locationName = '{{ locationName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND include = '{{ include }}'
;
```
</TabItem>
</Tabs>
