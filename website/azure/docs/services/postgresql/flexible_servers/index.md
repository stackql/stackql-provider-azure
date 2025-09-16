--- 
title: flexible_servers
hide_title: false
hide_table_of_contents: false
keywords:
  - flexible_servers
  - postgresql
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

Creates, updates, deletes, gets or lists a <code>flexible_servers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>flexible_servers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.postgresql.flexible_servers" /></td></tr>
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
    <td><a href="#trigger_ltr_pre_backup"><CopyableCode code="trigger_ltr_pre_backup" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a></td>
    <td></td>
    <td>PreBackup operation performs all the checks that are needed for the subsequent long term retention backup operation to succeed.</td>
</tr>
<tr>
    <td><a href="#start_ltr_backup"><CopyableCode code="start_ltr_backup" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-targetDetails"><code>targetDetails</code></a></td>
    <td></td>
    <td>Start the Long Term Retention Backup operation</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-serverName">
    <td><CopyableCode code="serverName" /></td>
    <td><code>string</code></td>
    <td>The name of the server.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="trigger_ltr_pre_backup"
    values={[
        { label: 'trigger_ltr_pre_backup', value: 'trigger_ltr_pre_backup' },
        { label: 'start_ltr_backup', value: 'start_ltr_backup' }
    ]}
>
<TabItem value="trigger_ltr_pre_backup">

PreBackup operation performs all the checks that are needed for the subsequent long term retention backup operation to succeed.

```sql
EXEC azure.postgresql.flexible_servers.trigger_ltr_pre_backup 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serverName='{{ serverName }}' --required 
@@json=
'{
"backupSettings": "{{ backupSettings }}"
}'
;
```
</TabItem>
<TabItem value="start_ltr_backup">

Start the Long Term Retention Backup operation

```sql
EXEC azure.postgresql.flexible_servers.start_ltr_backup 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serverName='{{ serverName }}' --required 
@@json=
'{
"targetDetails": "{{ targetDetails }}", 
"backupSettings": "{{ backupSettings }}"
}'
;
```
</TabItem>
</Tabs>
