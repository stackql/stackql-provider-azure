--- 
title: marketplace_agreements
hide_title: false
hide_table_of_contents: false
keywords:
  - marketplace_agreements
  - marketplace_ordering
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

Creates, updates, deletes, gets or lists a <code>marketplace_agreements</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>marketplace_agreements</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.marketplace_ordering.marketplace_agreements" /></td></tr>
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

Terms returned successfully

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
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Represents the properties of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Terms returned successfully

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
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Represents the properties of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-offerType"><code>offerType</code></a>, <a href="#parameter-publisherId"><code>publisherId</code></a>, <a href="#parameter-offerId"><code>offerId</code></a>, <a href="#parameter-planId"><code>planId</code></a></td>
    <td></td>
    <td>Get marketplace terms.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>List marketplace agreements in the subscription.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-offerType"><code>offerType</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-publisherId"><code>publisherId</code></a>, <a href="#parameter-offerId"><code>offerId</code></a>, <a href="#parameter-planId"><code>planId</code></a></td>
    <td></td>
    <td>Save marketplace terms.</td>
</tr>
<tr>
    <td><a href="#sign"><CopyableCode code="sign" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-publisherId"><code>publisherId</code></a>, <a href="#parameter-offerId"><code>offerId</code></a>, <a href="#parameter-planId"><code>planId</code></a></td>
    <td></td>
    <td>Sign marketplace terms.</td>
</tr>
<tr>
    <td><a href="#cancel"><CopyableCode code="cancel" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-publisherId"><code>publisherId</code></a>, <a href="#parameter-offerId"><code>offerId</code></a>, <a href="#parameter-planId"><code>planId</code></a></td>
    <td></td>
    <td>Cancel marketplace terms.</td>
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
    <td>Offer identifier string of image being deployed.</td>
</tr>
<tr id="parameter-offerType">
    <td><CopyableCode code="offerType" /></td>
    <td><code>string</code></td>
    <td>Offer Type, currently only virtualmachine type is supported.</td>
</tr>
<tr id="parameter-planId">
    <td><CopyableCode code="planId" /></td>
    <td><code>string</code></td>
    <td>Plan identifier string of image being deployed.</td>
</tr>
<tr id="parameter-publisherId">
    <td><CopyableCode code="publisherId" /></td>
    <td><code>string</code></td>
    <td>Publisher identifier string of image being deployed.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID that identifies an Azure subscription.</td>
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

Get marketplace terms.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure_extras.marketplace_ordering.marketplace_agreements
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND offerType = '{{ offerType }}' -- required
AND publisherId = '{{ publisherId }}' -- required
AND offerId = '{{ offerId }}' -- required
AND planId = '{{ planId }}' -- required
;
```
</TabItem>
<TabItem value="list">

List marketplace agreements in the subscription.

```sql
SELECT
id,
name,
properties,
type
FROM azure_extras.marketplace_ordering.marketplace_agreements
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Save marketplace terms.

```sql
INSERT INTO azure_extras.marketplace_ordering.marketplace_agreements (
data__properties,
offerType,
subscriptionId,
publisherId,
offerId,
planId
)
SELECT 
'{{ properties }}',
'{{ offerType }}',
'{{ subscriptionId }}',
'{{ publisherId }}',
'{{ offerId }}',
'{{ planId }}'
RETURNING
id,
name,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: marketplace_agreements
  props:
    - name: offerType
      value: string
      description: Required parameter for the marketplace_agreements resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the marketplace_agreements resource.
    - name: publisherId
      value: string
      description: Required parameter for the marketplace_agreements resource.
    - name: offerId
      value: string
      description: Required parameter for the marketplace_agreements resource.
    - name: planId
      value: string
      description: Required parameter for the marketplace_agreements resource.
    - name: properties
      value: object
      description: |
        Represents the properties of the resource.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="sign"
    values={[
        { label: 'sign', value: 'sign' },
        { label: 'cancel', value: 'cancel' }
    ]}
>
<TabItem value="sign">

Sign marketplace terms.

```sql
EXEC azure_extras.marketplace_ordering.marketplace_agreements.sign 
@subscriptionId='{{ subscriptionId }}' --required, 
@publisherId='{{ publisherId }}' --required, 
@offerId='{{ offerId }}' --required, 
@planId='{{ planId }}' --required
;
```
</TabItem>
<TabItem value="cancel">

Cancel marketplace terms.

```sql
EXEC azure_extras.marketplace_ordering.marketplace_agreements.cancel 
@subscriptionId='{{ subscriptionId }}' --required, 
@publisherId='{{ publisherId }}' --required, 
@offerId='{{ offerId }}' --required, 
@planId='{{ planId }}' --required
;
```
</TabItem>
</Tabs>
