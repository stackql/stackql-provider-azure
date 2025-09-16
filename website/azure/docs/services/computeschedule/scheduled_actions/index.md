--- 
title: scheduled_actions
hide_title: false
hide_table_of_contents: false
keywords:
  - scheduled_actions
  - computeschedule
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

Creates, updates, deletes, gets or lists a <code>scheduled_actions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>scheduled_actions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.computeschedule.scheduled_actions" /></td></tr>
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
    <td><a href="#virtual_machines_cancel_operations"><CopyableCode code="virtual_machines_cancel_operations" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-locationparameter"><code>locationparameter</code></a>, <a href="#parameter-operationIds"><code>operationIds</code></a>, <a href="#parameter-correlationid"><code>correlationid</code></a></td>
    <td></td>
    <td>virtualMachinesCancelOperations: cancelOperations for a virtual machine</td>
</tr>
<tr>
    <td><a href="#virtual_machines_execute_deallocate"><CopyableCode code="virtual_machines_execute_deallocate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-locationparameter"><code>locationparameter</code></a>, <a href="#parameter-executionParameters"><code>executionParameters</code></a>, <a href="#parameter-resources"><code>resources</code></a>, <a href="#parameter-correlationid"><code>correlationid</code></a></td>
    <td></td>
    <td>virtualMachinesExecuteDeallocate: executeDeallocate for a virtual machine</td>
</tr>
<tr>
    <td><a href="#virtual_machines_execute_hibernate"><CopyableCode code="virtual_machines_execute_hibernate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-locationparameter"><code>locationparameter</code></a>, <a href="#parameter-executionParameters"><code>executionParameters</code></a>, <a href="#parameter-resources"><code>resources</code></a>, <a href="#parameter-correlationid"><code>correlationid</code></a></td>
    <td></td>
    <td>virtualMachinesExecuteHibernate: executeHibernate for a virtual machine</td>
</tr>
<tr>
    <td><a href="#virtual_machines_execute_start"><CopyableCode code="virtual_machines_execute_start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-locationparameter"><code>locationparameter</code></a>, <a href="#parameter-executionParameters"><code>executionParameters</code></a>, <a href="#parameter-resources"><code>resources</code></a>, <a href="#parameter-correlationid"><code>correlationid</code></a></td>
    <td></td>
    <td>virtualMachinesExecuteStart: executeStart for a virtual machine</td>
</tr>
<tr>
    <td><a href="#virtual_machines_get_operation_errors"><CopyableCode code="virtual_machines_get_operation_errors" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-locationparameter"><code>locationparameter</code></a>, <a href="#parameter-operationIds"><code>operationIds</code></a></td>
    <td></td>
    <td>virtualMachinesGetOperationErrors: getOperationErrors associated with an operation on a virtual machine</td>
</tr>
<tr>
    <td><a href="#virtual_machines_get_operation_status"><CopyableCode code="virtual_machines_get_operation_status" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-locationparameter"><code>locationparameter</code></a>, <a href="#parameter-operationIds"><code>operationIds</code></a>, <a href="#parameter-correlationid"><code>correlationid</code></a></td>
    <td></td>
    <td>virtualMachinesGetOperationStatus: getOperationStatus for a virtual machine</td>
</tr>
<tr>
    <td><a href="#virtual_machines_submit_deallocate"><CopyableCode code="virtual_machines_submit_deallocate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-locationparameter"><code>locationparameter</code></a>, <a href="#parameter-schedule"><code>schedule</code></a>, <a href="#parameter-executionParameters"><code>executionParameters</code></a>, <a href="#parameter-resources"><code>resources</code></a>, <a href="#parameter-correlationid"><code>correlationid</code></a></td>
    <td></td>
    <td>virtualMachinesSubmitDeallocate: submitDeallocate for a virtual machine</td>
</tr>
<tr>
    <td><a href="#virtual_machines_submit_hibernate"><CopyableCode code="virtual_machines_submit_hibernate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-locationparameter"><code>locationparameter</code></a>, <a href="#parameter-schedule"><code>schedule</code></a>, <a href="#parameter-executionParameters"><code>executionParameters</code></a>, <a href="#parameter-resources"><code>resources</code></a>, <a href="#parameter-correlationid"><code>correlationid</code></a></td>
    <td></td>
    <td>virtualMachinesSubmitHibernate: submitHibernate for a virtual machine</td>
</tr>
<tr>
    <td><a href="#virtual_machines_submit_start"><CopyableCode code="virtual_machines_submit_start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-locationparameter"><code>locationparameter</code></a>, <a href="#parameter-schedule"><code>schedule</code></a>, <a href="#parameter-executionParameters"><code>executionParameters</code></a>, <a href="#parameter-resources"><code>resources</code></a>, <a href="#parameter-correlationid"><code>correlationid</code></a></td>
    <td></td>
    <td>virtualMachinesSubmitStart: submitStart for a virtual machine</td>
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
<tr id="parameter-locationparameter">
    <td><CopyableCode code="locationparameter" /></td>
    <td><code>string</code></td>
    <td>The location name.</td>
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
    defaultValue="virtual_machines_cancel_operations"
    values={[
        { label: 'virtual_machines_cancel_operations', value: 'virtual_machines_cancel_operations' },
        { label: 'virtual_machines_execute_deallocate', value: 'virtual_machines_execute_deallocate' },
        { label: 'virtual_machines_execute_hibernate', value: 'virtual_machines_execute_hibernate' },
        { label: 'virtual_machines_execute_start', value: 'virtual_machines_execute_start' },
        { label: 'virtual_machines_get_operation_errors', value: 'virtual_machines_get_operation_errors' },
        { label: 'virtual_machines_get_operation_status', value: 'virtual_machines_get_operation_status' },
        { label: 'virtual_machines_submit_deallocate', value: 'virtual_machines_submit_deallocate' },
        { label: 'virtual_machines_submit_hibernate', value: 'virtual_machines_submit_hibernate' },
        { label: 'virtual_machines_submit_start', value: 'virtual_machines_submit_start' }
    ]}
