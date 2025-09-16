--- 
title: assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - assignments
  - guest_configuration
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

Creates, updates, deletes, gets or lists an <code>assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>assignments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.guest_configuration.assignments" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

OK. The guest configuration assignment was returned successfully.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the Guest configuration assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the Guest configuration assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-guestConfigurationAssignmentName"><code>guestConfigurationAssignmentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-vmName"><code>vmName</code></a></td>
    <td></td>
    <td>Get information about a guest configuration assignment</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-vmName"><code>vmName</code></a></td>
    <td></td>
    <td>List all guest configuration assignments for a virtual machine.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-guestConfigurationAssignmentName"><code>guestConfigurationAssignmentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a></td>
    <td></td>
    <td>Creates an association between a VM and guest configuration</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-guestConfigurationAssignmentName"><code>guestConfigurationAssignmentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-vmName"><code>vmName</code></a></td>
    <td></td>
    <td>Delete a guest configuration assignment</td>
</tr>
<tr>
    <td><a href="#subscription_list"><CopyableCode code="subscription_list" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>List all guest configuration assignments for a subscription.</td>
</tr>
<tr>
    <td><a href="#rg_list"><CopyableCode code="rg_list" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>List all guest configuration assignments for a resource group.</td>
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
<tr id="parameter-guestConfigurationAssignmentName">
    <td><CopyableCode code="guestConfigurationAssignmentName" /></td>
    <td><code>string</code></td>
    <td>Name of the guest configuration assignment</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription ID which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-vmName">
    <td><CopyableCode code="vmName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual machine.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Get information about a guest configuration assignment

```sql
SELECT
properties,
systemData
FROM azure.guest_configuration.assignments
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND guestConfigurationAssignmentName = '{{ guestConfigurationAssignmentName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND vmName = '{{ vmName }}' -- required
;
```
</TabItem>
<TabItem value="list">

List all guest configuration assignments for a virtual machine.

```sql
SELECT
properties,
systemData
FROM azure.guest_configuration.assignments
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND vmName = '{{ vmName }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Creates an association between a VM and guest configuration

```sql
INSERT INTO azure.guest_configuration.assignments (
data__properties,
guestConfigurationAssignmentName,
subscriptionId,
resourceGroupName,
vmName
)
SELECT 
'{{ properties }}',
'{{ guestConfigurationAssignmentName }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ vmName }}'
RETURNING
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: assignments
  props:
    - name: guestConfigurationAssignmentName
      value: string
      description: Required parameter for the assignments resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the assignments resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the assignments resource.
    - name: vmName
      value: string
      description: Required parameter for the assignments resource.
    - name: properties
      value: object
      description: |
        Properties of the Guest configuration assignment.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Delete a guest configuration assignment

```sql
DELETE FROM azure.guest_configuration.assignments
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND guestConfigurationAssignmentName = '{{ guestConfigurationAssignmentName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND vmName = '{{ vmName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="subscription_list"
    values={[
        { label: 'subscription_list', value: 'subscription_list' },
        { label: 'rg_list', value: 'rg_list' }
    ]}
>
<TabItem value="subscription_list">

List all guest configuration assignments for a subscription.

```sql
EXEC azure.guest_configuration.assignments.subscription_list 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="rg_list">

List all guest configuration assignments for a resource group.

```sql
EXEC azure.guest_configuration.assignments.rg_list 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
