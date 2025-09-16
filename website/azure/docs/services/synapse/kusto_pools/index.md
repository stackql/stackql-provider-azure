--- 
title: kusto_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - kusto_pools
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

Creates, updates, deletes, gets or lists a <code>kusto_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>kusto_pools</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.kusto_pools" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_workspace', value: 'list_by_workspace' }
    ]}
>
<TabItem value="get">

The Kusto pool.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The kusto pool properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The SKU of the kusto pool.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_workspace">

List of Kusto pools under the Workspace.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The kusto pool properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The SKU of the kusto pool.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Gets a Kusto pool.</td>
</tr>
<tr>
    <td><a href="#list_by_workspace"><CopyableCode code="list_by_workspace" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a></td>
    <td></td>
    <td>List all Kusto pools</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__sku"><code>data__sku</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-If-None-Match"><code>If-None-Match</code></a></td>
    <td>Create or update a Kusto pool.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Update a Kusto Kusto Pool.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes a Kusto pool.</td>
</tr>
<tr>
    <td><a href="#check_name_availability"><CopyableCode code="check_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Checks that the kusto pool name is valid and is not already in use.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Stops a Kusto pool.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Starts a Kusto pool.</td>
</tr>
<tr>
    <td><a href="#add_language_extensions"><CopyableCode code="add_language_extensions" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Add a list of language extensions that can run within KQL queries.</td>
</tr>
<tr>
    <td><a href="#remove_language_extensions"><CopyableCode code="remove_language_extensions" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Remove a list of language extensions that can run within KQL queries.</td>
</tr>
<tr>
    <td><a href="#detach_follower_databases"><CopyableCode code="detach_follower_databases" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterResourceId"><code>clusterResourceId</code></a>, <a href="#parameter-attachedDatabaseConfigurationName"><code>attachedDatabaseConfigurationName</code></a></td>
    <td></td>
    <td>Detaches all followers of a database owned by this Kusto Pool.</td>
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
<tr id="parameter-kustoPoolName">
    <td><CopyableCode code="kustoPoolName" /></td>
    <td><code>string</code></td>
    <td>The name of the Kusto pool.</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The name of Azure region.</td>
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
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>The ETag of the Kusto Pool. Omit this value to always overwrite the current Kusto Pool. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes.</td>
</tr>
<tr id="parameter-If-None-Match">
    <td><CopyableCode code="If-None-Match" /></td>
    <td><code>string</code></td>
    <td>Set to '*' to allow a new Kusto Pool to be created, but to prevent updating an existing Kusto Pool. Other values will result in a 412 Pre-condition Failed response.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_workspace', value: 'list_by_workspace' }
    ]}
>
<TabItem value="get">

Gets a Kusto pool.

```sql
SELECT
etag,
location,
properties,
sku,
systemData,
tags
FROM azure.synapse.kusto_pools
WHERE workspaceName = '{{ workspaceName }}' -- required
AND kustoPoolName = '{{ kustoPoolName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_workspace">

List all Kusto pools

```sql
SELECT
etag,
location,
properties,
sku,
systemData,
tags
FROM azure.synapse.kusto_pools
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
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

Create or update a Kusto pool.

```sql
INSERT INTO azure.synapse.kusto_pools (
data__sku,
data__properties,
data__tags,
data__location,
workspaceName,
resourceGroupName,
kustoPoolName,
subscriptionId,
If-Match,
If-None-Match
)
SELECT 
'{{ sku }}' /* required */,
'{{ properties }}',
'{{ tags }}',
'{{ location }}',
'{{ workspaceName }}',
'{{ resourceGroupName }}',
'{{ kustoPoolName }}',
'{{ subscriptionId }}',
'{{ If-Match }}',
'{{ If-None-Match }}'
RETURNING
etag,
location,
properties,
sku,
systemData,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: kusto_pools
  props:
    - name: workspaceName
      value: string
      description: Required parameter for the kusto_pools resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the kusto_pools resource.
    - name: kustoPoolName
      value: string
      description: Required parameter for the kusto_pools resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the kusto_pools resource.
    - name: sku
      value: object
      description: |
        The SKU of the kusto pool.
    - name: properties
      value: object
      description: |
        The kusto pool properties.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
    - name: If-Match
      value: string
      description: The ETag of the Kusto Pool. Omit this value to always overwrite the current Kusto Pool. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes.
    - name: If-None-Match
      value: string
      description: Set to '*' to allow a new Kusto Pool to be created, but to prevent updating an existing Kusto Pool. Other values will result in a 412 Pre-condition Failed response.
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

Update a Kusto Kusto Pool.

```sql
UPDATE azure.synapse.kusto_pools
SET 
data__tags = '{{ tags }}',
data__sku = '{{ sku }}',
data__properties = '{{ properties }}'
WHERE 
workspaceName = '{{ workspaceName }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND kustoPoolName = '{{ kustoPoolName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND If-Match = '{{ If-Match}}'
RETURNING
etag,
location,
properties,
sku,
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

Deletes a Kusto pool.

```sql
DELETE FROM azure.synapse.kusto_pools
WHERE workspaceName = '{{ workspaceName }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND kustoPoolName = '{{ kustoPoolName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="check_name_availability"
    values={[
        { label: 'check_name_availability', value: 'check_name_availability' },
        { label: 'stop', value: 'stop' },
        { label: 'start', value: 'start' },
        { label: 'add_language_extensions', value: 'add_language_extensions' },
        { label: 'remove_language_extensions', value: 'remove_language_extensions' },
        { label: 'detach_follower_databases', value: 'detach_follower_databases' }
    ]}
>
<TabItem value="check_name_availability">

Checks that the kusto pool name is valid and is not already in use.

```sql
EXEC azure.synapse.kusto_pools.check_name_availability 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
<TabItem value="stop">

Stops a Kusto pool.

```sql
EXEC azure.synapse.kusto_pools.stop 
@workspaceName='{{ workspaceName }}' --required, 
@kustoPoolName='{{ kustoPoolName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required
;
```
</TabItem>
<TabItem value="start">

Starts a Kusto pool.

```sql
EXEC azure.synapse.kusto_pools.start 
@workspaceName='{{ workspaceName }}' --required, 
@kustoPoolName='{{ kustoPoolName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required
;
```
</TabItem>
<TabItem value="add_language_extensions">

Add a list of language extensions that can run within KQL queries.

```sql
EXEC azure.synapse.kusto_pools.add_language_extensions 
@workspaceName='{{ workspaceName }}' --required, 
@kustoPoolName='{{ kustoPoolName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required 
@@json=
'{
"value": "{{ value }}"
}'
;
```
</TabItem>
<TabItem value="remove_language_extensions">

Remove a list of language extensions that can run within KQL queries.

```sql
EXEC azure.synapse.kusto_pools.remove_language_extensions 
@workspaceName='{{ workspaceName }}' --required, 
@kustoPoolName='{{ kustoPoolName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required 
@@json=
'{
"value": "{{ value }}"
}'
;
```
</TabItem>
<TabItem value="detach_follower_databases">

Detaches all followers of a database owned by this Kusto Pool.

```sql
EXEC azure.synapse.kusto_pools.detach_follower_databases 
@workspaceName='{{ workspaceName }}' --required, 
@kustoPoolName='{{ kustoPoolName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required 
@@json=
'{
"clusterResourceId": "{{ clusterResourceId }}", 
"attachedDatabaseConfigurationName": "{{ attachedDatabaseConfigurationName }}"
}'
;
```
</TabItem>
</Tabs>
