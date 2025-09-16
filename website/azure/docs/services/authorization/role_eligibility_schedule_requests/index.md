--- 
title: role_eligibility_schedule_requests
hide_title: false
hide_table_of_contents: false
keywords:
  - role_eligibility_schedule_requests
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

Creates, updates, deletes, gets or lists a <code>role_eligibility_schedule_requests</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>role_eligibility_schedule_requests</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.role_eligibility_schedule_requests" /></td></tr>
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

OK - Returns information about the role eligibility schedule request.

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
    <td>The role eligibility schedule request ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The role eligibility schedule request name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Role eligibility schedule request properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The role eligibility schedule request type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_for_scope">

OK - Returns an array of role eligibility schedule requests.

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
    <td>The role eligibility schedule request ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The role eligibility schedule request name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Role eligibility schedule request properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The role eligibility schedule request type.</td>
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
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-roleEligibilityScheduleRequestName"><code>roleEligibilityScheduleRequestName</code></a></td>
    <td></td>
    <td>Get the specified role eligibility schedule request.</td>
</tr>
<tr>
    <td><a href="#list_for_scope"><CopyableCode code="list_for_scope" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Gets role eligibility schedule requests for a scope.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-roleEligibilityScheduleRequestName"><code>roleEligibilityScheduleRequestName</code></a></td>
    <td></td>
    <td>Creates a role eligibility schedule request.</td>
</tr>
<tr>
    <td><a href="#cancel"><CopyableCode code="cancel" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-roleEligibilityScheduleRequestName"><code>roleEligibilityScheduleRequestName</code></a></td>
    <td></td>
    <td>Cancels a pending role eligibility schedule request.</td>
</tr>
<tr>
    <td><a href="#validate"><CopyableCode code="validate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-roleEligibilityScheduleRequestName"><code>roleEligibilityScheduleRequestName</code></a></td>
    <td></td>
    <td>Validates a new role eligibility schedule request.</td>
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
<tr id="parameter-roleEligibilityScheduleRequestName">
    <td><CopyableCode code="roleEligibilityScheduleRequestName" /></td>
    <td><code>string</code></td>
    <td>The name of the role eligibility request to validate.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope of the role eligibility request to validate.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation. Use $filter=atScope() to return all role eligibility schedule requests at or above the scope. Use $filter=principalId eq &#123;id&#125; to return all role eligibility schedule requests at, above or below the scope for the specified principal. Use $filter=asRequestor() to return all role eligibility schedule requests requested by the current user. Use $filter=asTarget() to return all role eligibility schedule requests created for the current user. Use $filter=asApprover() to return all role eligibility schedule requests where the current user is an approver.</td>
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

Get the specified role eligibility schedule request.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.role_eligibility_schedule_requests
WHERE scope = '{{ scope }}' -- required
AND roleEligibilityScheduleRequestName = '{{ roleEligibilityScheduleRequestName }}' -- required
;
```
</TabItem>
<TabItem value="list_for_scope">

Gets role eligibility schedule requests for a scope.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.role_eligibility_schedule_requests
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

Creates a role eligibility schedule request.

```sql
INSERT INTO azure.authorization.role_eligibility_schedule_requests (
data__properties,
scope,
roleEligibilityScheduleRequestName
)
SELECT 
'{{ properties }}',
'{{ scope }}',
'{{ roleEligibilityScheduleRequestName }}'
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
- name: role_eligibility_schedule_requests
  props:
    - name: scope
      value: string
      description: Required parameter for the role_eligibility_schedule_requests resource.
    - name: roleEligibilityScheduleRequestName
      value: string
      description: Required parameter for the role_eligibility_schedule_requests resource.
    - name: properties
      value: object
      description: |
        Role eligibility schedule request properties.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="cancel"
    values={[
        { label: 'cancel', value: 'cancel' },
        { label: 'validate', value: 'validate' }
    ]}
>
<TabItem value="cancel">

Cancels a pending role eligibility schedule request.

```sql
EXEC azure.authorization.role_eligibility_schedule_requests.cancel 
@scope='{{ scope }}' --required, 
@roleEligibilityScheduleRequestName='{{ roleEligibilityScheduleRequestName }}' --required
;
```
</TabItem>
<TabItem value="validate">

Validates a new role eligibility schedule request.

```sql
EXEC azure.authorization.role_eligibility_schedule_requests.validate 
@scope='{{ scope }}' --required, 
@roleEligibilityScheduleRequestName='{{ roleEligibilityScheduleRequestName }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
