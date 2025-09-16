--- 
title: recipient_transfers
hide_title: false
hide_table_of_contents: false
keywords:
  - recipient_transfers
  - billing
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

Creates, updates, deletes, gets or lists a <code>recipient_transfers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>recipient_transfers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.recipient_transfers" /></td></tr>
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

Details of the transfers with given Id.

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
    <td>Details of the transfer.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

List of transfers received by caller.

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
    <td>Details of the transfer.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
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
    <td><a href="#parameter-transferName"><code>transferName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#accept"><CopyableCode code="accept" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-transferName"><code>transferName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#validate"><CopyableCode code="validate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-transferName"><code>transferName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#decline"><CopyableCode code="decline" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-transferName"><code>transferName</code></a></td>
    <td></td>
    <td></td>
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
<tr id="parameter-transferName">
    <td><CopyableCode code="transferName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a transfer request.</td>
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

Details of the transfers with given Id.

```sql
SELECT
properties,
tags
FROM azure.billing.recipient_transfers
WHERE transferName = '{{ transferName }}' -- required
;
```
</TabItem>
<TabItem value="list">

List of transfers received by caller.

```sql
SELECT
properties,
tags
FROM azure.billing.recipient_transfers
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="accept"
    values={[
        { label: 'accept', value: 'accept' },
        { label: 'validate', value: 'validate' },
        { label: 'decline', value: 'decline' }
    ]}
>
<TabItem value="accept">

Details of the accepted transfer.

```sql
EXEC azure.billing.recipient_transfers.accept 
@transferName='{{ transferName }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="validate">

Results of the transfer validation.

```sql
EXEC azure.billing.recipient_transfers.validate 
@transferName='{{ transferName }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="decline">

Details of the declined transfer.

```sql
EXEC azure.billing.recipient_transfers.decline 
@transferName='{{ transferName }}' --required
;
```
</TabItem>
</Tabs>
