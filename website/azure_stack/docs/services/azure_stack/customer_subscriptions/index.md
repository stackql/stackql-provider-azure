--- 
title: customer_subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - customer_subscriptions
  - azure_stack
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

Creates, updates, deletes, gets or lists a <code>customer_subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>customer_subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack.customer_subscriptions" /></td></tr>
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
    <td>ID of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>The entity tag used for optimistic concurrency when modifying the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Customer subscription properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of Resource.</td>
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
    <td>ID of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>The entity tag used for optimistic concurrency when modifying the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Customer subscription properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of Resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-registrationName"><code>registrationName</code></a>, <a href="#parameter-customerSubscriptionName"><code>customerSubscriptionName</code></a></td>
    <td></td>
    <td>Returns the specified product.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-registrationName"><code>registrationName</code></a></td>
    <td></td>
    <td>Returns a list of products.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-registrationName"><code>registrationName</code></a>, <a href="#parameter-customerSubscriptionName"><code>customerSubscriptionName</code></a></td>
    <td></td>
    <td>Creates a new customer subscription under a registration.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-registrationName"><code>registrationName</code></a>, <a href="#parameter-customerSubscriptionName"><code>customerSubscriptionName</code></a></td>
    <td></td>
    <td>Deletes a customer subscription under a registration.</td>
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
<tr id="parameter-customerSubscriptionName">
    <td><CopyableCode code="customerSubscriptionName" /></td>
    <td><code>string</code></td>
    <td>Name of the product.</td>
</tr>
<tr id="parameter-registrationName">
    <td><CopyableCode code="registrationName" /></td>
    <td><code>string</code></td>
    <td>Name of the Azure Stack registration.</td>
</tr>
<tr id="parameter-resourceGroup">
    <td><CopyableCode code="resourceGroup" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials that uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
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

Returns the specified product.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure_stack.azure_stack.customer_subscriptions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroup = '{{ resourceGroup }}' -- required
AND registrationName = '{{ registrationName }}' -- required
AND customerSubscriptionName = '{{ customerSubscriptionName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Returns a list of products.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure_stack.azure_stack.customer_subscriptions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroup = '{{ resourceGroup }}' -- required
AND registrationName = '{{ registrationName }}' -- required
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

Creates a new customer subscription under a registration.

```sql
INSERT INTO azure_stack.azure_stack.customer_subscriptions (
data__properties,
data__etag,
subscriptionId,
resourceGroup,
registrationName,
customerSubscriptionName
)
SELECT 
'{{ properties }}',
'{{ etag }}',
'{{ subscriptionId }}',
'{{ resourceGroup }}',
'{{ registrationName }}',
'{{ customerSubscriptionName }}'
RETURNING
id,
name,
etag,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: customer_subscriptions
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the customer_subscriptions resource.
    - name: resourceGroup
      value: string
      description: Required parameter for the customer_subscriptions resource.
    - name: registrationName
      value: string
      description: Required parameter for the customer_subscriptions resource.
    - name: customerSubscriptionName
      value: string
      description: Required parameter for the customer_subscriptions resource.
    - name: properties
      value: object
      description: |
        Customer subscription properties.
    - name: etag
      value: string
      description: |
        The entity tag used for optimistic concurrency when modifying the resource.
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

Deletes a customer subscription under a registration.

```sql
DELETE FROM azure_stack.azure_stack.customer_subscriptions
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroup = '{{ resourceGroup }}' --required
AND registrationName = '{{ registrationName }}' --required
AND customerSubscriptionName = '{{ customerSubscriptionName }}' --required
;
```
</TabItem>
</Tabs>
