--- 
title: restorable_time_ranges
hide_title: false
hide_table_of_contents: false
keywords:
  - restorable_time_ranges
  - data_protection
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

Creates, updates, deletes, gets or lists a <code>restorable_time_ranges</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>restorable_time_ranges</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_protection.restorable_time_ranges" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#find"><CopyableCode code="find" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-backupInstanceName"><code>backupInstanceName</code></a>, <a href="#parameter-sourceDataStoreType"><code>sourceDataStoreType</code></a></td>
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
<tr id="parameter-backupInstanceName">
    <td><CopyableCode code="backupInstanceName" /></td>
    <td><code>string</code></td>
    <td>The name of the backup instance.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-vaultName">
    <td><CopyableCode code="vaultName" /></td>
    <td><code>string</code></td>
    <td>The name of the backup vault.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="find"
    values={[
        { label: 'find', value: 'find' }
    ]}
>
<TabItem value="find">

OK

```sql
EXEC azure.data_protection.restorable_time_ranges.find 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vaultName='{{ vaultName }}' --required, 
@backupInstanceName='{{ backupInstanceName }}' --required 
@@json=
'{
"sourceDataStoreType": "{{ sourceDataStoreType }}", 
"startTime": "{{ startTime }}", 
"endTime": "{{ endTime }}"
}'
;
```
</TabItem>
</Tabs>
