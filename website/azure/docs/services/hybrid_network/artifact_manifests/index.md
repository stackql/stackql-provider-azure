--- 
title: artifact_manifests
hide_title: false
hide_table_of_contents: false
keywords:
  - artifact_manifests
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

Creates, updates, deletes, gets or lists an <code>artifact_manifests</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>artifact_manifests</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_network.artifact_manifests" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_artifact_store', value: 'list_by_artifact_store' }
    ]}
>
<TabItem value="get">

Request is successful. The operation returns the resulting ArtifactManifest resource.

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
    <td>Artifact manifest properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_artifact_store">

Request is successful. The operation returns the resulting ArtifactManifest resource.

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
    <td>Artifact manifest properties.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-artifactStoreName"><code>artifactStoreName</code></a>, <a href="#parameter-artifactManifestName"><code>artifactManifestName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets information about a artifact manifest resource.</td>
</tr>
<tr>
    <td><a href="#list_by_artifact_store"><CopyableCode code="list_by_artifact_store" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-artifactStoreName"><code>artifactStoreName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets information about the artifact manifest.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-artifactStoreName"><code>artifactStoreName</code></a>, <a href="#parameter-artifactManifestName"><code>artifactManifestName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates a artifact manifest.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-artifactStoreName"><code>artifactStoreName</code></a>, <a href="#parameter-artifactManifestName"><code>artifactManifestName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates a artifact manifest resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-artifactStoreName"><code>artifactStoreName</code></a>, <a href="#parameter-artifactManifestName"><code>artifactManifestName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified artifact manifest.</td>
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
<tr id="parameter-artifactManifestName">
    <td><CopyableCode code="artifactManifestName" /></td>
    <td><code>string</code></td>
    <td>The name of the artifact manifest.</td>
</tr>
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
        { label: 'list_by_artifact_store', value: 'list_by_artifact_store' }
    ]}
>
<TabItem value="get">

Gets information about a artifact manifest resource.

```sql
SELECT
location,
properties,
tags
FROM azure.hybrid_network.artifact_manifests
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND publisherName = '{{ publisherName }}' -- required
AND artifactStoreName = '{{ artifactStoreName }}' -- required
AND artifactManifestName = '{{ artifactManifestName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_artifact_store">

Gets information about the artifact manifest.

```sql
SELECT
location,
properties,
tags
FROM azure.hybrid_network.artifact_manifests
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND publisherName = '{{ publisherName }}' -- required
AND artifactStoreName = '{{ artifactStoreName }}' -- required
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

Creates or updates a artifact manifest.

```sql
INSERT INTO azure.hybrid_network.artifact_manifests (
data__tags,
data__location,
data__properties,
resourceGroupName,
publisherName,
artifactStoreName,
artifactManifestName,
subscriptionId
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ publisherName }}',
'{{ artifactStoreName }}',
'{{ artifactManifestName }}',
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
- name: artifact_manifests
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the artifact_manifests resource.
    - name: publisherName
      value: string
      description: Required parameter for the artifact_manifests resource.
    - name: artifactStoreName
      value: string
      description: Required parameter for the artifact_manifests resource.
    - name: artifactManifestName
      value: string
      description: Required parameter for the artifact_manifests resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the artifact_manifests resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
    - name: properties
      value: object
      description: |
        Artifact manifest properties.
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

Updates a artifact manifest resource.

```sql
UPDATE azure.hybrid_network.artifact_manifests
SET 
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND publisherName = '{{ publisherName }}' --required
AND artifactStoreName = '{{ artifactStoreName }}' --required
AND artifactManifestName = '{{ artifactManifestName }}' --required
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

Deletes the specified artifact manifest.

```sql
DELETE FROM azure.hybrid_network.artifact_manifests
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND publisherName = '{{ publisherName }}' --required
AND artifactStoreName = '{{ artifactStoreName }}' --required
AND artifactManifestName = '{{ artifactManifestName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
