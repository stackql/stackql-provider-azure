--- 
title: assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - assignments
  - blueprints
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

Creates, updates, deletes, gets or lists an <code>assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>assignments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.blueprints.assignments" /></td></tr>
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

OK -- blueprint assignment retrieved.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed identity for this blueprint assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties for blueprint assignment object.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK -- all blueprint assignments retrieved.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed identity for this blueprint assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties for blueprint assignment object.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-resourceScope"><code>resourceScope</code></a>, <a href="#parameter-assignmentName"><code>assignmentName</code></a></td>
    <td></td>
    <td>Get a blueprint assignment.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceScope"><code>resourceScope</code></a></td>
    <td></td>
    <td>List blueprint assignments within a subscription or a management group.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceScope"><code>resourceScope</code></a>, <a href="#parameter-assignmentName"><code>assignmentName</code></a>, <a href="#parameter-data__identity"><code>data__identity</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create or update a blueprint assignment.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceScope"><code>resourceScope</code></a>, <a href="#parameter-assignmentName"><code>assignmentName</code></a></td>
    <td><a href="#parameter-deleteBehavior"><code>deleteBehavior</code></a></td>
    <td>Delete a blueprint assignment.</td>
</tr>
<tr>
    <td><a href="#who_is_blueprint"><CopyableCode code="who_is_blueprint" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceScope"><code>resourceScope</code></a>, <a href="#parameter-assignmentName"><code>assignmentName</code></a></td>
    <td></td>
    <td>Get Blueprints service SPN objectId</td>
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
<tr id="parameter-assignmentName">
    <td><CopyableCode code="assignmentName" /></td>
    <td><code>string</code></td>
    <td>Name of the blueprint assignment.</td>
</tr>
<tr id="parameter-resourceScope">
    <td><CopyableCode code="resourceScope" /></td>
    <td><code>string</code></td>
    <td>The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/&#123;managementGroup&#125;'), subscription (format: '/subscriptions/&#123;subscriptionId&#125;').</td>
</tr>
<tr id="parameter-deleteBehavior">
    <td><CopyableCode code="deleteBehavior" /></td>
    <td><code>string</code></td>
    <td>When deleteBehavior=all, the resources that were created by the blueprint assignment will be deleted.</td>
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

Get a blueprint assignment.

```sql
SELECT
identity,
location,
properties,
tags
FROM azure.blueprints.assignments
WHERE resourceScope = '{{ resourceScope }}' -- required
AND assignmentName = '{{ assignmentName }}' -- required
;
```
</TabItem>
<TabItem value="list">

List blueprint assignments within a subscription or a management group.

```sql
SELECT
identity,
location,
properties,
tags
FROM azure.blueprints.assignments
WHERE resourceScope = '{{ resourceScope }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Create or update a blueprint assignment.

```sql
INSERT INTO azure.blueprints.assignments (
data__identity,
data__properties,
data__tags,
data__location,
resourceScope,
assignmentName
)
SELECT 
'{{ identity }}' /* required */,
'{{ properties }}' /* required */,
'{{ tags }}',
'{{ location }}',
'{{ resourceScope }}',
'{{ assignmentName }}'
RETURNING
identity,
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: assignments
  props:
    - name: resourceScope
      value: string
      description: Required parameter for the assignments resource.
    - name: assignmentName
      value: string
      description: Required parameter for the assignments resource.
    - name: identity
      value: object
      description: |
        Managed identity for this blueprint assignment.
    - name: properties
      value: object
      description: |
        Properties for blueprint assignment object.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Delete a blueprint assignment.

```sql
DELETE FROM azure.blueprints.assignments
WHERE resourceScope = '{{ resourceScope }}' --required
AND assignmentName = '{{ assignmentName }}' --required
AND deleteBehavior = '{{ deleteBehavior }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="who_is_blueprint"
    values={[
        { label: 'who_is_blueprint', value: 'who_is_blueprint' }
    ]}
>
<TabItem value="who_is_blueprint">

Get Blueprints service SPN objectId

```sql
EXEC azure.blueprints.assignments.who_is_blueprint 
@resourceScope='{{ resourceScope }}' --required, 
@assignmentName='{{ assignmentName }}' --required
;
```
</TabItem>
</Tabs>
