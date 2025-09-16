--- 
title: rp_unbilled_prefixes
hide_title: false
hide_table_of_contents: false
keywords:
  - rp_unbilled_prefixes
  - peering
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

Creates, updates, deletes, gets or lists a <code>rp_unbilled_prefixes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>rp_unbilled_prefixes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.peering.rp_unbilled_prefixes" /></td></tr>
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
    <td><CopyableCode code="azureRegion" /></td>
    <td><code>string</code></td>
    <td>The Azure region.</td>
</tr>
<tr>
    <td><CopyableCode code="peerAsn" /></td>
    <td><code>integer (int32)</code></td>
    <td>The peer ASN.</td>
</tr>
<tr>
    <td><CopyableCode code="prefix" /></td>
    <td><code>string</code></td>
    <td>The prefix.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-peeringName"><code>peeringName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-consolidate"><code>consolidate</code></a></td>
    <td>Lists all of the RP unbilled prefixes for the specified peering</td>
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
<tr id="parameter-peeringName">
    <td><CopyableCode code="peeringName" /></td>
    <td><code>string</code></td>
    <td>The peering name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The Azure resource group name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Azure subscription ID.</td>
</tr>
<tr id="parameter-consolidate">
    <td><CopyableCode code="consolidate" /></td>
    <td><code>boolean</code></td>
    <td>Flag to enable consolidation prefixes</td>
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

Lists all of the RP unbilled prefixes for the specified peering

```sql
SELECT
azureRegion,
peerAsn,
prefix
FROM azure.peering.rp_unbilled_prefixes
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND peeringName = '{{ peeringName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND consolidate = '{{ consolidate }}'
;
```
</TabItem>
</Tabs>
