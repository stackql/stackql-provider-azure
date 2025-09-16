--- 
title: delegated_providers
hide_title: false
hide_table_of_contents: false
keywords:
  - delegated_providers
  - subscriptions_admin
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

Creates, updates, deletes, gets or lists a <code>delegated_providers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>delegated_providers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.subscriptions_admin.delegated_providers" /></td></tr>
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
    <td>Fully qualified identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="delegatedProviderSubscriptionId" /></td>
    <td><code>string</code></td>
    <td>Parent DelegatedProvider subscription identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>Subscription name.</td>
</tr>
<tr>
    <td><CopyableCode code="externalReferenceId" /></td>
    <td><code>string</code></td>
    <td>External reference identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="offerId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the offer under the scope of a delegated provider.</td>
</tr>
<tr>
    <td><CopyableCode code="owner" /></td>
    <td><code>string</code></td>
    <td>Subscription owner.</td>
</tr>
<tr>
    <td><CopyableCode code="routingResourceManagerType" /></td>
    <td><code>string</code></td>
    <td>Routing resource manager type.</td>
</tr>
<tr>
    <td><CopyableCode code="state" /></td>
    <td><code>string</code></td>
    <td>Subscription state.</td>
</tr>
<tr>
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="tenantId" /></td>
    <td><code>string</code></td>
    <td>Directory tenant identifier.</td>
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
    <td>Fully qualified identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="delegatedProviderSubscriptionId" /></td>
    <td><code>string</code></td>
    <td>Parent DelegatedProvider subscription identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>Subscription name.</td>
</tr>
<tr>
    <td><CopyableCode code="externalReferenceId" /></td>
    <td><code>string</code></td>
    <td>External reference identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="offerId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the offer under the scope of a delegated provider.</td>
</tr>
<tr>
    <td><CopyableCode code="owner" /></td>
    <td><code>string</code></td>
    <td>Subscription owner.</td>
</tr>
<tr>
    <td><CopyableCode code="routingResourceManagerType" /></td>
    <td><code>string</code></td>
    <td>Routing resource manager type.</td>
</tr>
<tr>
    <td><CopyableCode code="state" /></td>
    <td><code>string</code></td>
    <td>Subscription state.</td>
</tr>
<tr>
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="tenantId" /></td>
    <td><code>string</code></td>
    <td>Directory tenant identifier.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-delegatedProvider"><code>delegatedProvider</code></a></td>
    <td></td>
    <td>Get the specified delegated provider.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get the list of delegatedProviders.</td>
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
<tr id="parameter-delegatedProvider">
    <td><CopyableCode code="delegatedProvider" /></td>
    <td><code>string</code></td>
    <td>DelegatedProvider identifier.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription.The subscription ID forms part of the URI for every service call.</td>
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

Get the specified delegated provider.

```sql
SELECT
id,
delegatedProviderSubscriptionId,
displayName,
externalReferenceId,
offerId,
owner,
routingResourceManagerType,
state,
subscriptionId,
tenantId
FROM azure_stack.subscriptions_admin.delegated_providers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND delegatedProvider = '{{ delegatedProvider }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get the list of delegatedProviders.

```sql
SELECT
id,
delegatedProviderSubscriptionId,
displayName,
externalReferenceId,
offerId,
owner,
routingResourceManagerType,
state,
subscriptionId,
tenantId
FROM azure_stack.subscriptions_admin.delegated_providers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
