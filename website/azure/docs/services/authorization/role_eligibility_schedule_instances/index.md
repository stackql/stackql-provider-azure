--- 
title: role_eligibility_schedule_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - role_eligibility_schedule_instances
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

Creates, updates, deletes, gets or lists a <code>role_eligibility_schedule_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>role_eligibility_schedule_instances</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.role_eligibility_schedule_instances" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_for_scope', value: 'list_for_scope' }
    ]}
>
<TabItem value="get">

OK - Returns information about the role eligibility schedule instance.

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
    <td>The role eligibility schedule instance ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The role eligibility schedule instance name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Role eligibility schedule instance properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The role eligibility schedule instance type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_for_scope">

OK - Returns array of role eligibility schedule instances.

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
    <td>The role eligibility schedule instance ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The role eligibility schedule instance name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Role eligibility schedule instance properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The role eligibility schedule instance type.</td>
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
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-roleEligibilityScheduleInstanceName"><code>roleEligibilityScheduleInstanceName</code></a></td>
    <td></td>
    <td>Gets the specified role eligibility schedule instance.</td>
</tr>
<tr>
    <td><a href="#list_for_scope"><CopyableCode code="list_for_scope" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Gets role eligibility schedule instances of a role eligibility schedule.</td>
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
<tr id="parameter-roleEligibilityScheduleInstanceName">
    <td><CopyableCode code="roleEligibilityScheduleInstanceName" /></td>
    <td><code>string</code></td>
    <td>The name (hash of schedule name + time) of the role eligibility schedule to get.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope of the role eligibility schedule.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation. Use $filter=atScope() to return all role assignment schedules at or above the scope. Use $filter=principalId eq &#123;id&#125; to return all role assignment schedules at, above or below the scope for the specified principal. Use $filter=assignedTo('&#123;userId&#125;') to return all role eligibility schedules for the user. Use $filter=asTarget() to return all role eligibility schedules created for the current user.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_for_scope', value: 'list_for_scope' }
    ]}
>
<TabItem value="get">

Gets the specified role eligibility schedule instance.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.role_eligibility_schedule_instances
WHERE scope = '{{ scope }}' -- required
AND roleEligibilityScheduleInstanceName = '{{ roleEligibilityScheduleInstanceName }}' -- required
;
```
</TabItem>
<TabItem value="list_for_scope">

Gets role eligibility schedule instances of a role eligibility schedule.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.role_eligibility_schedule_instances
WHERE scope = '{{ scope }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>
