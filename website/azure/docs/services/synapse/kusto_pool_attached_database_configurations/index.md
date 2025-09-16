--- 
title: kusto_pool_attached_database_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - kusto_pool_attached_database_configurations
  - synapse
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

Creates, updates, deletes, gets or lists a <code>kusto_pool_attached_database_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>kusto_pool_attached_database_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.kusto_pool_attached_database_configurations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_kusto_pool', value: 'list_by_kusto_pool' }
    ]}
>
<TabItem value="get">

Successfully retrieved the specified attached database configuration.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the attached database configuration.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_kusto_pool">

Successfully retrieved the list of attached database configurations.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the attached database configuration.</td>
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
    <td><a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-attachedDatabaseConfigurationName"><code>attachedDatabaseConfigurationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Returns an attached database configuration.</td>
</tr>
<tr>
    <td><a href="#list_by_kusto_pool"><CopyableCode code="list_by_kusto_pool" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Returns the list of attached database configurations of the given Kusto Pool.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-attachedDatabaseConfigurationName"><code>attachedDatabaseConfigurationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Creates or updates an attached database configuration.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-attachedDatabaseConfigurationName"><code>attachedDatabaseConfigurationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Deletes the attached database configuration with the given name.</td>
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
<tr id="parameter-attachedDatabaseConfigurationName">
    <td><CopyableCode code="attachedDatabaseConfigurationName" /></td>
    <td><code>string</code></td>
    <td>The name of the attached database configuration.</td>
</tr>
<tr id="parameter-kustoPoolName">
    <td><CopyableCode code="kustoPoolName" /></td>
    <td><code>string</code></td>
    <td>The name of the Kusto pool.</td>
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
<tr id="parameter-workspaceName">
    <td><CopyableCode code="workspaceName" /></td>
    <td><code>string</code></td>
    <td>The name of the workspace.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_kusto_pool', value: 'list_by_kusto_pool' }
    ]}
>
<TabItem value="get">

Returns an attached database configuration.

```sql
SELECT
location,
properties,
systemData
FROM azure.synapse.kusto_pool_attached_database_configurations
WHERE workspaceName = '{{ workspaceName }}' -- required
AND kustoPoolName = '{{ kustoPoolName }}' -- required
AND attachedDatabaseConfigurationName = '{{ attachedDatabaseConfigurationName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_kusto_pool">

Returns the list of attached database configurations of the given Kusto Pool.

```sql
SELECT
location,
properties,
systemData
FROM azure.synapse.kusto_pool_attached_database_configurations
WHERE workspaceName = '{{ workspaceName }}' -- required
AND kustoPoolName = '{{ kustoPoolName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
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

Creates or updates an attached database configuration.

```sql
INSERT INTO azure.synapse.kusto_pool_attached_database_configurations (
data__location,
data__properties,
workspaceName,
kustoPoolName,
attachedDatabaseConfigurationName,
subscriptionId,
resourceGroupName
)
SELECT 
'{{ location }}',
'{{ properties }}',
'{{ workspaceName }}',
'{{ kustoPoolName }}',
'{{ attachedDatabaseConfigurationName }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}'
RETURNING
location,
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: kusto_pool_attached_database_configurations
  props:
    - name: workspaceName
      value: string
      description: Required parameter for the kusto_pool_attached_database_configurations resource.
    - name: kustoPoolName
      value: string
      description: Required parameter for the kusto_pool_attached_database_configurations resource.
    - name: attachedDatabaseConfigurationName
      value: string
      description: Required parameter for the kusto_pool_attached_database_configurations resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the kusto_pool_attached_database_configurations resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the kusto_pool_attached_database_configurations resource.
    - name: location
      value: string
      description: |
        Resource location.
    - name: properties
      value: object
      description: |
        The properties of the attached database configuration.
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

Deletes the attached database configuration with the given name.

```sql
DELETE FROM azure.synapse.kusto_pool_attached_database_configurations
WHERE workspaceName = '{{ workspaceName }}' --required
AND kustoPoolName = '{{ kustoPoolName }}' --required
AND attachedDatabaseConfigurationName = '{{ attachedDatabaseConfigurationName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
;
```
</TabItem>
</Tabs>
