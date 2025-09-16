--- 
title: private_store_collections
hide_title: false
hide_table_of_contents: false
keywords:
  - private_store_collections
  - marketplace
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>private_store_collections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>private_store_collections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.marketplace.private_store_collections" /></td></tr>
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

Collection information retrieved

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The collection data structure.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Collections list information retrieved

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The collection data structure.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
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
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-collectionId"><code>collectionId</code></a></td>
    <td></td>
    <td>Gets private store collection</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a></td>
    <td></td>
    <td>Gets private store collections list</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-collectionId"><code>collectionId</code></a></td>
    <td></td>
    <td>Create or update private store collection</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-collectionId"><code>collectionId</code></a></td>
    <td></td>
    <td>Delete a collection from the given private store.</td>
</tr>
<tr>
    <td><a href="#post"><CopyableCode code="post" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-collectionId"><code>collectionId</code></a></td>
    <td></td>
    <td>Delete Private store collection. This is a workaround.</td>
</tr>
<tr>
    <td><a href="#transfer_offers"><CopyableCode code="transfer_offers" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-collectionId"><code>collectionId</code></a></td>
    <td></td>
    <td>transferring offers (copy or move) from source collection to target collection(s)</td>
</tr>
<tr>
    <td><a href="#approve_all_items"><CopyableCode code="approve_all_items" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-collectionId"><code>collectionId</code></a></td>
    <td></td>
    <td>Delete all existing offers from the collection and enable approve all items.</td>
</tr>
<tr>
    <td><a href="#disable_approve_all_items"><CopyableCode code="disable_approve_all_items" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-collectionId"><code>collectionId</code></a></td>
    <td></td>
    <td>Disable approve all items for the collection.</td>
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
<tr id="parameter-collectionId">
    <td><CopyableCode code="collectionId" /></td>
    <td><code>string</code></td>
    <td>The collection ID</td>
</tr>
<tr id="parameter-privateStoreId">
    <td><CopyableCode code="privateStoreId" /></td>
    <td><code>string</code></td>
    <td>The store ID - must use the tenant ID</td>
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

Gets private store collection

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure_extras.marketplace.private_store_collections
WHERE privateStoreId = '{{ privateStoreId }}' -- required
AND collectionId = '{{ collectionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets private store collections list

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure_extras.marketplace.private_store_collections
WHERE privateStoreId = '{{ privateStoreId }}' -- required
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

Create or update private store collection

```sql
INSERT INTO azure_extras.marketplace.private_store_collections (
data__properties,
privateStoreId,
collectionId
)
SELECT 
'{{ properties }}',
'{{ privateStoreId }}',
'{{ collectionId }}'
RETURNING
id,
name,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: private_store_collections
  props:
    - name: privateStoreId
      value: string
      description: Required parameter for the private_store_collections resource.
    - name: collectionId
      value: string
      description: Required parameter for the private_store_collections resource.
    - name: properties
      value: object
      description: |
        The collection data structure.
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

Delete a collection from the given private store.

```sql
DELETE FROM azure_extras.marketplace.private_store_collections
WHERE privateStoreId = '{{ privateStoreId }}' --required
AND collectionId = '{{ collectionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="post"
    values={[
        { label: 'post', value: 'post' },
        { label: 'transfer_offers', value: 'transfer_offers' },
        { label: 'approve_all_items', value: 'approve_all_items' },
        { label: 'disable_approve_all_items', value: 'disable_approve_all_items' }
    ]}
>
<TabItem value="post">

Delete Private store collection. This is a workaround.

```sql
EXEC azure_extras.marketplace.private_store_collections.post 
@privateStoreId='{{ privateStoreId }}' --required, 
@collectionId='{{ collectionId }}' --required
;
```
</TabItem>
<TabItem value="transfer_offers">

transferring offers (copy or move) from source collection to target collection(s)

```sql
EXEC azure_extras.marketplace.private_store_collections.transfer_offers 
@privateStoreId='{{ privateStoreId }}' --required, 
@collectionId='{{ collectionId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="approve_all_items">

Delete all existing offers from the collection and enable approve all items.

```sql
EXEC azure_extras.marketplace.private_store_collections.approve_all_items 
@privateStoreId='{{ privateStoreId }}' --required, 
@collectionId='{{ collectionId }}' --required
;
```
</TabItem>
<TabItem value="disable_approve_all_items">

Disable approve all items for the collection.

```sql
EXEC azure_extras.marketplace.private_store_collections.disable_approve_all_items 
@privateStoreId='{{ privateStoreId }}' --required, 
@collectionId='{{ collectionId }}' --required
;
```
</TabItem>
</Tabs>
