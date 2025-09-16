--- 
title: subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - subscriptions
  - subscription
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

Creates, updates, deletes, gets or lists a <code>subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.subscription.subscriptions" /></td></tr>
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

OK - Returns information about the subscription.

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
    <td>The fully qualified ID for the subscription. For example, /subscriptions/00000000-0000-0000-0000-000000000000.</td>
</tr>
<tr>
    <td><CopyableCode code="authorizationSource" /></td>
    <td><code>string</code></td>
    <td>The authorization source of the request. Valid values are one or more combinations of Legacy, RoleBased, Bypassed, Direct and Management. For example, 'Legacy, RoleBased'.</td>
</tr>
<tr>
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>The subscription display name.</td>
</tr>
<tr>
    <td><CopyableCode code="state" /></td>
    <td><code>string</code></td>
    <td>The subscription state. Possible values are Enabled, Warned, PastDue, Disabled, and Deleted.</td>
</tr>
<tr>
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID.</td>
</tr>
<tr>
    <td><CopyableCode code="subscriptionPolicies" /></td>
    <td><code>object</code></td>
    <td>The subscription policies.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Tags for the subscription</td>
</tr>
<tr>
    <td><CopyableCode code="tenantId" /></td>
    <td><code>string</code></td>
    <td>The tenant ID. For example, 00000000-0000-0000-0000-000000000000.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK - Returns an array of subscriptions.

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
    <td>The fully qualified ID for the subscription. For example, /subscriptions/00000000-0000-0000-0000-000000000000.</td>
</tr>
<tr>
    <td><CopyableCode code="authorizationSource" /></td>
    <td><code>string</code></td>
    <td>The authorization source of the request. Valid values are one or more combinations of Legacy, RoleBased, Bypassed, Direct and Management. For example, 'Legacy, RoleBased'.</td>
</tr>
<tr>
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>The subscription display name.</td>
</tr>
<tr>
    <td><CopyableCode code="state" /></td>
    <td><code>string</code></td>
    <td>The subscription state. Possible values are Enabled, Warned, PastDue, Disabled, and Deleted.</td>
</tr>
<tr>
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID.</td>
</tr>
<tr>
    <td><CopyableCode code="subscriptionPolicies" /></td>
    <td><code>object</code></td>
    <td>The subscription policies.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Tags for the subscription</td>
</tr>
<tr>
    <td><CopyableCode code="tenantId" /></td>
    <td><code>string</code></td>
    <td>The tenant ID. For example, 00000000-0000-0000-0000-000000000000.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets details about a specified subscription.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>Gets all subscriptions for a tenant.</td>
</tr>
<tr>
    <td><a href="#cancel"><CopyableCode code="cancel" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>The operation to cancel a subscription</td>
</tr>
<tr>
    <td><a href="#rename"><CopyableCode code="rename" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>The operation to rename a subscription</td>
</tr>
<tr>
    <td><a href="#enable"><CopyableCode code="enable" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>The operation to enable a subscription</td>
</tr>
<tr>
    <td><a href="#accept_ownership"><CopyableCode code="accept_ownership" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Accept subscription ownership.</td>
</tr>
<tr>
    <td><a href="#accept_ownership_status"><CopyableCode code="accept_ownership_status" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Accept subscription ownership status.</td>
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
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription Id.</td>
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

Gets details about a specified subscription.

```sql
SELECT
id,
authorizationSource,
displayName,
state,
subscriptionId,
subscriptionPolicies,
tags,
tenantId
FROM azure.subscription.subscriptions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets all subscriptions for a tenant.

```sql
SELECT
id,
authorizationSource,
displayName,
state,
subscriptionId,
subscriptionPolicies,
tags,
tenantId
FROM azure.subscription.subscriptions
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="cancel"
    values={[
        { label: 'cancel', value: 'cancel' },
        { label: 'rename', value: 'rename' },
        { label: 'enable', value: 'enable' },
        { label: 'accept_ownership', value: 'accept_ownership' },
        { label: 'accept_ownership_status', value: 'accept_ownership_status' }
    ]}
>
<TabItem value="cancel">

The operation to cancel a subscription

```sql
EXEC azure.subscription.subscriptions.cancel 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="rename">

The operation to rename a subscription

```sql
EXEC azure.subscription.subscriptions.rename 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"subscriptionName": "{{ subscriptionName }}"
}'
;
```
</TabItem>
<TabItem value="enable">

The operation to enable a subscription

```sql
EXEC azure.subscription.subscriptions.enable 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="accept_ownership">

Accept subscription ownership.

```sql
EXEC azure.subscription.subscriptions.accept_ownership 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="accept_ownership_status">

Accept subscription ownership status.

```sql
EXEC azure.subscription.subscriptions.accept_ownership_status 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
