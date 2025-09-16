--- 
title: private_stores
hide_title: false
hide_table_of_contents: false
keywords:
  - private_stores
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

Creates, updates, deletes, gets or lists a <code>private_stores</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>private_stores</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.marketplace.private_stores" /></td></tr>
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
    <td>The resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The PrivateStore data structure.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
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
    <td>The resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The PrivateStore data structure.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
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
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a></td>
    <td></td>
    <td>Get information about the private store</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>Gets the list of available private stores.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a></td>
    <td></td>
    <td>Changes private store properties</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a></td>
    <td></td>
    <td>Deletes the private store. All that is not saved will be lost.</td>
</tr>
<tr>
    <td><a href="#any_existing_offers_in_the_collections"><CopyableCode code="any_existing_offers_in_the_collections" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a></td>
    <td></td>
    <td>Query whether exists any offer in the collections.</td>
</tr>
<tr>
    <td><a href="#query_offers"><CopyableCode code="query_offers" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a></td>
    <td></td>
    <td>List of offers, regardless the collections</td>
</tr>
<tr>
    <td><a href="#query_user_offers"><CopyableCode code="query_user_offers" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a></td>
    <td></td>
    <td>List of user's approved offers for the provided offers and subscriptions</td>
</tr>
<tr>
    <td><a href="#billing_accounts"><CopyableCode code="billing_accounts" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a></td>
    <td></td>
    <td>Tenant billing accounts names</td>
</tr>
<tr>
    <td><a href="#collections_to_subscriptions_mapping"><CopyableCode code="collections_to_subscriptions_mapping" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a></td>
    <td></td>
    <td>For a given subscriptions list, the API will return a map of collections and the related subscriptions from the supplied list.</td>
</tr>
<tr>
    <td><a href="#query_approved_plans"><CopyableCode code="query_approved_plans" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a></td>
    <td></td>
    <td>Get map of plans and related approved subscriptions.</td>
</tr>
<tr>
    <td><a href="#bulk_collections_action"><CopyableCode code="bulk_collections_action" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a></td>
    <td></td>
    <td>Perform an action on bulk collections</td>
</tr>
<tr>
    <td><a href="#query_request_approval"><CopyableCode code="query_request_approval" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-requestApprovalId"><code>requestApprovalId</code></a></td>
    <td></td>
    <td>Get request statuses foreach plan, this api is used as a complex GET action.</td>
</tr>
<tr>
    <td><a href="#admin_request_approvals_list"><CopyableCode code="admin_request_approvals_list" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a></td>
    <td></td>
    <td>Get list of admin request approvals</td>
</tr>
<tr>
    <td><a href="#query_notifications_state"><CopyableCode code="query_notifications_state" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a></td>
    <td></td>
    <td>Get private store notifications state</td>
</tr>
<tr>
    <td><a href="#acknowledge_offer_notification"><CopyableCode code="acknowledge_offer_notification" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-offerId"><code>offerId</code></a></td>
    <td></td>
    <td>Acknowledge notification for offer</td>
</tr>
<tr>
    <td><a href="#withdraw_plan"><CopyableCode code="withdraw_plan" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-requestApprovalId"><code>requestApprovalId</code></a></td>
    <td></td>
    <td>Withdraw a user request approval on specific plan</td>
</tr>
<tr>
    <td><a href="#fetch_all_subscriptions_in_tenant"><CopyableCode code="fetch_all_subscriptions_in_tenant" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a></td>
    <td><a href="#parameter-next-page-token"><code>next-page-token</code></a></td>
    <td>Fetch all subscriptions in tenant, only for marketplace admin</td>
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
<tr id="parameter-offerId">
    <td><CopyableCode code="offerId" /></td>
    <td><code>string</code></td>
    <td>The offer ID to update or delete</td>
</tr>
<tr id="parameter-privateStoreId">
    <td><CopyableCode code="privateStoreId" /></td>
    <td><code>string</code></td>
    <td>The store ID - must use the tenant ID</td>
</tr>
<tr id="parameter-requestApprovalId">
    <td><CopyableCode code="requestApprovalId" /></td>
    <td><code>string</code></td>
    <td>The request approval ID to get create or update</td>
</tr>
<tr id="parameter-next-page-token">
    <td><CopyableCode code="next-page-token" /></td>
    <td><code>string</code></td>
    <td>The skip token to get the next page.</td>
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

Get information about the private store

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure_extras.marketplace.private_stores
WHERE privateStoreId = '{{ privateStoreId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets the list of available private stores.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure_extras.marketplace.private_stores
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

Changes private store properties

