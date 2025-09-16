--- 
title: scope_access_review_history_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - scope_access_review_history_definitions
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

Creates, updates, deletes, gets or lists a <code>scope_access_review_history_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>scope_access_review_history_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.scope_access_review_history_definitions" /></td></tr>
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

AccessReviewHistoryDefinition

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
    <td>The access review history definition id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The access review history definition unique id.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Access Review History Definition properties.</td>
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
    <td>The access review history definition id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The access review history definition unique id.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Access Review History Definition properties.</td>
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
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-historyDefinitionId"><code>historyDefinitionId</code></a></td>
    <td></td>
    <td>Get access review history definition by definition Id</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Lists the accessReviewHistoryDefinitions available from this provider, definition instances are only available for 30 days after creation.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-historyDefinitionId"><code>historyDefinitionId</code></a></td>
    <td></td>
    <td>Create a scheduled or one-time Access Review History Definition</td>
</tr>
<tr>
    <td><a href="#delete_by_id"><CopyableCode code="delete_by_id" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-historyDefinitionId"><code>historyDefinitionId</code></a></td>
    <td></td>
    <td>Delete an access review history definition</td>
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
<tr id="parameter-historyDefinitionId">
    <td><CopyableCode code="historyDefinitionId" /></td>
    <td><code>string</code></td>
    <td>The id of the access review history definition.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope of the operation or resource. Valid scopes are: subscription (format: '/subscriptions/&#123;subscriptionId&#125;'), resource group (format: '/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;', or resource (format: '/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/[&#123;parentResourcePath&#125;/]&#123;resourceType&#125;/&#123;resourceName&#125;'</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation. Only standard filters on definition name and created date are supported</td>
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

Get access review history definition by definition Id

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.scope_access_review_history_definitions
WHERE scope = '{{ scope }}' -- required
AND historyDefinitionId = '{{ historyDefinitionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists the accessReviewHistoryDefinitions available from this provider, definition instances are only available for 30 days after creation.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.scope_access_review_history_definitions
WHERE scope = '{{ scope }}' -- required
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

Create a scheduled or one-time Access Review History Definition

```sql
INSERT INTO azure.authorization.scope_access_review_history_definitions (
data__displayName,
data__decisions,
data__scopes,
data__settings,
data__instances,
scope,
historyDefinitionId
)
SELECT 
'{{ displayName }}',
'{{ decisions }}',
'{{ scopes }}',
'{{ settings }}',
'{{ instances }}',
'{{ scope }}',
'{{ historyDefinitionId }}'
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
- name: scope_access_review_history_definitions
  props:
    - name: scope
      value: string
      description: Required parameter for the scope_access_review_history_definitions resource.
    - name: historyDefinitionId
      value: string
      description: Required parameter for the scope_access_review_history_definitions resource.
    - name: displayName
      value: string
      description: |
        The display name for the history definition.
    - name: decisions
      value: array
      description: |
        Collection of review decisions which the history data should be filtered on. For example if Approve and Deny are supplied the data will only contain review results in which the decision maker approved or denied a review request.
    - name: scopes
      value: array
      description: |
        A collection of scopes used when selecting review history data
    - name: settings
      value: object
      description: |
        Recurrence settings for recurring history reports, skip for one-time reports.
    - name: instances
      value: array
      description: |
        Set of access review history instances for this history definition.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_by_id"
    values={[
        { label: 'delete_by_id', value: 'delete_by_id' }
    ]}
>
<TabItem value="delete_by_id">

Delete an access review history definition

```sql
DELETE FROM azure.authorization.scope_access_review_history_definitions
WHERE scope = '{{ scope }}' --required
AND historyDefinitionId = '{{ historyDefinitionId }}' --required
;
```
</TabItem>
</Tabs>
