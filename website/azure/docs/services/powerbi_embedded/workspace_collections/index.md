--- 
title: workspace_collections
hide_title: false
hide_table_of_contents: false
keywords:
  - workspace_collections
  - powerbi_embedded
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

Creates, updates, deletes, gets or lists a <code>workspace_collections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>workspace_collections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.powerbi_embedded.workspace_collections" /></td></tr>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceCollectionName"><code>workspaceCollectionName</code></a></td>
    <td></td>
    <td>Creates a new Power BI Workspace Collection with the specified properties. A Power BI Workspace Collection contains one or more workspaces, and can be used to provision keys that provide API access to those workspaces.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceCollectionName"><code>workspaceCollectionName</code></a></td>
    <td></td>
    <td>Update an existing Power BI Workspace Collection with the specified properties.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceCollectionName"><code>workspaceCollectionName</code></a></td>
    <td></td>
    <td>Delete a Power BI Workspace Collection.</td>
</tr>
<tr>
    <td><a href="#check_name_availability"><CopyableCode code="check_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td></td>
    <td>Verify the specified Power BI Workspace Collection name is valid and not already in use.</td>
</tr>
<tr>
    <td><a href="#regenerate_key"><CopyableCode code="regenerate_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceCollectionName"><code>workspaceCollectionName</code></a></td>
    <td></td>
    <td>Regenerates the primary or secondary access key for the specified Power BI Workspace Collection.</td>
</tr>
<tr>
    <td><a href="#migrate"><CopyableCode code="migrate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Migrates an existing Power BI Workspace Collection to a different resource group and/or subscription.</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Azure location</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Azure resource group</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Gets subscription credentials which uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-workspaceCollectionName">
    <td><CopyableCode code="workspaceCollectionName" /></td>
    <td><code>string</code></td>
    <td>Power BI Embedded Workspace Collection name</td>
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

Creates a new Power BI Workspace Collection with the specified properties. A Power BI Workspace Collection contains one or more workspaces, and can be used to provision keys that provide API access to those workspaces.

```sql
INSERT INTO azure.powerbi_embedded.workspace_collections (
data__location,
data__tags,
data__sku,
subscriptionId,
resourceGroupName,
workspaceCollectionName
)
SELECT 
'{{ location }}',
'{{ tags }}',
'{{ sku }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ workspaceCollectionName }}'
RETURNING
id,
name,
location,
properties,
sku,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: workspace_collections
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the workspace_collections resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the workspace_collections resource.
    - name: workspaceCollectionName
      value: string
      description: Required parameter for the workspace_collections resource.
    - name: location
      value: string
      description: |
        Azure location
    - name: tags
      value: object
    - name: sku
      value: object
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

Update an existing Power BI Workspace Collection with the specified properties.

```sql
UPDATE azure.powerbi_embedded.workspace_collections
SET 
data__tags = '{{ tags }}',
data__sku = '{{ sku }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND workspaceCollectionName = '{{ workspaceCollectionName }}' --required
RETURNING
id,
name,
location,
properties,
sku,
tags,
type;
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

Delete a Power BI Workspace Collection.

```sql
DELETE FROM azure.powerbi_embedded.workspace_collections
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND workspaceCollectionName = '{{ workspaceCollectionName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="check_name_availability"
    values={[
        { label: 'check_name_availability', value: 'check_name_availability' },
        { label: 'regenerate_key', value: 'regenerate_key' },
        { label: 'migrate', value: 'migrate' }
    ]}
>
<TabItem value="check_name_availability">

Verify the specified Power BI Workspace Collection name is valid and not already in use.

```sql
EXEC azure.powerbi_embedded.workspace_collections.check_name_availability 
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
<TabItem value="regenerate_key">

Regenerates the primary or secondary access key for the specified Power BI Workspace Collection.

```sql
EXEC azure.powerbi_embedded.workspace_collections.regenerate_key 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@workspaceCollectionName='{{ workspaceCollectionName }}' --required 
@@json=
'{
"keyName": "{{ keyName }}"
}'
;
```
</TabItem>
<TabItem value="migrate">

Migrates an existing Power BI Workspace Collection to a different resource group and/or subscription.

```sql
EXEC azure.powerbi_embedded.workspace_collections.migrate 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required 
@@json=
'{
"targetResourceGroup": "{{ targetResourceGroup }}", 
"resources": "{{ resources }}"
}'
;
```
</TabItem>
</Tabs>
