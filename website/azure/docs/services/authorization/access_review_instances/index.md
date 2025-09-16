--- 
title: access_review_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - access_review_instances
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

Creates, updates, deletes, gets or lists an <code>access_review_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>access_review_instances</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.access_review_instances" /></td></tr>
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
    <td>The access review instance id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The access review instance name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Access Review properties.</td>
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
    <td>The access review instance id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The access review instance name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Access Review properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-scheduleDefinitionId"><code>scheduleDefinitionId</code></a>, <a href="#parameter-id"><code>id</code></a></td>
    <td></td>
    <td>Get access review instances</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-scheduleDefinitionId"><code>scheduleDefinitionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Get access review instances</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-scheduleDefinitionId"><code>scheduleDefinitionId</code></a>, <a href="#parameter-id"><code>id</code></a></td>
    <td></td>
    <td>Update access review instance.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-scheduleDefinitionId"><code>scheduleDefinitionId</code></a>, <a href="#parameter-id"><code>id</code></a></td>
    <td></td>
    <td>An action to stop an access review instance.</td>
</tr>
<tr>
    <td><a href="#reset_decisions"><CopyableCode code="reset_decisions" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-scheduleDefinitionId"><code>scheduleDefinitionId</code></a>, <a href="#parameter-id"><code>id</code></a></td>
    <td></td>
    <td>An action to reset all decisions for an access review instance.</td>
</tr>
<tr>
    <td><a href="#apply_decisions"><CopyableCode code="apply_decisions" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-scheduleDefinitionId"><code>scheduleDefinitionId</code></a>, <a href="#parameter-id"><code>id</code></a></td>
    <td></td>
    <td>An action to apply all decisions for an access review instance.</td>
</tr>
<tr>
    <td><a href="#send_reminders"><CopyableCode code="send_reminders" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-scheduleDefinitionId"><code>scheduleDefinitionId</code></a>, <a href="#parameter-id"><code>id</code></a></td>
    <td></td>
    <td>An action to send reminders for an access review instance.</td>
</tr>
<tr>
    <td><a href="#accept_recommendations"><CopyableCode code="accept_recommendations" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-scheduleDefinitionId"><code>scheduleDefinitionId</code></a>, <a href="#parameter-id"><code>id</code></a></td>
    <td></td>
    <td>An action to accept recommendations for decision in an access review instance.</td>
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
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
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

Get access review instances

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.access_review_instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND scheduleDefinitionId = '{{ scheduleDefinitionId }}' -- required
AND id = '{{ id }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get access review instances

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.access_review_instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND scheduleDefinitionId = '{{ scheduleDefinitionId }}' -- required
AND $filter = '{{ $filter }}'
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

Update access review instance.

```sql
INSERT INTO azure.authorization.access_review_instances (
data__startDateTime,
data__endDateTime,
data__reviewers,
data__backupReviewers,
subscriptionId,
scheduleDefinitionId,
id
)
SELECT 
'{{ startDateTime }}',
'{{ endDateTime }}',
'{{ reviewers }}',
'{{ backupReviewers }}',
'{{ subscriptionId }}',
'{{ scheduleDefinitionId }}',
'{{ id }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: access_review_instances
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the access_review_instances resource.
    - name: scheduleDefinitionId
      value: string
      description: Required parameter for the access_review_instances resource.
    - name: id
      value: string
      description: Required parameter for the access_review_instances resource.
    - name: startDateTime
      value: string
      description: |
        The DateTime when the review instance is scheduled to be start.
    - name: endDateTime
      value: string
      description: |
        The DateTime when the review instance is scheduled to end.
    - name: reviewers
      value: array
      description: |
        This is the collection of reviewers.
    - name: backupReviewers
      value: array
      description: |
        This is the collection of backup reviewers.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="stop"
    values={[
        { label: 'stop', value: 'stop' },
        { label: 'reset_decisions', value: 'reset_decisions' },
        { label: 'apply_decisions', value: 'apply_decisions' },
        { label: 'send_reminders', value: 'send_reminders' },
        { label: 'accept_recommendations', value: 'accept_recommendations' }
    ]}
>
<TabItem value="stop">

An action to stop an access review instance.

```sql
EXEC azure.authorization.access_review_instances.stop 
@subscriptionId='{{ subscriptionId }}' --required, 
@scheduleDefinitionId='{{ scheduleDefinitionId }}' --required, 
@id='{{ id }}' --required
;
```
</TabItem>
<TabItem value="reset_decisions">

An action to reset all decisions for an access review instance.

```sql
EXEC azure.authorization.access_review_instances.reset_decisions 
@subscriptionId='{{ subscriptionId }}' --required, 
@scheduleDefinitionId='{{ scheduleDefinitionId }}' --required, 
@id='{{ id }}' --required
;
```
</TabItem>
<TabItem value="apply_decisions">

An action to apply all decisions for an access review instance.

```sql
EXEC azure.authorization.access_review_instances.apply_decisions 
@subscriptionId='{{ subscriptionId }}' --required, 
@scheduleDefinitionId='{{ scheduleDefinitionId }}' --required, 
@id='{{ id }}' --required
;
```
</TabItem>
<TabItem value="send_reminders">

An action to send reminders for an access review instance.

```sql
EXEC azure.authorization.access_review_instances.send_reminders 
@subscriptionId='{{ subscriptionId }}' --required, 
@scheduleDefinitionId='{{ scheduleDefinitionId }}' --required, 
@id='{{ id }}' --required
;
```
</TabItem>
<TabItem value="accept_recommendations">

An action to accept recommendations for decision in an access review instance.

```sql
EXEC azure.authorization.access_review_instances.accept_recommendations 
@scheduleDefinitionId='{{ scheduleDefinitionId }}' --required, 
@id='{{ id }}' --required
;
```
</TabItem>
</Tabs>
