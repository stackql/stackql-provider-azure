--- 
title: received_routes
hide_title: false
hide_table_of_contents: false
keywords:
  - received_routes
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

Creates, updates, deletes, gets or lists a <code>received_routes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>received_routes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.peering.received_routes" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_peering"
    values={[
        { label: 'list_by_peering', value: 'list_by_peering' }
    ]}
>
<TabItem value="list_by_peering">

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
    <td><CopyableCode code="asPath" /></td>
    <td><code>string</code></td>
    <td>The AS path for the prefix.</td>
</tr>
<tr>
    <td><CopyableCode code="nextHop" /></td>
    <td><code>string</code></td>
    <td>The next hop for the prefix.</td>
</tr>
<tr>
    <td><CopyableCode code="originAsValidationState" /></td>
    <td><code>string</code></td>
    <td>The origin AS change information for the prefix.</td>
</tr>
<tr>
    <td><CopyableCode code="prefix" /></td>
    <td><code>string</code></td>
    <td>The prefix.</td>
</tr>
<tr>
    <td><CopyableCode code="receivedTimestamp" /></td>
    <td><code>string</code></td>
    <td>The received timestamp associated with the prefix.</td>
</tr>
<tr>
    <td><CopyableCode code="rpkiValidationState" /></td>
    <td><code>string</code></td>
    <td>The RPKI validation state for the prefix and origin AS that's listed in the AS path.</td>
</tr>
<tr>
    <td><CopyableCode code="trustAnchor" /></td>
    <td><code>string</code></td>
    <td>The authority which holds the Route Origin Authorization record for the prefix, if any.</td>
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
    <td><a href="#list_by_peering"><CopyableCode code="list_by_peering" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-peeringName"><code>peeringName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-prefix"><code>prefix</code></a>, <a href="#parameter-asPath"><code>asPath</code></a>, <a href="#parameter-originAsValidationState"><code>originAsValidationState</code></a>, <a href="#parameter-rpkiValidationState"><code>rpkiValidationState</code></a>, <a href="#parameter-$skipToken"><code>$skipToken</code></a></td>
    <td>Lists the prefixes received over the specified peering under the given subscription and resource group.</td>
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
    <td>The name of the peering.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Azure subscription ID.</td>
</tr>
<tr id="parameter-$skipToken">
    <td><CopyableCode code="$skipToken" /></td>
    <td><code>string</code></td>
    <td>The optional page continuation token that is used in the event of paginated result.</td>
</tr>
<tr id="parameter-asPath">
    <td><CopyableCode code="asPath" /></td>
    <td><code>string</code></td>
    <td>The optional AS path that can be used to filter the routes.</td>
</tr>
<tr id="parameter-originAsValidationState">
    <td><CopyableCode code="originAsValidationState" /></td>
    <td><code>string</code></td>
    <td>The optional origin AS validation state that can be used to filter the routes.</td>
</tr>
<tr id="parameter-prefix">
    <td><CopyableCode code="prefix" /></td>
    <td><code>string</code></td>
    <td>The optional prefix that can be used to filter the routes.</td>
</tr>
<tr id="parameter-rpkiValidationState">
    <td><CopyableCode code="rpkiValidationState" /></td>
    <td><code>string</code></td>
    <td>The optional RPKI validation state that can be used to filter the routes.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_peering"
    values={[
        { label: 'list_by_peering', value: 'list_by_peering' }
    ]}
>
<TabItem value="list_by_peering">

Lists the prefixes received over the specified peering under the given subscription and resource group.

```sql
SELECT
asPath,
nextHop,
originAsValidationState,
prefix,
receivedTimestamp,
rpkiValidationState,
trustAnchor
FROM azure.peering.received_routes
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND peeringName = '{{ peeringName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND prefix = '{{ prefix }}'
AND asPath = '{{ asPath }}'
AND originAsValidationState = '{{ originAsValidationState }}'
AND rpkiValidationState = '{{ rpkiValidationState }}'
AND $skipToken = '{{ $skipToken }}'
;
```
</TabItem>
</Tabs>
