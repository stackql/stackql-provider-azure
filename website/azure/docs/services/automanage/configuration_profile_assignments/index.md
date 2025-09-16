--- 
title: configuration_profile_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - configuration_profile_assignments
  - automanage
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

Creates, updates, deletes, gets or lists a <code>configuration_profile_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>configuration_profile_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automanage.configuration_profile_assignments" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_virtual_machines', value: 'list_by_virtual_machines' },
        { label: 'list_by_machine_name', value: 'list_by_machine_name' },
        { label: 'list_by_cluster_name', value: 'list_by_cluster_name' },
        { label: 'list', value: 'list' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

OK. The configuration profile assignment was returned successfully.

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
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>Azure resource id. Indicates if this resource is managed by another Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the configuration profile assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_virtual_machines">

OK. The list of configuration profile assignments were returned successfully.

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
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>Azure resource id. Indicates if this resource is managed by another Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the configuration profile assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_machine_name">

OK. The list of configuration profile assignments were returned successfully.

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
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>Azure resource id. Indicates if this resource is managed by another Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the configuration profile assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_cluster_name">

OK. The list of configuration profile assignments were returned successfully.

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
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>Azure resource id. Indicates if this resource is managed by another Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the configuration profile assignment.</td>
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

OK. The list of configuration profile assignments were returned successfully.

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
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>Azure resource id. Indicates if this resource is managed by another Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the configuration profile assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

OK. The list of configuration profile assignments were returned successfully.

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
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>Azure resource id. Indicates if this resource is managed by another Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the configuration profile assignment.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-configurationProfileAssignmentName"><code>configurationProfileAssignmentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-vmName"><code>vmName</code></a></td>
    <td></td>
    <td>Get information about a configuration profile assignment</td>
</tr>
<tr>
    <td><a href="#list_by_virtual_machines"><CopyableCode code="list_by_virtual_machines" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a></td>
    <td></td>
    <td>Get list of configuration profile assignments</td>
</tr>
<tr>
    <td><a href="#list_by_machine_name"><CopyableCode code="list_by_machine_name" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-machineName"><code>machineName</code></a></td>
    <td></td>
    <td>Get list of configuration profile assignments</td>
</tr>
<tr>
    <td><a href="#list_by_cluster_name"><CopyableCode code="list_by_cluster_name" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a></td>
    <td></td>
    <td>Get list of configuration profile assignments</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get list of configuration profile assignments</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get list of configuration profile assignments under a given subscription</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-configurationProfileAssignmentName"><code>configurationProfileAssignmentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a></td>
    <td></td>
    <td>Creates an association between a VM and Automanage configuration profile</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-configurationProfileAssignmentName"><code>configurationProfileAssignmentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-vmName"><code>vmName</code></a></td>
    <td></td>
    <td>Delete a configuration profile assignment</td>
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
<tr id="parameter-clusterName">
    <td><CopyableCode code="clusterName" /></td>
    <td><code>string</code></td>
    <td>The name of the Arc machine.</td>
</tr>
<tr id="parameter-configurationProfileAssignmentName">
    <td><CopyableCode code="configurationProfileAssignmentName" /></td>
    <td><code>string</code></td>
    <td>Name of the configuration profile assignment</td>
</tr>
<tr id="parameter-machineName">
    <td><CopyableCode code="machineName" /></td>
    <td><code>string</code></td>
    <td>The name of the Arc machine.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
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
        { label: 'list_by_virtual_machines', value: 'list_by_virtual_machines' },
        { label: 'list_by_machine_name', value: 'list_by_machine_name' },
        { label: 'list_by_cluster_name', value: 'list_by_cluster_name' },
        { label: 'list', value: 'list' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Get information about a configuration profile assignment

```sql
SELECT
managedBy,
properties,
systemData
FROM azure.automanage.configuration_profile_assignments
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND configurationProfileAssignmentName = '{{ configurationProfileAssignmentName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND vmName = '{{ vmName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_virtual_machines">

Get list of configuration profile assignments

```sql
SELECT
managedBy,
properties,
systemData
FROM azure.automanage.configuration_profile_assignments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND vmName = '{{ vmName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_machine_name">

Get list of configuration profile assignments

```sql
SELECT
managedBy,
properties,
systemData
FROM azure.automanage.configuration_profile_assignments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND machineName = '{{ machineName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_cluster_name">

Get list of configuration profile assignments

```sql
SELECT
managedBy,
properties,
systemData
FROM azure.automanage.configuration_profile_assignments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get list of configuration profile assignments

```sql
SELECT
managedBy,
properties,
systemData
FROM azure.automanage.configuration_profile_assignments
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

Get list of configuration profile assignments under a given subscription

```sql
SELECT
managedBy,
properties,
systemData
FROM azure.automanage.configuration_profile_assignments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Creates an association between a VM and Automanage configuration profile

```sql
INSERT INTO azure.automanage.configuration_profile_assignments (
data__properties,
configurationProfileAssignmentName,
subscriptionId,
resourceGroupName,
vmName
)
SELECT 
'{{ properties }}',
'{{ configurationProfileAssignmentName }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ vmName }}'
RETURNING
managedBy,
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: configuration_profile_assignments
  props:
    - name: configurationProfileAssignmentName
      value: string
      description: Required parameter for the configuration_profile_assignments resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the configuration_profile_assignments resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the configuration_profile_assignments resource.
    - name: vmName
      value: string
      description: Required parameter for the configuration_profile_assignments resource.
    - name: properties
      value: object
      description: |
        Properties of the configuration profile assignment.
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

Delete a configuration profile assignment

```sql
DELETE FROM azure.automanage.configuration_profile_assignments
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND configurationProfileAssignmentName = '{{ configurationProfileAssignmentName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND vmName = '{{ vmName }}' --required
;
```
</TabItem>
</Tabs>
