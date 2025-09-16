--- 
title: sql_virtual_machine_troubleshoot
hide_title: false
hide_table_of_contents: false
keywords:
  - sql_virtual_machine_troubleshoot
  - sql_vm
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

Creates, updates, deletes, gets or lists a <code>sql_virtual_machine_troubleshoot</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>sql_virtual_machine_troubleshoot</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql_vm.sql_virtual_machine_troubleshoot" /></td></tr>
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
    <td><a href="#troubleshoot"><CopyableCode code="troubleshoot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlVirtualMachineName"><code>sqlVirtualMachineName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Starts SQL virtual machine troubleshooting.</td>
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
    <td>Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-sqlVirtualMachineName">
    <td><CopyableCode code="sqlVirtualMachineName" /></td>
    <td><code>string</code></td>
    <td>Name of the SQL virtual machine.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="troubleshoot"
    values={[
        { label: 'troubleshoot', value: 'troubleshoot' }
    ]}
>
<TabItem value="troubleshoot">

Starts SQL virtual machine troubleshooting.

```sql
EXEC azure.sql_vm.sql_virtual_machine_troubleshoot.troubleshoot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@sqlVirtualMachineName='{{ sqlVirtualMachineName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"startTimeUtc": "{{ startTimeUtc }}", 
"endTimeUtc": "{{ endTimeUtc }}", 
"troubleshootingScenario": "{{ troubleshootingScenario }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
