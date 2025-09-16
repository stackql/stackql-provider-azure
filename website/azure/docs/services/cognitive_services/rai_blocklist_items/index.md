--- 
title: rai_blocklist_items
hide_title: false
hide_table_of_contents: false
keywords:
  - rai_blocklist_items
  - cognitive_services
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

Creates, updates, deletes, gets or lists a <code>rai_blocklist_items</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>rai_blocklist_items</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cognitive_services.rai_blocklist_items" /></td></tr>
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

OK -- Get the custom blocklist Item successfully.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Resource Etag.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of Cognitive Services RaiBlocklist Item.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
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

Successfully retrieved blocklist items.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Resource Etag.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of Cognitive Services RaiBlocklist Item.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-raiBlocklistName"><code>raiBlocklistName</code></a>, <a href="#parameter-raiBlocklistItemName"><code>raiBlocklistItemName</code></a></td>
    <td></td>
    <td>Gets the specified custom blocklist Item associated with the custom blocklist.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-raiBlocklistName"><code>raiBlocklistName</code></a></td>
    <td></td>
    <td>Gets the blocklist items associated with the custom blocklist.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-raiBlocklistName"><code>raiBlocklistName</code></a>, <a href="#parameter-raiBlocklistItemName"><code>raiBlocklistItemName</code></a></td>
    <td></td>
    <td>Update the state of specified blocklist item associated with the Azure OpenAI account.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-raiBlocklistName"><code>raiBlocklistName</code></a>, <a href="#parameter-raiBlocklistItemName"><code>raiBlocklistItemName</code></a></td>
    <td></td>
    <td>Deletes the specified blocklist Item associated with the custom blocklist.</td>
</tr>
<tr>
    <td><a href="#batch_add"><CopyableCode code="batch_add" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-raiBlocklistName"><code>raiBlocklistName</code></a></td>
    <td></td>
    <td>Batch operation to add blocklist items.</td>
</tr>
<tr>
    <td><a href="#batch_delete"><CopyableCode code="batch_delete" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-raiBlocklistName"><code>raiBlocklistName</code></a></td>
    <td></td>
    <td>Batch operation to delete blocklist items.</td>
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
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>The name of Cognitive Services account.</td>
</tr>
<tr id="parameter-raiBlocklistItemName">
    <td><CopyableCode code="raiBlocklistItemName" /></td>
    <td><code>string</code></td>
    <td>The name of the RaiBlocklist Item associated with the custom blocklist</td>
</tr>
<tr id="parameter-raiBlocklistName">
    <td><CopyableCode code="raiBlocklistName" /></td>
    <td><code>string</code></td>
    <td>The name of the RaiBlocklist associated with the Cognitive Services Account</td>
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
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets the specified custom blocklist Item associated with the custom blocklist.

```sql
SELECT
etag,
properties,
systemData,
tags
FROM azure.cognitive_services.rai_blocklist_items
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND raiBlocklistName = '{{ raiBlocklistName }}' -- required
AND raiBlocklistItemName = '{{ raiBlocklistItemName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets the blocklist items associated with the custom blocklist.

```sql
SELECT
etag,
properties,
systemData,
tags
FROM azure.cognitive_services.rai_blocklist_items
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND raiBlocklistName = '{{ raiBlocklistName }}' -- required
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

Update the state of specified blocklist item associated with the Azure OpenAI account.

```sql
INSERT INTO azure.cognitive_services.rai_blocklist_items (
data__tags,
data__properties,
resourceGroupName,
accountName,
subscriptionId,
raiBlocklistName,
raiBlocklistItemName
)
SELECT 
'{{ tags }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ accountName }}',
'{{ subscriptionId }}',
'{{ raiBlocklistName }}',
'{{ raiBlocklistItemName }}'
RETURNING
etag,
properties,
systemData,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: rai_blocklist_items
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the rai_blocklist_items resource.
    - name: accountName
      value: string
      description: Required parameter for the rai_blocklist_items resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the rai_blocklist_items resource.
    - name: raiBlocklistName
      value: string
      description: Required parameter for the rai_blocklist_items resource.
    - name: raiBlocklistItemName
      value: string
      description: Required parameter for the rai_blocklist_items resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: properties
      value: object
      description: |
        Properties of Cognitive Services RaiBlocklist Item.
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

Deletes the specified blocklist Item associated with the custom blocklist.

```sql
DELETE FROM azure.cognitive_services.rai_blocklist_items
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND raiBlocklistName = '{{ raiBlocklistName }}' --required
AND raiBlocklistItemName = '{{ raiBlocklistItemName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="batch_add"
    values={[
        { label: 'batch_add', value: 'batch_add' },
        { label: 'batch_delete', value: 'batch_delete' }
    ]}
>
<TabItem value="batch_add">

Batch operation to add blocklist items.

```sql
EXEC azure.cognitive_services.rai_blocklist_items.batch_add 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@raiBlocklistName='{{ raiBlocklistName }}' --required
;
```
</TabItem>
<TabItem value="batch_delete">

Batch operation to delete blocklist items.

```sql
EXEC azure.cognitive_services.rai_blocklist_items.batch_delete 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@raiBlocklistName='{{ raiBlocklistName }}' --required
;
```
</TabItem>
</Tabs>
