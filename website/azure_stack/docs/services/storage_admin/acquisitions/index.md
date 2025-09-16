--- 
title: acquisitions
hide_title: false
hide_table_of_contents: false
keywords:
  - acquisitions
  - storage_admin
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

Creates, updates, deletes, gets or lists an <code>acquisitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>acquisitions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.storage_admin.acquisitions" /></td></tr>
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

OK -- The list of acquisitions has been returned.

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
    <td><CopyableCode code="acquisitionid" /></td>
    <td><code>string</code></td>
    <td>The ID of page BLOB acquisition.</td>
</tr>
<tr>
    <td><CopyableCode code="blob" /></td>
    <td><code>string</code></td>
    <td>The name of the page BLOB.</td>
</tr>
<tr>
    <td><CopyableCode code="container" /></td>
    <td><code>string</code></td>
    <td>The container associated with the page BLOB.</td>
</tr>
<tr>
    <td><CopyableCode code="filePath" /></td>
    <td><code>string</code></td>
    <td>The file path of the page BLOB file on storage cluster.</td>
</tr>
<tr>
    <td><CopyableCode code="filePathUnc" /></td>
    <td><code>string</code></td>
    <td>The file path unc of the page BLOB file on storage cluster.</td>
</tr>
<tr>
    <td><CopyableCode code="maximumblobsize" /></td>
    <td><code>integer (int64)</code></td>
    <td>The maximum size of the page BLOB.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the page BLOB acquisition.</td>
</tr>
<tr>
    <td><CopyableCode code="storageaccount" /></td>
    <td><code>string</code></td>
    <td>The storage account that holds the page BLOB.</td>
</tr>
<tr>
    <td><CopyableCode code="susbcriptionid" /></td>
    <td><code>string</code></td>
    <td>ID of the subscription associated with the page BLOB.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td></td>
    <td>Returns a list of BLOB acquisitions.</td>
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
    <td>Resource location.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription Id.</td>
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

Returns a list of BLOB acquisitions.

```sql
SELECT
acquisitionid,
blob,
container,
filePath,
filePathUnc,
maximumblobsize,
status,
storageaccount,
susbcriptionid
FROM azure_stack.storage_admin.acquisitions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND location = '{{ location }}' -- required
;
```
</TabItem>
</Tabs>
