--- 
title: shared_private_link_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - shared_private_link_resources
  - db_watcher
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

Creates, updates, deletes, gets or lists a <code>shared_private_link_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>shared_private_link_resources</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.db_watcher.shared_private_link_resources" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_watcher', value: 'list_by_watcher' }
    ]}
>
<TabItem value="get">

Azure operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_watcher">

Azure operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-watcherName"><code>watcherName</code></a>, <a href="#parameter-sharedPrivateLinkResourceName"><code>sharedPrivateLinkResourceName</code></a></td>
    <td></td>
    <td>Get a SharedPrivateLinkResource</td>
</tr>
<tr>
    <td><a href="#list_by_watcher"><CopyableCode code="list_by_watcher" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-watcherName"><code>watcherName</code></a></td>
    <td></td>
    <td>List SharedPrivateLinkResource resources by Watcher</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-watcherName"><code>watcherName</code></a>, <a href="#parameter-sharedPrivateLinkResourceName"><code>sharedPrivateLinkResourceName</code></a></td>
    <td></td>
    <td>Create a SharedPrivateLinkResource</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-watcherName"><code>watcherName</code></a>, <a href="#parameter-sharedPrivateLinkResourceName"><code>sharedPrivateLinkResourceName</code></a></td>
    <td></td>
    <td>Delete a SharedPrivateLinkResource</td>
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
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-sharedPrivateLinkResourceName">
    <td><CopyableCode code="sharedPrivateLinkResourceName" /></td>
    <td><code>string</code></td>
    <td>The Shared Private Link resource name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-watcherName">
    <td><CopyableCode code="watcherName" /></td>
    <td><code>string</code></td>
    <td>The database watcher name.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_watcher', value: 'list_by_watcher' }
    ]}
>
<TabItem value="get">

Get a SharedPrivateLinkResource

```sql
SELECT
properties
FROM azure.db_watcher.shared_private_link_resources
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND watcherName = '{{ watcherName }}' -- required
AND sharedPrivateLinkResourceName = '{{ sharedPrivateLinkResourceName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_watcher">

List SharedPrivateLinkResource resources by Watcher

```sql
SELECT
properties
FROM azure.db_watcher.shared_private_link_resources
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND watcherName = '{{ watcherName }}' -- required
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

Create a SharedPrivateLinkResource

```sql
INSERT INTO azure.db_watcher.shared_private_link_resources (
data__properties,
subscriptionId,
resourceGroupName,
watcherName,
sharedPrivateLinkResourceName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ watcherName }}',
'{{ sharedPrivateLinkResourceName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: shared_private_link_resources
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the shared_private_link_resources resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the shared_private_link_resources resource.
    - name: watcherName
      value: string
      description: Required parameter for the shared_private_link_resources resource.
    - name: sharedPrivateLinkResourceName
      value: string
      description: Required parameter for the shared_private_link_resources resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
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

Delete a SharedPrivateLinkResource

```sql
DELETE FROM azure.db_watcher.shared_private_link_resources
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND watcherName = '{{ watcherName }}' --required
AND sharedPrivateLinkResourceName = '{{ sharedPrivateLinkResourceName }}' --required
;
```
</TabItem>
</Tabs>
