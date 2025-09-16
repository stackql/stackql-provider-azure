--- 
title: operations
hide_title: false
hide_table_of_contents: false
keywords:
  - operations
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

Creates, updates, deletes, gets or lists an <code>operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>operations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.marketplace.operations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Operation ID</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Operation name: &#123;provider&#125;/&#123;resource&#125;/&#123;operation&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="display" /></td>
    <td><code>object</code></td>
    <td>The object that represents the operation.</td>
</tr>
<tr>
    <td><CopyableCode code="isDataAction" /></td>
    <td><code>boolean</code></td>
    <td>Indicates whether the operation is a data action</td>
</tr>
<tr>
    <td><CopyableCode code="origin" /></td>
    <td><code>string</code></td>
    <td>Origin of the operation</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the operation</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>Lists all of the available Microsoft.Marketplace REST API operations.</td>
</tr>
<tr>
    <td><a href="#query_user_rules"><CopyableCode code="query_user_rules" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a></td>
    <td></td>
    <td>All rules approved in the private store that are relevant for user subscriptions</td>
</tr>
<tr>
    <td><a href="#set_collection_rules"><CopyableCode code="set_collection_rules" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-collectionId"><code>collectionId</code></a></td>
    <td></td>
    <td>Set rule for specific private store and collection</td>
</tr>
<tr>
    <td><a href="#query_rules"><CopyableCode code="query_rules" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-collectionId"><code>collectionId</code></a></td>
    <td></td>
    <td>Get a list of all private store rules in the given private store and collection</td>
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
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Lists all of the available Microsoft.Marketplace REST API operations.

```sql
SELECT
id,
name,
display,
isDataAction,
origin,
properties
FROM azure_extras.marketplace.operations
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="query_user_rules"
    values={[
        { label: 'query_user_rules', value: 'query_user_rules' },
        { label: 'set_collection_rules', value: 'set_collection_rules' },
        { label: 'query_rules', value: 'query_rules' }
    ]}
>
<TabItem value="query_user_rules">

All rules approved in the private store that are relevant for user subscriptions

```sql
EXEC azure_extras.marketplace.operations.query_user_rules 
@privateStoreId='{{ privateStoreId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="set_collection_rules">

Set rule for specific private store and collection

```sql
EXEC azure_extras.marketplace.operations.set_collection_rules 
@privateStoreId='{{ privateStoreId }}' --required, 
@collectionId='{{ collectionId }}' --required 
@@json=
'{
"value": "{{ value }}", 
"nextLink": "{{ nextLink }}"
}'
;
```
</TabItem>
<TabItem value="query_rules">

Get a list of all private store rules in the given private store and collection

```sql
EXEC azure_extras.marketplace.operations.query_rules 
@privateStoreId='{{ privateStoreId }}' --required, 
@collectionId='{{ collectionId }}' --required
;
```
</TabItem>
</Tabs>