>
<TabItem value="virtual_machines_cancel_operations">

virtualMachinesCancelOperations: cancelOperations for a virtual machine

```sql
EXEC azure.computeschedule.scheduled_actions.virtual_machines_cancel_operations 
@subscriptionId='{{ subscriptionId }}' --required, 
@locationparameter='{{ locationparameter }}' --required 
@@json=
'{
"operationIds": "{{ operationIds }}", 
"correlationid": "{{ correlationid }}"
}'
;
```
</TabItem>
<TabItem value="virtual_machines_execute_deallocate">

virtualMachinesExecuteDeallocate: executeDeallocate for a virtual machine

```sql
EXEC azure.computeschedule.scheduled_actions.virtual_machines_execute_deallocate 
@subscriptionId='{{ subscriptionId }}' --required, 
@locationparameter='{{ locationparameter }}' --required 
@@json=
'{
"executionParameters": "{{ executionParameters }}", 
"resources": "{{ resources }}", 
"correlationid": "{{ correlationid }}"
}'
;
```
</TabItem>
<TabItem value="virtual_machines_execute_hibernate">

virtualMachinesExecuteHibernate: executeHibernate for a virtual machine

```sql
EXEC azure.computeschedule.scheduled_actions.virtual_machines_execute_hibernate 
@subscriptionId='{{ subscriptionId }}' --required, 
@locationparameter='{{ locationparameter }}' --required 
@@json=
'{
"executionParameters": "{{ executionParameters }}", 
"resources": "{{ resources }}", 
"correlationid": "{{ correlationid }}"
}'
;
```
</TabItem>
<TabItem value="virtual_machines_execute_start">

virtualMachinesExecuteStart: executeStart for a virtual machine

```sql
EXEC azure.computeschedule.scheduled_actions.virtual_machines_execute_start 
@subscriptionId='{{ subscriptionId }}' --required, 
@locationparameter='{{ locationparameter }}' --required 
@@json=
'{
"executionParameters": "{{ executionParameters }}", 
"resources": "{{ resources }}", 
"correlationid": "{{ correlationid }}"
}'
;
```
</TabItem>
<TabItem value="virtual_machines_get_operation_errors">

virtualMachinesGetOperationErrors: getOperationErrors associated with an operation on a virtual machine

```sql
EXEC azure.computeschedule.scheduled_actions.virtual_machines_get_operation_errors 
@subscriptionId='{{ subscriptionId }}' --required, 
@locationparameter='{{ locationparameter }}' --required 
@@json=
'{
"operationIds": "{{ operationIds }}"
}'
;
```
</TabItem>
<TabItem value="virtual_machines_get_operation_status">

virtualMachinesGetOperationStatus: getOperationStatus for a virtual machine

```sql
EXEC azure.computeschedule.scheduled_actions.virtual_machines_get_operation_status 
@subscriptionId='{{ subscriptionId }}' --required, 
@locationparameter='{{ locationparameter }}' --required 
@@json=
'{
"operationIds": "{{ operationIds }}", 
"correlationid": "{{ correlationid }}"
}'
;
```
</TabItem>
<TabItem value="virtual_machines_submit_deallocate">

virtualMachinesSubmitDeallocate: submitDeallocate for a virtual machine

```sql
EXEC azure.computeschedule.scheduled_actions.virtual_machines_submit_deallocate 
@subscriptionId='{{ subscriptionId }}' --required, 
@locationparameter='{{ locationparameter }}' --required 
@@json=
'{
"schedule": "{{ schedule }}", 
"executionParameters": "{{ executionParameters }}", 
"resources": "{{ resources }}", 
"correlationid": "{{ correlationid }}"
}'
;
```
</TabItem>
<TabItem value="virtual_machines_submit_hibernate">

virtualMachinesSubmitHibernate: submitHibernate for a virtual machine

```sql
EXEC azure.computeschedule.scheduled_actions.virtual_machines_submit_hibernate 
@subscriptionId='{{ subscriptionId }}' --required, 
@locationparameter='{{ locationparameter }}' --required 
@@json=
'{
"schedule": "{{ schedule }}", 
"executionParameters": "{{ executionParameters }}", 
"resources": "{{ resources }}", 
"correlationid": "{{ correlationid }}"
}'
;
```
</TabItem>
<TabItem value="virtual_machines_submit_start">

virtualMachinesSubmitStart: submitStart for a virtual machine

```sql
EXEC azure.computeschedule.scheduled_actions.virtual_machines_submit_start 
@subscriptionId='{{ subscriptionId }}' --required, 
@locationparameter='{{ locationparameter }}' --required 
@@json=
'{
"schedule": "{{ schedule }}", 
"executionParameters": "{{ executionParameters }}", 
"resources": "{{ resources }}", 
"correlationid": "{{ correlationid }}"
}'
;
```
</TabItem>
</Tabs>
