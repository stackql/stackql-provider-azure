--- 
title: ledgers
hide_title: false
hide_table_of_contents: false
keywords:
  - ledgers
  - confidential_ledger
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

Creates, updates, deletes, gets or lists a <code>ledgers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>ledgers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.confidential_ledger.ledgers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

The request was successful; response contains the Confidential Ledger

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
    <td>Properties of Confidential Ledger Resource. (title: LedgerProperties)</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

The request was successful; response contains the Confidential Ledger

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
    <td>Properties of Confidential Ledger Resource. (title: LedgerProperties)</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

The request was successful; response contains the list of Confidential Ledgers

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
    <td>Properties of Confidential Ledger Resource. (title: LedgerProperties)</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-ledgerName"><code>ledgerName</code></a></td>
    <td></td>
    <td>Retrieves the properties of a Confidential Ledger.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Retrieves the properties of all Confidential Ledgers.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Retrieves the properties of all Confidential Ledgers.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-ledgerName"><code>ledgerName</code></a></td>
    <td></td>
    <td>Creates a  Confidential Ledger with the specified ledger parameters.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-ledgerName"><code>ledgerName</code></a></td>
    <td></td>
    <td>Updates properties of Confidential Ledger</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-ledgerName"><code>ledgerName</code></a></td>
    <td></td>
    <td>Deletes an existing Confidential Ledger.</td>
</tr>
<tr>
    <td><a href="#backup"><CopyableCode code="backup" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-ledgerName"><code>ledgerName</code></a>, <a href="#parameter-uri"><code>uri</code></a></td>
    <td></td>
    <td>Backs up a Confidential Ledger Resource.</td>
</tr>
<tr>
    <td><a href="#restore"><CopyableCode code="restore" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-ledgerName"><code>ledgerName</code></a>, <a href="#parameter-fileShareName"><code>fileShareName</code></a>, <a href="#parameter-restoreRegion"><code>restoreRegion</code></a>, <a href="#parameter-uri"><code>uri</code></a></td>
    <td></td>
    <td>Restores a Confidential Ledger Resource.</td>
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
<tr id="parameter-ledgerName">
    <td><CopyableCode code="ledgerName" /></td>
    <td><code>string</code></td>
    <td>Name of the Confidential Ledger</td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the list operation. eg. $filter=ledgerType eq 'Public'</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Retrieves the properties of a Confidential Ledger.

```sql
SELECT
location,
properties,
tags
FROM azure.confidential_ledger.ledgers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND ledgerName = '{{ ledgerName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Retrieves the properties of all Confidential Ledgers.

```sql
SELECT
location,
properties,
tags
FROM azure.confidential_ledger.ledgers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
<TabItem value="list_by_subscription">

Retrieves the properties of all Confidential Ledgers.

```sql
SELECT
location,
properties,
tags
FROM azure.confidential_ledger.ledgers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
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

Creates a  Confidential Ledger with the specified ledger parameters.

```sql
INSERT INTO azure.confidential_ledger.ledgers (
data__tags,
data__location,
data__properties,
subscriptionId,
resourceGroupName,
ledgerName
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ ledgerName }}'
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
- name: ledgers
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the ledgers resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the ledgers resource.
    - name: ledgerName
      value: string
      description: Required parameter for the ledgers resource.
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
        Properties of Confidential Ledger Resource.
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

Updates properties of Confidential Ledger

```sql
UPDATE azure.confidential_ledger.ledgers
SET 
data__tags = '{{ tags }}',
data__location = '{{ location }}',
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND ledgerName = '{{ ledgerName }}' --required
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

Deletes an existing Confidential Ledger.

```sql
DELETE FROM azure.confidential_ledger.ledgers
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND ledgerName = '{{ ledgerName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="backup"
    values={[
        { label: 'backup', value: 'backup' },
        { label: 'restore', value: 'restore' }
    ]}
>
<TabItem value="backup">

Backs up a Confidential Ledger Resource.

```sql
EXEC azure.confidential_ledger.ledgers.backup 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@ledgerName='{{ ledgerName }}' --required 
@@json=
'{
"restoreRegion": "{{ restoreRegion }}", 
"uri": "{{ uri }}"
}'
;
```
</TabItem>
<TabItem value="restore">

Restores a Confidential Ledger Resource.

```sql
EXEC azure.confidential_ledger.ledgers.restore 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@ledgerName='{{ ledgerName }}' --required 
@@json=
'{
"fileShareName": "{{ fileShareName }}", 
"restoreRegion": "{{ restoreRegion }}", 
"uri": "{{ uri }}"
}'
;
```
</TabItem>
</Tabs>
