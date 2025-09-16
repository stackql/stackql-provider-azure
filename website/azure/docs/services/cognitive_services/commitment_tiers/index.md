--- 
title: commitment_tiers
hide_title: false
hide_table_of_contents: false
keywords:
  - commitment_tiers
  - cognitive_services
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

Creates, updates, deletes, gets or lists a <code>commitment_tiers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>commitment_tiers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cognitive_services.commitment_tiers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

OK.

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
    <td><CopyableCode code="cost" /></td>
    <td><code>object</code></td>
    <td>Cognitive Services account commitment cost.</td>
</tr>
<tr>
    <td><CopyableCode code="hostingModel" /></td>
    <td><code>string</code></td>
    <td>Account hosting model.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind (type) of cognitive service account.</td>
</tr>
<tr>
    <td><CopyableCode code="maxCount" /></td>
    <td><code>integer (int32)</code></td>
    <td>Commitment period commitment max count.</td>
</tr>
<tr>
    <td><CopyableCode code="planType" /></td>
    <td><code>string</code></td>
    <td>Commitment plan type.</td>
</tr>
<tr>
    <td><CopyableCode code="quota" /></td>
    <td><code>object</code></td>
    <td>Cognitive Services account commitment quota.</td>
</tr>
<tr>
    <td><CopyableCode code="skuName" /></td>
    <td><code>string</code></td>
    <td>The name of the SKU. Ex - P3. It is typically a letter+number code</td>
</tr>
<tr>
    <td><CopyableCode code="tier" /></td>
    <td><code>string</code></td>
    <td>Commitment period commitment tier.</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td></td>
    <td>List Commitment Tiers.</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

List Commitment Tiers.

```sql
SELECT
cost,
hostingModel,
kind,
maxCount,
planType,
quota,
skuName,
tier
FROM azure.cognitive_services.commitment_tiers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND location = '{{ location }}' -- required
;
```
</TabItem>
</Tabs>
