--- 
title: subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - subscriptions
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

Creates, updates, deletes, gets or lists a <code>subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.subscriptions_admin.subscriptions" /></td></tr>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-targetSubscriptionId"><code>targetSubscriptionId</code></a></td>
    <td></td>
    <td>Get a specified subscription.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Get the list of subscriptions.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-targetSubscriptionId"><code>targetSubscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates the specified subscription.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-targetSubscriptionId"><code>targetSubscriptionId</code></a></td>
    <td></td>
    <td>Delete the specified subscription.</td>
</tr>
<tr>
    <td><a href="#restore_data"><CopyableCode code="restore_data" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Restores the data</td>
</tr>
<tr>
    <td><a href="#check_identity_health"><CopyableCode code="check_identity_health" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Checks the identity health</td>
</tr>
<tr>
    <td><a href="#move_subscriptions"><CopyableCode code="move_subscriptions" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resources"><code>resources</code></a></td>
    <td></td>
    <td>Move subscriptions between delegated provider offers.</td>
</tr>
<tr>
    <td><a href="#validate_move_subscriptions"><CopyableCode code="validate_move_subscriptions" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resources"><code>resources</code></a></td>
    <td></td>
    <td>Validate that user subscriptions can be moved between delegated provider offers.</td>
</tr>
<tr>
    <td><a href="#check_name_availability"><CopyableCode code="check_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get the list of subscriptions.</td>
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
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription.The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-targetSubscriptionId">
    <td><CopyableCode code="targetSubscriptionId" /></td>
    <td><code>string</code></td>
    <td>The target subscription ID.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>OData filter parameter.</td>
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

Get a specified subscription.

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
FROM azure_stack.subscriptions_admin.subscriptions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND targetSubscriptionId = '{{ targetSubscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get the list of subscriptions.

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
FROM azure_stack.subscriptions_admin.subscriptions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
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

Creates or updates the specified subscription.

```sql
INSERT INTO azure_stack.subscriptions_admin.subscriptions (
data__delegatedProviderSubscriptionId,
data__displayName,
data__id,
data__externalReferenceId,
data__offerId,
data__owner,
data__routingResourceManagerType,
data__state,
data__subscriptionId,
data__tenantId,
subscriptionId,
targetSubscriptionId
)
SELECT 
'{{ delegatedProviderSubscriptionId }}',
'{{ displayName }}',
'{{ id }}',
'{{ externalReferenceId }}',
'{{ offerId }}',
'{{ owner }}',
'{{ routingResourceManagerType }}',
'{{ state }}',
'{{ subscriptionId }}',
'{{ tenantId }}',
'{{ subscriptionId }}',
'{{ targetSubscriptionId }}'
RETURNING
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
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: subscriptions
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the subscriptions resource.
    - name: targetSubscriptionId
      value: string
      description: Required parameter for the subscriptions resource.
    - name: delegatedProviderSubscriptionId
      value: string
      description: |
        Parent DelegatedProvider subscription identifier.
    - name: displayName
      value: string
      description: |
        Subscription name.
    - name: id
      value: string
      description: |
        Fully qualified identifier.
    - name: externalReferenceId
      value: string
      description: |
        External reference identifier.
    - name: offerId
      value: string
      description: |
        Identifier of the offer under the scope of a delegated provider.
    - name: owner
      value: string
      description: |
        Subscription owner.
    - name: routingResourceManagerType
      value: string
      description: |
        Routing resource manager type.
      valid_values: ['Default', 'Admin']
    - name: state
      value: string
      description: |
        Subscription state.
      valid_values: ['NotDefined', 'Enabled', 'Warned', 'PastDue', 'Disabled', 'Deleted', 'Deleting', 'PartiallyDeleted']
    - name: subscriptionId
      value: string
      description: |
        Subscription identifier.
    - name: tenantId
      value: string
      description: |
        Directory tenant identifier.
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

Delete the specified subscription.

```sql
DELETE FROM azure_stack.subscriptions_admin.subscriptions
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND targetSubscriptionId = '{{ targetSubscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="restore_data"
    values={[
        { label: 'restore_data', value: 'restore_data' },
        { label: 'check_identity_health', value: 'check_identity_health' },
        { label: 'move_subscriptions', value: 'move_subscriptions' },
        { label: 'validate_move_subscriptions', value: 'validate_move_subscriptions' },
        { label: 'check_name_availability', value: 'check_name_availability' }
    ]}
>
<TabItem value="restore_data">

Restores the data

```sql
EXEC azure_stack.subscriptions_admin.subscriptions.restore_data 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="check_identity_health">

Checks the identity health

```sql
EXEC azure_stack.subscriptions_admin.subscriptions.check_identity_health 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="move_subscriptions">

Move subscriptions between delegated provider offers.

```sql
EXEC azure_stack.subscriptions_admin.subscriptions.move_subscriptions 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"targetDelegatedProviderOffer": "{{ targetDelegatedProviderOffer }}", 
"resources": "{{ resources }}"
}'
;
```
</TabItem>
<TabItem value="validate_move_subscriptions">

Validate that user subscriptions can be moved between delegated provider offers.

```sql
EXEC azure_stack.subscriptions_admin.subscriptions.validate_move_subscriptions 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"targetDelegatedProviderOffer": "{{ targetDelegatedProviderOffer }}", 
"resources": "{{ resources }}"
}'
;
```
</TabItem>
<TabItem value="check_name_availability">

Get the list of subscriptions.

```sql
EXEC azure_stack.subscriptions_admin.subscriptions.check_name_availability 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"name": "{{ name }}", 
"resourceType": "{{ resourceType }}"
}'
;
```
</TabItem>
</Tabs>
