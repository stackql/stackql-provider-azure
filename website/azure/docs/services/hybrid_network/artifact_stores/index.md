--- 
title: artifact_stores
hide_title: false
hide_table_of_contents: false
keywords:
  - artifact_stores
  - hybrid_network
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

Creates, updates, deletes, gets or lists an <code>artifact_stores</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>artifact_stores</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_network.artifact_stores" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_publisher', value: 'list_by_publisher' }
    ]}
>
<TabItem value="get">

Request is successful. The operation returns the resulting ArtifactStore resource.

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
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>ArtifactStores properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_publisher">

Request is successful. The operation returns the resulting ArtifactStoreVersion resource.

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
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>ArtifactStores properties.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-artifactStoreName"><code>artifactStoreName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets information about the specified artifact store.</td>
</tr>
<tr>
    <td><a href="#list_by_publisher"><CopyableCode code="list_by_publisher" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets information of the ArtifactStores under publisher.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-artifactStoreName"><code>artifactStoreName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates a artifact store.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-artifactStoreName"><code>artifactStoreName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Update artifact store resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-artifactStoreName"><code>artifactStoreName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified artifact store.</td>
</tr>
<tr>
    <td><a href="#add_network_fabric_controller_end_points"><CopyableCode code="add_network_fabric_controller_end_points" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-artifactStoreName"><code>artifactStoreName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Add network fabric controllers to artifact stores</td>
</tr>
<tr>
    <td><a href="#approve_private_end_points"><CopyableCode code="approve_private_end_points" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-artifactStoreName"><code>artifactStoreName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Approve manual private endpoints on artifact stores</td>
</tr>
<tr>
    <td><a href="#remove_private_end_points"><CopyableCode code="remove_private_end_points" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-artifactStoreName"><code>artifactStoreName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Remove manual private endpoints on artifact stores</td>
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
<tr id="parameter-artifactStoreName">
    <td><CopyableCode code="artifactStoreName" /></td>
    <td><code>string</code></td>
    <td>The name of the artifact store.</td>
</tr>
<tr id="parameter-publisherName">
    <td><CopyableCode code="publisherName" /></td>
    <td><code>string</code></td>
    <td>The name of the publisher.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_publisher', value: 'list_by_publisher' }
    ]}
>
<TabItem value="get">

Gets information about the specified artifact store.

```sql
SELECT
location,
properties,
tags
FROM azure.hybrid_network.artifact_stores
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND publisherName = '{{ publisherName }}' -- required
AND artifactStoreName = '{{ artifactStoreName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_publisher">

Gets information of the ArtifactStores under publisher.

```sql
SELECT
location,
properties,
tags
FROM azure.hybrid_network.artifact_stores
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND publisherName = '{{ publisherName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Creates or updates a artifact store.

```sql
INSERT INTO azure.hybrid_network.artifact_stores (
data__properties,
data__tags,
data__location,
resourceGroupName,
publisherName,
artifactStoreName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ tags }}',
'{{ location }}',
'{{ resourceGroupName }}',
'{{ publisherName }}',
'{{ artifactStoreName }}',
'{{ subscriptionId }}'
RETURNING
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: artifact_stores
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the artifact_stores resource.
    - name: publisherName
      value: string
      description: Required parameter for the artifact_stores resource.
    - name: artifactStoreName
      value: string
      description: Required parameter for the artifact_stores resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the artifact_stores resource.
    - name: properties
      value: object
      description: |
        ArtifactStores properties.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
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

Update artifact store resource.

```sql
UPDATE azure.hybrid_network.artifact_stores
SET 
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND publisherName = '{{ publisherName }}' --required
AND artifactStoreName = '{{ artifactStoreName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
location,
properties,
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

Deletes the specified artifact store.

```sql
DELETE FROM azure.hybrid_network.artifact_stores
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND publisherName = '{{ publisherName }}' --required
AND artifactStoreName = '{{ artifactStoreName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="add_network_fabric_controller_end_points"
    values={[
        { label: 'add_network_fabric_controller_end_points', value: 'add_network_fabric_controller_end_points' },
        { label: 'approve_private_end_points', value: 'approve_private_end_points' },
        { label: 'remove_private_end_points', value: 'remove_private_end_points' }
    ]}
>
<TabItem value="add_network_fabric_controller_end_points">

Add network fabric controllers to artifact stores

```sql
EXEC azure.hybrid_network.artifact_stores.add_network_fabric_controller_end_points 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@publisherName='{{ publisherName }}' --required, 
@artifactStoreName='{{ artifactStoreName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"networkFabricControllerIds": "{{ networkFabricControllerIds }}"
}'
;
```
</TabItem>
<TabItem value="approve_private_end_points">

Approve manual private endpoints on artifact stores

```sql
EXEC azure.hybrid_network.artifact_stores.approve_private_end_points 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@publisherName='{{ publisherName }}' --required, 
@artifactStoreName='{{ artifactStoreName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"manualPrivateEndPointConnections": "{{ manualPrivateEndPointConnections }}"
}'
;
```
</TabItem>
<TabItem value="remove_private_end_points">

Remove manual private endpoints on artifact stores

```sql
EXEC azure.hybrid_network.artifact_stores.remove_private_end_points 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@publisherName='{{ publisherName }}' --required, 
@artifactStoreName='{{ artifactStoreName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"manualPrivateEndPointConnections": "{{ manualPrivateEndPointConnections }}"
}'
;
```
</TabItem>
</Tabs>
