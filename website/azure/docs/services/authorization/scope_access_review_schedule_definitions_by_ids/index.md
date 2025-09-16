--- 
title: scope_access_review_schedule_definitions_by_ids
hide_title: false
hide_table_of_contents: false
keywords:
  - scope_access_review_schedule_definitions_by_ids
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

Creates, updates, deletes, gets or lists a <code>scope_access_review_schedule_definitions_by_ids</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>scope_access_review_schedule_definitions_by_ids</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.scope_access_review_schedule_definitions_by_ids" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-scheduleDefinitionId"><code>scheduleDefinitionId</code></a></td>
    <td></td>
    <td>Create or Update access review schedule definition.</td>
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
<tr id="parameter-scheduleDefinitionId">
    <td><CopyableCode code="scheduleDefinitionId" /></td>
    <td><code>string</code></td>
    <td>The id of the access review schedule definition.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope of the operation or resource. Valid scopes are: subscription (format: '/subscriptions/&#123;subscriptionId&#125;'), resource group (format: '/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;', or resource (format: '/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/[&#123;parentResourcePath&#125;/]&#123;resourceType&#125;/&#123;resourceName&#125;'</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Create or Update access review schedule definition.

```sql
INSERT INTO azure.authorization.scope_access_review_schedule_definitions_by_ids (
data__displayName,
data__descriptionForAdmins,
data__descriptionForReviewers,
data__settings,
data__reviewers,
data__backupReviewers,
data__instances,
scope,
scheduleDefinitionId
)
SELECT 
'{{ displayName }}',
'{{ descriptionForAdmins }}',
'{{ descriptionForReviewers }}',
'{{ settings }}',
'{{ reviewers }}',
'{{ backupReviewers }}',
'{{ instances }}',
'{{ scope }}',
'{{ scheduleDefinitionId }}'
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
- name: scope_access_review_schedule_definitions_by_ids
  props:
    - name: scope
      value: string
      description: Required parameter for the scope_access_review_schedule_definitions_by_ids resource.
    - name: scheduleDefinitionId
      value: string
      description: Required parameter for the scope_access_review_schedule_definitions_by_ids resource.
    - name: displayName
      value: string
      description: |
        The display name for the schedule definition.
    - name: descriptionForAdmins
      value: string
      description: |
        The description provided by the access review creator and visible to admins.
    - name: descriptionForReviewers
      value: string
      description: |
        The description provided by the access review creator to be shown to reviewers.
    - name: settings
      value: object
      description: |
        Access Review Settings.
    - name: reviewers
      value: array
      description: |
        This is the collection of reviewers.
    - name: backupReviewers
      value: array
      description: |
        This is the collection of backup reviewers.
    - name: instances
      value: array
      description: |
        This is the collection of instances returned when one does an expand on it.
```
</TabItem>
</Tabs>
