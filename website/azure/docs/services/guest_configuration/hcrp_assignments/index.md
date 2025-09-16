--- 
title: hcrp_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - hcrp_assignments
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

Creates, updates, deletes, gets or lists a <code>hcrp_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>hcrp_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.guest_configuration.hcrp_assignments" /></td></tr>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-guestConfigurationAssignmentName"><code>guestConfigurationAssignmentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-machineName"><code>machineName</code></a></td>
    <td></td>
    <td>Get information about a guest configuration assignment</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-machineName"><code>machineName</code></a></td>
    <td></td>
    <td>List all guest configuration assignments for an ARC machine.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-guestConfigurationAssignmentName"><code>guestConfigurationAssignmentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-machineName"><code>machineName</code></a></td>
    <td></td>
    <td>Creates an association between a ARC machine and guest configuration</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-guestConfigurationAssignmentName"><code>guestConfigurationAssignmentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-machineName"><code>machineName</code></a></td>
    <td></td>
    <td>Delete a guest configuration assignment</td>
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
<tr id="parameter-machineName">
    <td><CopyableCode code="machineName" /></td>
    <td><code>string</code></td>
    <td>The name of the ARC machine.</td>
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
FROM azure.guest_configuration.hcrp_assignments
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND guestConfigurationAssignmentName = '{{ guestConfigurationAssignmentName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND machineName = '{{ machineName }}' -- required
;
```
</TabItem>
<TabItem value="list">

List all guest configuration assignments for an ARC machine.

```sql
SELECT
properties,
systemData
FROM azure.guest_configuration.hcrp_assignments
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND machineName = '{{ machineName }}' -- required
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

Creates an association between a ARC machine and guest configuration

```sql
INSERT INTO azure.guest_configuration.hcrp_assignments (
data__properties,
guestConfigurationAssignmentName,
subscriptionId,
resourceGroupName,
machineName
)
SELECT 
'{{ properties }}',
'{{ guestConfigurationAssignmentName }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ machineName }}'
RETURNING
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: hcrp_assignments
  props:
    - name: guestConfigurationAssignmentName
      value: string
      description: Required parameter for the hcrp_assignments resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the hcrp_assignments resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the hcrp_assignments resource.
    - name: machineName
      value: string
      description: Required parameter for the hcrp_assignments resource.
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
DELETE FROM azure.guest_configuration.hcrp_assignments
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND guestConfigurationAssignmentName = '{{ guestConfigurationAssignmentName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND machineName = '{{ machineName }}' --required
;
```
</TabItem>
</Tabs>
