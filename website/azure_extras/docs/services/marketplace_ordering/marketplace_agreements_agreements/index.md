--- 
title: marketplace_agreements_agreements
hide_title: false
hide_table_of_contents: false
keywords:
  - marketplace_agreements_agreements
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

Creates, updates, deletes, gets or lists a <code>marketplace_agreements_agreements</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>marketplace_agreements_agreements</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.marketplace_ordering.marketplace_agreements_agreements" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-publisherId"><code>publisherId</code></a>, <a href="#parameter-offerId"><code>offerId</code></a>, <a href="#parameter-planId"><code>planId</code></a></td>
    <td></td>
    <td>Get marketplace agreement.</td>
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
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Get marketplace agreement.

```sql
SELECT
id,
name,
properties,
type
FROM azure_extras.marketplace_ordering.marketplace_agreements_agreements
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND publisherId = '{{ publisherId }}' -- required
AND offerId = '{{ offerId }}' -- required
AND planId = '{{ planId }}' -- required
;
```
</TabItem>
</Tabs>
