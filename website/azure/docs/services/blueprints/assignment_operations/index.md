--- 
title: assignment_operations
hide_title: false
hide_table_of_contents: false
keywords:
  - assignment_operations
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

Creates, updates, deletes, gets or lists an <code>assignment_operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>assignment_operations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.blueprints.assignment_operations" /></td></tr>
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

OK -- blueprint assignment operation retrieved.

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
    <td>String Id used to locate any resource on Azure.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties for AssignmentOperation.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK -- all blueprint assignment operations retrieved.

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
    <td>String Id used to locate any resource on Azure.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties for AssignmentOperation.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of this resource.</td>
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
    <td><a href="#parameter-resourceScope"><code>resourceScope</code></a>, <a href="#parameter-assignmentName"><code>assignmentName</code></a>, <a href="#parameter-assignmentOperationName"><code>assignmentOperationName</code></a></td>
    <td></td>
    <td>Get a blueprint assignment operation.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceScope"><code>resourceScope</code></a>, <a href="#parameter-assignmentName"><code>assignmentName</code></a></td>
    <td></td>
    <td>List operations for given blueprint assignment within a subscription or a management group.</td>
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
<tr id="parameter-assignmentOperationName">
    <td><CopyableCode code="assignmentOperationName" /></td>
    <td><code>string</code></td>
    <td>Name of the blueprint assignment operation.</td>
</tr>
<tr id="parameter-resourceScope">
    <td><CopyableCode code="resourceScope" /></td>
    <td><code>string</code></td>
    <td>The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/&#123;managementGroup&#125;'), subscription (format: '/subscriptions/&#123;subscriptionId&#125;').</td>
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

Get a blueprint assignment operation.

```sql
SELECT
id,
name,
properties,
type
FROM azure.blueprints.assignment_operations
WHERE resourceScope = '{{ resourceScope }}' -- required
AND assignmentName = '{{ assignmentName }}' -- required
AND assignmentOperationName = '{{ assignmentOperationName }}' -- required
;
```
</TabItem>
<TabItem value="list">

List operations for given blueprint assignment within a subscription or a management group.

```sql
SELECT
id,
name,
properties,
type
FROM azure.blueprints.assignment_operations
WHERE resourceScope = '{{ resourceScope }}' -- required
AND assignmentName = '{{ assignmentName }}' -- required
;
```
</TabItem>
</Tabs>