```sql
INSERT INTO azure_extras.marketplace.private_stores (
data__properties,
privateStoreId
)
SELECT 
'{{ properties }}',
'{{ privateStoreId }}'
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: private_stores
  props:
    - name: privateStoreId
      value: string
      description: Required parameter for the private_stores resource.
    - name: properties
      value: object
      description: |
        The PrivateStore data structure.
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

Deletes the private store. All that is not saved will be lost.

```sql
DELETE FROM azure_extras.marketplace.private_stores
WHERE privateStoreId = '{{ privateStoreId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="any_existing_offers_in_the_collections"
    values={[
        { label: 'any_existing_offers_in_the_collections', value: 'any_existing_offers_in_the_collections' },
        { label: 'query_offers', value: 'query_offers' },
        { label: 'query_user_offers', value: 'query_user_offers' },
        { label: 'billing_accounts', value: 'billing_accounts' },
        { label: 'collections_to_subscriptions_mapping', value: 'collections_to_subscriptions_mapping' },
        { label: 'query_approved_plans', value: 'query_approved_plans' },
        { label: 'bulk_collections_action', value: 'bulk_collections_action' },
        { label: 'query_request_approval', value: 'query_request_approval' },
        { label: 'admin_request_approvals_list', value: 'admin_request_approvals_list' },
        { label: 'query_notifications_state', value: 'query_notifications_state' },
        { label: 'acknowledge_offer_notification', value: 'acknowledge_offer_notification' },
        { label: 'withdraw_plan', value: 'withdraw_plan' },
        { label: 'fetch_all_subscriptions_in_tenant', value: 'fetch_all_subscriptions_in_tenant' }
    ]}
>
<TabItem value="any_existing_offers_in_the_collections">

Query whether exists any offer in the collections.

```sql
EXEC azure_extras.marketplace.private_stores.any_existing_offers_in_the_collections 
@privateStoreId='{{ privateStoreId }}' --required
;
```
</TabItem>
<TabItem value="query_offers">

List of offers, regardless the collections

```sql
EXEC azure_extras.marketplace.private_stores.query_offers 
@privateStoreId='{{ privateStoreId }}' --required
;
```
</TabItem>
<TabItem value="query_user_offers">

List of user's approved offers for the provided offers and subscriptions

```sql
EXEC azure_extras.marketplace.private_stores.query_user_offers 
@privateStoreId='{{ privateStoreId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="billing_accounts">

Tenant billing accounts names

```sql
EXEC azure_extras.marketplace.private_stores.billing_accounts 
@privateStoreId='{{ privateStoreId }}' --required
;
```
</TabItem>
<TabItem value="collections_to_subscriptions_mapping">

For a given subscriptions list, the API will return a map of collections and the related subscriptions from the supplied list.

```sql
EXEC azure_extras.marketplace.private_stores.collections_to_subscriptions_mapping 
@privateStoreId='{{ privateStoreId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="query_approved_plans">

Get map of plans and related approved subscriptions.

```sql
EXEC azure_extras.marketplace.private_stores.query_approved_plans 
@privateStoreId='{{ privateStoreId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="bulk_collections_action">

Perform an action on bulk collections

```sql
EXEC azure_extras.marketplace.private_stores.bulk_collections_action 
@privateStoreId='{{ privateStoreId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="query_request_approval">

Get request statuses foreach plan, this api is used as a complex GET action.

```sql
EXEC azure_extras.marketplace.private_stores.query_request_approval 
@privateStoreId='{{ privateStoreId }}' --required, 
@requestApprovalId='{{ requestApprovalId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="admin_request_approvals_list">

Get list of admin request approvals

```sql
EXEC azure_extras.marketplace.private_stores.admin_request_approvals_list 
@privateStoreId='{{ privateStoreId }}' --required
;
```
</TabItem>
<TabItem value="query_notifications_state">

Get private store notifications state

```sql
EXEC azure_extras.marketplace.private_stores.query_notifications_state 
@privateStoreId='{{ privateStoreId }}' --required
;
```
</TabItem>
<TabItem value="acknowledge_offer_notification">

Acknowledge notification for offer

```sql
EXEC azure_extras.marketplace.private_stores.acknowledge_offer_notification 
@privateStoreId='{{ privateStoreId }}' --required, 
@offerId='{{ offerId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="withdraw_plan">

Withdraw a user request approval on specific plan

```sql
EXEC azure_extras.marketplace.private_stores.withdraw_plan 
@privateStoreId='{{ privateStoreId }}' --required, 
@requestApprovalId='{{ requestApprovalId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="fetch_all_subscriptions_in_tenant">

Fetch all subscriptions in tenant, only for marketplace admin

```sql
EXEC azure_extras.marketplace.private_stores.fetch_all_subscriptions_in_tenant 
@privateStoreId='{{ privateStoreId }}' --required, 
@next-page-token='{{ next-page-token }}'
;
```
</TabItem>
</Tabs>
