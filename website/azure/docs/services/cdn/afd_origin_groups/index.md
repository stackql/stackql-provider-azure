--- 
title: afd_origin_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - afd_origin_groups
  - cdn
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

Creates, updates, deletes, gets or lists an <code>afd_origin_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>afd_origin_groups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cdn.afd_origin_groups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_profile', value: 'list_by_profile' }
    ]}
>
<TabItem value="get">

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
    <td>The JSON object that contains the properties of the origin group.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_profile">

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
    <td>The JSON object that contains the properties of the origin group.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-originGroupName"><code>originGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets an existing origin group within a profile.</td>
</tr>
<tr>
    <td><a href="#list_by_profile"><CopyableCode code="list_by_profile" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all of the existing origin groups within a profile.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-originGroupName"><code>originGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates a new origin group within the specified profile.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-originGroupName"><code>originGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates an existing origin group within a profile.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-originGroupName"><code>originGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes an existing origin group within a profile.</td>
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
<tr id="parameter-originGroupName">
    <td><CopyableCode code="originGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the origin group which is unique within the profile.</td>
</tr>
<tr id="parameter-profileName">
    <td><CopyableCode code="profileName" /></td>
    <td><code>string</code></td>
    <td>Name of the Azure Front Door Standard or Azure Front Door Premium profile which is unique within the resource group.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the Resource group within the Azure subscription.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure Subscription ID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_profile', value: 'list_by_profile' }
    ]}
>
<TabItem value="get">

Gets an existing origin group within a profile.

```sql
SELECT
properties
FROM azure.cdn.afd_origin_groups
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND profileName = '{{ profileName }}' -- required
AND originGroupName = '{{ originGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_profile">

Lists all of the existing origin groups within a profile.

```sql
SELECT
properties
FROM azure.cdn.afd_origin_groups
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND profileName = '{{ profileName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Creates a new origin group within the specified profile.

```sql
INSERT INTO azure.cdn.afd_origin_groups (
data__properties,
resourceGroupName,
profileName,
originGroupName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ profileName }}',
'{{ originGroupName }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: afd_origin_groups
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the afd_origin_groups resource.
    - name: profileName
      value: string
      description: Required parameter for the afd_origin_groups resource.
    - name: originGroupName
      value: string
      description: Required parameter for the afd_origin_groups resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the afd_origin_groups resource.
    - name: properties
      value: object
      description: |
        The JSON object that contains the properties of the origin group.
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

Updates an existing origin group within a profile.

```sql
UPDATE azure.cdn.afd_origin_groups
SET 
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND profileName = '{{ profileName }}' --required
AND originGroupName = '{{ originGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
properties;
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

Deletes an existing origin group within a profile.

```sql
DELETE FROM azure.cdn.afd_origin_groups
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND profileName = '{{ profileName }}' --required
AND originGroupName = '{{ originGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
