--- 
title: management_group_subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - management_group_subscriptions
  - management_groups
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

Creates, updates, deletes, gets or lists a <code>management_group_subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>management_group_subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.management_groups.management_group_subscriptions" /></td></tr>
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
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-Cache-Control"><code>Cache-Control</code></a></td>
    <td>Associates existing subscription with the management group.<br /></td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-Cache-Control"><code>Cache-Control</code></a></td>
    <td>De-associates subscription from the management group.<br /></td>
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
<tr id="parameter-groupId">
    <td><CopyableCode code="groupId" /></td>
    <td><code>string</code></td>
    <td>Management Group ID.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription ID.</td>
</tr>
<tr id="parameter-Cache-Control">
    <td><CopyableCode code="Cache-Control" /></td>
    <td><code>string</code></td>
    <td>Indicates whether the request should utilize any caches. Populate the header with 'no-cache' value to bypass existing caches.</td>
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

Associates existing subscription with the management group.<br />

```sql
INSERT INTO azure.management_groups.management_group_subscriptions (
groupId,
subscriptionId,
Cache-Control
)
SELECT 
'{{ groupId }}',
'{{ subscriptionId }}',
'{{ Cache-Control }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: management_group_subscriptions
  props:
    - name: groupId
      value: string
      description: Required parameter for the management_group_subscriptions resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the management_group_subscriptions resource.
    - name: Cache-Control
      value: string
      description: Indicates whether the request should utilize any caches. Populate the header with 'no-cache' value to bypass existing caches.
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

De-associates subscription from the management group.<br />

```sql
DELETE FROM azure.management_groups.management_group_subscriptions
WHERE groupId = '{{ groupId }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND Cache-Control = '{{ Cache-Control }}'
;
```
</TabItem>
</Tabs>
