--- 
title: private_store_collection_offers
hide_title: false
hide_table_of_contents: false
keywords:
  - private_store_collection_offers
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

Creates, updates, deletes, gets or lists a <code>private_store_collection_offers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>private_store_collection_offers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.marketplace.private_store_collection_offers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' },
        { label: 'list_by_contexts', value: 'list_by_contexts' }
    ]}
>
<TabItem value="get">

Offer information retrieved

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
    <td>The privateStore offer data structure.</td>
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
    <td>The privateStore offer data structure.</td>
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
<TabItem value="list_by_contexts">

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
    <td><CopyableCode code="context" /></td>
    <td><code>string</code></td>
    <td>Offer's context, e.g. subscription ID, tenant ID.</td>
</tr>
<tr>
    <td><CopyableCode code="offers" /></td>
    <td><code>object</code></td>
    <td>List of offers</td>
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
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-collectionId"><code>collectionId</code></a>, <a href="#parameter-offerId"><code>offerId</code></a></td>
    <td></td>
    <td>Gets information about a specific offer.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-collectionId"><code>collectionId</code></a></td>
    <td></td>
    <td>Get a list of all private offers in the given private store and collection</td>
</tr>
<tr>
    <td><a href="#list_by_contexts"><CopyableCode code="list_by_contexts" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-collectionId"><code>collectionId</code></a></td>
    <td></td>
    <td>Get a list of all offers in the given collection according to the required contexts.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-collectionId"><code>collectionId</code></a>, <a href="#parameter-offerId"><code>offerId</code></a></td>
    <td></td>
    <td>Update or add an offer to a specific collection of the private store.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-collectionId"><code>collectionId</code></a>, <a href="#parameter-offerId"><code>offerId</code></a></td>
    <td></td>
    <td>Deletes an offer from the given collection of private store.</td>
</tr>
<tr>
    <td><a href="#post"><CopyableCode code="post" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-collectionId"><code>collectionId</code></a>, <a href="#parameter-offerId"><code>offerId</code></a></td>
    <td></td>
    <td>Delete Private store offer. This is a workaround.</td>
</tr>
<tr>
    <td><a href="#upsert_offer_with_multi_context"><CopyableCode code="upsert_offer_with_multi_context" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-collectionId"><code>collectionId</code></a>, <a href="#parameter-offerId"><code>offerId</code></a></td>
    <td></td>
    <td>Upsert an offer with multiple context details.</td>
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
<tr id="parameter-offerId">
    <td><CopyableCode code="offerId" /></td>
    <td><code>string</code></td>
    <td>The offer ID to update or delete</td>
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
        { label: 'list', value: 'list' },
        { label: 'list_by_contexts', value: 'list_by_contexts' }
    ]}
>
<TabItem value="get">

Gets information about a specific offer.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure_extras.marketplace.private_store_collection_offers
WHERE privateStoreId = '{{ privateStoreId }}' -- required
AND collectionId = '{{ collectionId }}' -- required
AND offerId = '{{ offerId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get a list of all private offers in the given private store and collection

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure_extras.marketplace.private_store_collection_offers
WHERE privateStoreId = '{{ privateStoreId }}' -- required
AND collectionId = '{{ collectionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_contexts">

Get a list of all offers in the given collection according to the required contexts.

```sql
SELECT
context,
offers
FROM azure_extras.marketplace.private_store_collection_offers
WHERE privateStoreId = '{{ privateStoreId }}' -- required
AND collectionId = '{{ collectionId }}' -- required
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

Update or add an offer to a specific collection of the private store.

```sql
INSERT INTO azure_extras.marketplace.private_store_collection_offers (
data__properties,
privateStoreId,
collectionId,
offerId
)
SELECT 
'{{ properties }}',
'{{ privateStoreId }}',
'{{ collectionId }}',
'{{ offerId }}'
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
- name: private_store_collection_offers
  props:
    - name: privateStoreId
      value: string
      description: Required parameter for the private_store_collection_offers resource.
    - name: collectionId
      value: string
      description: Required parameter for the private_store_collection_offers resource.
    - name: offerId
      value: string
      description: Required parameter for the private_store_collection_offers resource.
    - name: properties
      value: object
      description: |
        The privateStore offer data structure.
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

Deletes an offer from the given collection of private store.

```sql
DELETE FROM azure_extras.marketplace.private_store_collection_offers
WHERE privateStoreId = '{{ privateStoreId }}' --required
AND collectionId = '{{ collectionId }}' --required
AND offerId = '{{ offerId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="post"
    values={[
        { label: 'post', value: 'post' },
        { label: 'upsert_offer_with_multi_context', value: 'upsert_offer_with_multi_context' }
    ]}
>
<TabItem value="post">

Delete Private store offer. This is a workaround.

```sql
EXEC azure_extras.marketplace.private_store_collection_offers.post 
@privateStoreId='{{ privateStoreId }}' --required, 
@collectionId='{{ collectionId }}' --required, 
@offerId='{{ offerId }}' --required
;
```
</TabItem>
<TabItem value="upsert_offer_with_multi_context">

Upsert an offer with multiple context details.

```sql
EXEC azure_extras.marketplace.private_store_collection_offers.upsert_offer_with_multi_context 
@privateStoreId='{{ privateStoreId }}' --required, 
@collectionId='{{ collectionId }}' --required, 
@offerId='{{ offerId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
