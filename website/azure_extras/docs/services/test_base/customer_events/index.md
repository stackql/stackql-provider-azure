--- 
title: customer_events
hide_title: false
hide_table_of_contents: false
keywords:
  - customer_events
  - test_base
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

Creates, updates, deletes, gets or lists a <code>customer_events</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>customer_events</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.customer_events" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_test_base_account', value: 'list_by_test_base_account' }
    ]}
>
<TabItem value="get">

The Test Base Customer Event was successfully found.

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
    <td>Customer Notification Event properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_test_base_account">

The operation is completed.

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
    <td>Customer Notification Event properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-customerEventName"><code>customerEventName</code></a></td>
    <td></td>
    <td>Gets a Test Base CustomerEvent.</td>
</tr>
<tr>
    <td><a href="#list_by_test_base_account"><CopyableCode code="list_by_test_base_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a></td>
    <td></td>
    <td>Lists all notification events subscribed under a Test Base Account.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-customerEventName"><code>customerEventName</code></a></td>
    <td></td>
    <td>Create or replace a Test Base Customer Event.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-customerEventName"><code>customerEventName</code></a></td>
    <td></td>
    <td>Deletes a Test Base Customer Event.</td>
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
<tr id="parameter-customerEventName">
    <td><CopyableCode code="customerEventName" /></td>
    <td><code>string</code></td>
    <td>The resource name of the Test Base Customer event.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-testBaseAccountName">
    <td><CopyableCode code="testBaseAccountName" /></td>
    <td><code>string</code></td>
    <td>The resource name of the Test Base Account.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_test_base_account', value: 'list_by_test_base_account' }
    ]}
>
<TabItem value="get">

Gets a Test Base CustomerEvent.

```sql
SELECT
properties
FROM azure_extras.test_base.customer_events
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND testBaseAccountName = '{{ testBaseAccountName }}' -- required
AND customerEventName = '{{ customerEventName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_test_base_account">

Lists all notification events subscribed under a Test Base Account.

```sql
SELECT
properties
FROM azure_extras.test_base.customer_events
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND testBaseAccountName = '{{ testBaseAccountName }}' -- required
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

Create or replace a Test Base Customer Event.

```sql
INSERT INTO azure_extras.test_base.customer_events (
data__properties,
subscriptionId,
resourceGroupName,
testBaseAccountName,
customerEventName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ testBaseAccountName }}',
'{{ customerEventName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: customer_events
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the customer_events resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the customer_events resource.
    - name: testBaseAccountName
      value: string
      description: Required parameter for the customer_events resource.
    - name: customerEventName
      value: string
      description: Required parameter for the customer_events resource.
    - name: properties
      value: object
      description: |
        Customer Notification Event properties.
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

Deletes a Test Base Customer Event.

```sql
DELETE FROM azure_extras.test_base.customer_events
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND testBaseAccountName = '{{ testBaseAccountName }}' --required
AND customerEventName = '{{ customerEventName }}' --required
;
```
</TabItem>
</Tabs>
