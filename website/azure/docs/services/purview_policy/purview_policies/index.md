--- 
title: purview_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - purview_policies
  - purview_policy
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

Creates, updates, deletes, gets or lists a <code>purview_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>purview_policies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.purview_policy.purview_policies" /></td></tr>
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

Azure operation completed successfully.

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
    <td><CopyableCode code="decisionRules" /></td>
    <td><code>array</code></td>
    <td>Array of decision rules for the policy</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>The etag version of a policy</td>
</tr>
<tr>
    <td><CopyableCode code="expiryTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp of the expiry time of the policy (UTC).</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The policy kind</td>
</tr>
<tr>
    <td><CopyableCode code="members" /></td>
    <td><code>object</code></td>
    <td>Members of the policy</td>
</tr>
<tr>
    <td><CopyableCode code="requestor" /></td>
    <td><code>string</code></td>
    <td>The AAD member who requested the policy</td>
</tr>
<tr>
    <td><CopyableCode code="scopes" /></td>
    <td><code>array</code></td>
    <td>Array of scopes where the policy is published</td>
</tr>
<tr>
    <td><CopyableCode code="source" /></td>
    <td><code>string</code></td>
    <td>The policy source</td>
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
    <td><a href="#parameter-scope"><code>scope</code></a></td>
    <td><a href="#parameter-skipToken"><code>skipToken</code></a>, <a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>The API lists the Azure purview RBAC policies affecting the scope. The scope can be any valid ARM resource id</td>
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
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope at which the operation is performed.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Supported filters : $filter=policyType eq SelfService, $filter=policyType eq SqlDevops. Returns only the policies of the specified type. If not specified, all policies are returned.</td>
</tr>
<tr id="parameter-skipToken">
    <td><CopyableCode code="skipToken" /></td>
    <td><code>string</code></td>
    <td>Paging key to paginate to next page.</td>
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

The API lists the Azure purview RBAC policies affecting the scope. The scope can be any valid ARM resource id

```sql
SELECT
decisionRules,
etag,
expiryTime,
kind,
members,
requestor,
scopes,
source
FROM azure.purview_policy.purview_policies
WHERE scope = '{{ scope }}' -- required
AND skipToken = '{{ skipToken }}'
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>
