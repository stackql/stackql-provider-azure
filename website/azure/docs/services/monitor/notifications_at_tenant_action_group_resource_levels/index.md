--- 
title: notifications_at_tenant_action_group_resource_levels
hide_title: false
hide_table_of_contents: false
keywords:
  - notifications_at_tenant_action_group_resource_levels
  - monitor
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

Creates, updates, deletes, gets or lists a <code>notifications_at_tenant_action_group_resource_levels</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>notifications_at_tenant_action_group_resource_levels</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.monitor.notifications_at_tenant_action_group_resource_levels" /></td></tr>
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
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-managementGroupId"><code>managementGroupId</code></a>, <a href="#parameter-actionGroupName"><code>actionGroupName</code></a>, <a href="#parameter-x-ms-client-tenant-id"><code>x-ms-client-tenant-id</code></a>, <a href="#parameter-data__alertType"><code>data__alertType</code></a></td>
    <td></td>
    <td>Send test notifications to a set of provided receivers</td>
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
<tr id="parameter-actionGroupName">
    <td><CopyableCode code="actionGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the action group.</td>
</tr>
<tr id="parameter-managementGroupId">
    <td><CopyableCode code="managementGroupId" /></td>
    <td><code>string</code></td>
    <td>The management group id.</td>
</tr>
<tr id="parameter-x-ms-client-tenant-id">
    <td><CopyableCode code="x-ms-client-tenant-id" /></td>
    <td><code>string</code></td>
    <td>The tenant ID of the client making the request.</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Send test notifications to a set of provided receivers

```sql
INSERT INTO azure.monitor.notifications_at_tenant_action_group_resource_levels (
data__alertType,
data__emailReceivers,
data__smsReceivers,
data__webhookReceivers,
data__azureAppPushReceivers,
data__voiceReceivers,
managementGroupId,
actionGroupName,
x-ms-client-tenant-id
)
SELECT 
'{{ alertType }}' /* required */,
'{{ emailReceivers }}',
'{{ smsReceivers }}',
'{{ webhookReceivers }}',
'{{ azureAppPushReceivers }}',
'{{ voiceReceivers }}',
'{{ managementGroupId }}',
'{{ actionGroupName }}',
'{{ x-ms-client-tenant-id }}'
RETURNING
actionDetails,
completedTime,
context,
createdTime,
state
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: notifications_at_tenant_action_group_resource_levels
  props:
    - name: managementGroupId
      value: string
      description: Required parameter for the notifications_at_tenant_action_group_resource_levels resource.
    - name: actionGroupName
      value: string
      description: Required parameter for the notifications_at_tenant_action_group_resource_levels resource.
    - name: x-ms-client-tenant-id
      value: string
      description: Required parameter for the notifications_at_tenant_action_group_resource_levels resource.
    - name: alertType
      value: string
      description: |
        The value of the supported alert type. Supported alert type value is: servicehealth
    - name: emailReceivers
      value: array
      description: |
        The list of email receivers that are part of this action group.
    - name: smsReceivers
      value: array
      description: |
        The list of SMS receivers that are part of this action group.
    - name: webhookReceivers
      value: array
      description: |
        The list of webhook receivers that are part of this action group.
    - name: azureAppPushReceivers
      value: array
      description: |
        The list of AzureAppPush receivers that are part of this action group.
    - name: voiceReceivers
      value: array
      description: |
        The list of voice receivers that are part of this action group.
```
</TabItem>
</Tabs>
