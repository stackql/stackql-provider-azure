--- 
title: encryption_sets
hide_title: false
hide_table_of_contents: false
keywords:
  - encryption_sets
  - dev_center
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

Creates, updates, deletes, gets or lists an <code>encryption_sets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>encryption_sets</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.encryption_sets" /></td></tr>
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

OK. The request has succeeded.

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
    <td>Managed identity properties</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of a devcenter encryption set.</td>
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

OK. The request has succeeded.

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
    <td>Managed identity properties</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of a devcenter encryption set.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-devCenterName"><code>devCenterName</code></a>, <a href="#parameter-encryptionSetName"><code>encryptionSetName</code></a></td>
    <td></td>
    <td>Gets a devcenter encryption set.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-devCenterName"><code>devCenterName</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a></td>
    <td>Lists all encryption sets in the devcenter.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-devCenterName"><code>devCenterName</code></a>, <a href="#parameter-encryptionSetName"><code>encryptionSetName</code></a></td>
    <td></td>
    <td>Creates or updates a devcenter encryption set resource</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-devCenterName"><code>devCenterName</code></a>, <a href="#parameter-encryptionSetName"><code>encryptionSetName</code></a></td>
    <td></td>
    <td>Partially updates a devcenter encryption set.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-devCenterName"><code>devCenterName</code></a>, <a href="#parameter-encryptionSetName"><code>encryptionSetName</code></a></td>
    <td></td>
    <td>Deletes a devcenter encryption set</td>
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
<tr id="parameter-devCenterName">
    <td><CopyableCode code="devCenterName" /></td>
    <td><code>string</code></td>
    <td>The name of the devcenter.</td>
</tr>
<tr id="parameter-encryptionSetName">
    <td><CopyableCode code="encryptionSetName" /></td>
    <td><code>string</code></td>
    <td>The name of the devcenter encryption set.</td>
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
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of resources to return from the operation. Example: '$top=10'.</td>
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

Gets a devcenter encryption set.

```sql
SELECT
identity,
location,
properties,
tags
FROM azure.dev_center.encryption_sets
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND devCenterName = '{{ devCenterName }}' -- required
AND encryptionSetName = '{{ encryptionSetName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all encryption sets in the devcenter.

```sql
SELECT
identity,
location,
properties,
tags
FROM azure.dev_center.encryption_sets
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND devCenterName = '{{ devCenterName }}' -- required
AND $top = '{{ $top }}'
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

Creates or updates a devcenter encryption set resource

```sql
INSERT INTO azure.dev_center.encryption_sets (
data__tags,
data__location,
data__properties,
data__identity,
subscriptionId,
resourceGroupName,
devCenterName,
encryptionSetName
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ properties }}',
'{{ identity }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ devCenterName }}',
'{{ encryptionSetName }}'
RETURNING
identity,
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: encryption_sets
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the encryption_sets resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the encryption_sets resource.
    - name: devCenterName
      value: string
      description: Required parameter for the encryption_sets resource.
    - name: encryptionSetName
      value: string
      description: Required parameter for the encryption_sets resource.
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
        Properties of a devcenter encryption set.
    - name: identity
      value: object
      description: |
        Managed identity properties
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

Partially updates a devcenter encryption set.

```sql
UPDATE azure.dev_center.encryption_sets
SET 
data__tags = '{{ tags }}',
data__location = '{{ location }}',
data__properties = '{{ properties }}',
data__identity = '{{ identity }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND devCenterName = '{{ devCenterName }}' --required
AND encryptionSetName = '{{ encryptionSetName }}' --required
RETURNING
identity,
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

Deletes a devcenter encryption set

```sql
DELETE FROM azure.dev_center.encryption_sets
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND devCenterName = '{{ devCenterName }}' --required
AND encryptionSetName = '{{ encryptionSetName }}' --required
;
```
</TabItem>
</Tabs>
