--- 
title: access_review_instance_my_decisions
hide_title: false
hide_table_of_contents: false
keywords:
  - access_review_instance_my_decisions
  - authorization
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

Creates, updates, deletes, gets or lists an <code>access_review_instance_my_decisions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>access_review_instance_my_decisions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.access_review_instance_my_decisions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_id"
    values={[
        { label: 'get_by_id', value: 'get_by_id' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_by_id">

Describe the result of a successful operation.

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
    <td>The access review decision id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The access review decision name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Access Review Decision properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Describe the result of a successful operation.

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
    <td>The access review decision id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The access review decision name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Access Review Decision properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type.</td>
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
    <td><a href="#get_by_id"><CopyableCode code="get_by_id" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scheduleDefinitionId"><code>scheduleDefinitionId</code></a>, <a href="#parameter-id"><code>id</code></a>, <a href="#parameter-decisionId"><code>decisionId</code></a></td>
    <td></td>
    <td>Get my single access review instance decision.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scheduleDefinitionId"><code>scheduleDefinitionId</code></a>, <a href="#parameter-id"><code>id</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Get my access review instance decisions.</td>
</tr>
<tr>
    <td><a href="#patch"><CopyableCode code="patch" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-scheduleDefinitionId"><code>scheduleDefinitionId</code></a>, <a href="#parameter-id"><code>id</code></a>, <a href="#parameter-decisionId"><code>decisionId</code></a></td>
    <td></td>
    <td>Record a decision.</td>
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
<tr id="parameter-decisionId">
    <td><CopyableCode code="decisionId" /></td>
    <td><code>string</code></td>
    <td>The id of the decision record.</td>
</tr>
<tr id="parameter-id">
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The id of the access review instance.</td>
</tr>
<tr id="parameter-scheduleDefinitionId">
    <td><CopyableCode code="scheduleDefinitionId" /></td>
    <td><code>string</code></td>
    <td>The id of the access review schedule definition.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation. Other than standard filters, one custom filter option is supported : 'assignedToMeToReview()'. When one specified $filter=assignedToMeToReview(), only items that are assigned to the calling user to review are returned</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_id"
    values={[
        { label: 'get_by_id', value: 'get_by_id' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_by_id">

Get my single access review instance decision.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.access_review_instance_my_decisions
WHERE scheduleDefinitionId = '{{ scheduleDefinitionId }}' -- required
AND id = '{{ id }}' -- required
AND decisionId = '{{ decisionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get my access review instance decisions.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.access_review_instance_my_decisions
WHERE scheduleDefinitionId = '{{ scheduleDefinitionId }}' -- required
AND id = '{{ id }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="patch"
    values={[
        { label: 'patch', value: 'patch' }
    ]}
>
<TabItem value="patch">

Record a decision.

```sql
UPDATE azure.authorization.access_review_instance_my_decisions
SET 
data__decision = '{{ decision }}',
data__justification = '{{ justification }}',
data__insights = '{{ insights }}'
WHERE 
scheduleDefinitionId = '{{ scheduleDefinitionId }}' --required
AND id = '{{ id }}' --required
AND decisionId = '{{ decisionId }}' --required
RETURNING
id,
name,
properties,
type;
```
</TabItem>
</Tabs>
