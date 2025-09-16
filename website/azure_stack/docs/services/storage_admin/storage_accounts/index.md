--- 
title: storage_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - storage_accounts
  - storage_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>storage_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>storage_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.storage_admin.storage_accounts" /></td></tr>
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

OK -- The storage account has been returned.

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Indicates the type of storage account</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource Location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the storage account.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource Type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK -- The list of storage accounts has been returned.

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Indicates the type of storage account</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource Location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the storage account.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource Type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-accountId"><code>accountId</code></a></td>
    <td></td>
    <td>Returns the requested storage account.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-summary"><code>summary</code></a></td>
    <td>Returns a list of storage accounts.</td>
</tr>
<tr>
    <td><a href="#undelete"><CopyableCode code="undelete" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-accountId"><code>accountId</code></a></td>
    <td><a href="#parameter-newAccountName"><code>newAccountName</code></a></td>
    <td>Undelete a deleted storage account with new account name if the a new name is provided.</td>
</tr>
<tr>
    <td><a href="#reclaim_storage_capacity"><CopyableCode code="reclaim_storage_capacity" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td></td>
    <td>Start reclaim storage capacity on deleted storage objects.</td>
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
<tr id="parameter-accountId">
    <td><CopyableCode code="accountId" /></td>
    <td><code>string</code></td>
    <td>Internal storage account ID, which is not visible to tenant.</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription Id.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Filter string</td>
</tr>
<tr id="parameter-newAccountName">
    <td><CopyableCode code="newAccountName" /></td>
    <td><code>string</code></td>
    <td>New storage account name when doing undelete storage account operation.</td>
</tr>
<tr id="parameter-summary">
    <td><CopyableCode code="summary" /></td>
    <td><code>boolean</code></td>
    <td>Switch for whether summary or detailed information is returned.</td>
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

Returns the requested storage account.

```sql
SELECT
id,
name,
kind,
location,
properties,
tags,
type
FROM azure_stack.storage_admin.storage_accounts
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND location = '{{ location }}' -- required
AND accountId = '{{ accountId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Returns a list of storage accounts.

```sql
SELECT
id,
name,
kind,
location,
properties,
tags,
type
FROM azure_stack.storage_admin.storage_accounts
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND location = '{{ location }}' -- required
AND $filter = '{{ $filter }}'
AND summary = '{{ summary }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="undelete"
    values={[
        { label: 'undelete', value: 'undelete' },
        { label: 'reclaim_storage_capacity', value: 'reclaim_storage_capacity' }
    ]}
>
<TabItem value="undelete">

Undelete a deleted storage account with new account name if the a new name is provided.

```sql
EXEC azure_stack.storage_admin.storage_accounts.undelete 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required, 
@accountId='{{ accountId }}' --required, 
@newAccountName='{{ newAccountName }}'
;
```
</TabItem>
<TabItem value="reclaim_storage_capacity">

Start reclaim storage capacity on deleted storage objects.

```sql
EXEC azure_stack.storage_admin.storage_accounts.reclaim_storage_capacity 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required
;
```
</TabItem>
</Tabs>
