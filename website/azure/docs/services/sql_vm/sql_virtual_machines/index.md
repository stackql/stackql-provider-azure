--- 
title: sql_virtual_machines
hide_title: false
hide_table_of_contents: false
keywords:
  - sql_virtual_machines
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

Creates, updates, deletes, gets or lists a <code>sql_virtual_machines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>sql_virtual_machines</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql_vm.sql_virtual_machines" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_sql_vm_group"
    values={[
        { label: 'list_by_sql_vm_group', value: 'list_by_sql_vm_group' },
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list_by_sql_vm_group">

Successfully retrieved the list of sql virtual machines in a SQL virtual machine group.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>DO NOT USE. This value will be deprecated. Azure Active Directory identity of the server.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get">

Successfully retrieved the SQL virtual machine.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>DO NOT USE. This value will be deprecated. Azure Active Directory identity of the server.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

Successfully retrieved all SQL virtual machines in the resource group.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>DO NOT USE. This value will be deprecated. Azure Active Directory identity of the server.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Successfully retrieved all SQL virtual machines in the subscription.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>DO NOT USE. This value will be deprecated. Azure Active Directory identity of the server.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#list_by_sql_vm_group"><CopyableCode code="list_by_sql_vm_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlVirtualMachineGroupName"><code>sqlVirtualMachineGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the list of sql virtual machines in a SQL virtual machine group.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlVirtualMachineName"><code>sqlVirtualMachineName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Gets a SQL virtual machine.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all SQL virtual machines in a resource group.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all SQL virtual machines in a subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlVirtualMachineName"><code>sqlVirtualMachineName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__location"><code>data__location</code></a></td>
    <td></td>
    <td>Creates or updates a SQL virtual machine.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlVirtualMachineName"><code>sqlVirtualMachineName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates SQL virtual machine tags.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlVirtualMachineName"><code>sqlVirtualMachineName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes a SQL virtual machine.</td>
</tr>
<tr>
    <td><a href="#start_assessment"><CopyableCode code="start_assessment" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlVirtualMachineName"><code>sqlVirtualMachineName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Starts SQL best practices Assessment on SQL virtual machine.</td>
</tr>
<tr>
    <td><a href="#fetch_dc_assessment"><CopyableCode code="fetch_dc_assessment" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlVirtualMachineName"><code>sqlVirtualMachineName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Starts SQL best practices Assessment with Disk Config rules on SQL virtual machine</td>
</tr>
<tr>
    <td><a href="#redeploy"><CopyableCode code="redeploy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlVirtualMachineName"><code>sqlVirtualMachineName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Uninstalls and reinstalls the SQL IaaS Extension.</td>
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
<tr id="parameter-sqlVirtualMachineGroupName">
    <td><CopyableCode code="sqlVirtualMachineGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the SQL virtual machine group.</td>
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
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>The child resources to include in the response.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_sql_vm_group"
    values={[
        { label: 'list_by_sql_vm_group', value: 'list_by_sql_vm_group' },
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list_by_sql_vm_group">

Gets the list of sql virtual machines in a SQL virtual machine group.

```sql
SELECT
identity,
location,
properties,
systemData,
tags
FROM azure.sql_vm.sql_virtual_machines
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND sqlVirtualMachineGroupName = '{{ sqlVirtualMachineGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get">

Gets a SQL virtual machine.

```sql
SELECT
identity,
location,
properties,
systemData,
tags
FROM azure.sql_vm.sql_virtual_machines
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND sqlVirtualMachineName = '{{ sqlVirtualMachineName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Gets all SQL virtual machines in a resource group.

```sql
SELECT
identity,
location,
properties,
systemData,
tags
FROM azure.sql_vm.sql_virtual_machines
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets all SQL virtual machines in a subscription.

```sql
SELECT
identity,
location,
properties,
systemData,
tags
FROM azure.sql_vm.sql_virtual_machines
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

Creates or updates a SQL virtual machine.

```sql
INSERT INTO azure.sql_vm.sql_virtual_machines (
data__tags,
data__location,
data__identity,
data__properties,
resourceGroupName,
sqlVirtualMachineName,
subscriptionId
)
SELECT 
'{{ tags }}',
'{{ location }}' /* required */,
'{{ identity }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ sqlVirtualMachineName }}',
'{{ subscriptionId }}'
RETURNING
identity,
location,
properties,
systemData,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: sql_virtual_machines
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the sql_virtual_machines resource.
    - name: sqlVirtualMachineName
      value: string
      description: Required parameter for the sql_virtual_machines resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the sql_virtual_machines resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
    - name: identity
      value: object
      description: |
        DO NOT USE. This value will be deprecated. Azure Active Directory identity of the server.
    - name: properties
      value: object
      description: |
        Resource properties.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Updates SQL virtual machine tags.

```sql
UPDATE azure.sql_vm.sql_virtual_machines
SET 
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND sqlVirtualMachineName = '{{ sqlVirtualMachineName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
identity,
location,
properties,
systemData,
tags;
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

Deletes a SQL virtual machine.

```sql
DELETE FROM azure.sql_vm.sql_virtual_machines
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND sqlVirtualMachineName = '{{ sqlVirtualMachineName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="start_assessment"
    values={[
        { label: 'start_assessment', value: 'start_assessment' },
        { label: 'fetch_dc_assessment', value: 'fetch_dc_assessment' },
        { label: 'redeploy', value: 'redeploy' }
    ]}
>
<TabItem value="start_assessment">

Starts SQL best practices Assessment on SQL virtual machine.

```sql
EXEC azure.sql_vm.sql_virtual_machines.start_assessment 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@sqlVirtualMachineName='{{ sqlVirtualMachineName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="fetch_dc_assessment">

Starts SQL best practices Assessment with Disk Config rules on SQL virtual machine

```sql
EXEC azure.sql_vm.sql_virtual_machines.fetch_dc_assessment 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@sqlVirtualMachineName='{{ sqlVirtualMachineName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"runDiskConfigRules": {{ runDiskConfigRules }}
}'
;
```
</TabItem>
<TabItem value="redeploy">

Uninstalls and reinstalls the SQL IaaS Extension.

```sql
EXEC azure.sql_vm.sql_virtual_machines.redeploy 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@sqlVirtualMachineName='{{ sqlVirtualMachineName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
