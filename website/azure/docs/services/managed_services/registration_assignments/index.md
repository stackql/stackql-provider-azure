--- 
title: registration_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - registration_assignments
  - managed_services
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

Creates, updates, deletes, gets or lists a <code>registration_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>registration_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_services.registration_assignments" /></td></tr>
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

OK - Returns the registration assignment.

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
    <td>The fully qualified path of the registration assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the registration assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of a registration assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The metadata for the registration assignment resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the Azure resource (Microsoft.ManagedServices/registrationAssignments).</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK - Returns a list of the registration assignments.

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
    <td>The fully qualified path of the registration assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the registration assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of a registration assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The metadata for the registration assignment resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the Azure resource (Microsoft.ManagedServices/registrationAssignments).</td>
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
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-registrationAssignmentId"><code>registrationAssignmentId</code></a></td>
    <td><a href="#parameter-$expandRegistrationDefinition"><code>$expandRegistrationDefinition</code></a></td>
    <td>Gets the details of the specified registration assignment.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a></td>
    <td><a href="#parameter-$expandRegistrationDefinition"><code>$expandRegistrationDefinition</code></a>, <a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Gets a list of the registration assignments.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-registrationAssignmentId"><code>registrationAssignmentId</code></a></td>
    <td></td>
    <td>Creates or updates a registration assignment.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-registrationAssignmentId"><code>registrationAssignmentId</code></a></td>
    <td></td>
    <td>Deletes the specified registration assignment.</td>
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
<tr id="parameter-registrationAssignmentId">
    <td><CopyableCode code="registrationAssignmentId" /></td>
    <td><code>string</code></td>
    <td>The GUID of the registration assignment.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope of the resource.</td>
</tr>
<tr id="parameter-$expandRegistrationDefinition">
    <td><CopyableCode code="$expandRegistrationDefinition" /></td>
    <td><code>boolean</code></td>
    <td>The flag indicating whether to return the registration definition details along with the registration assignment details.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter query parameter to filter managed services resources by.</td>
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

Gets the details of the specified registration assignment.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.managed_services.registration_assignments
WHERE scope = '{{ scope }}' -- required
AND registrationAssignmentId = '{{ registrationAssignmentId }}' -- required
AND $expandRegistrationDefinition = '{{ $expandRegistrationDefinition }}'
;
```
</TabItem>
<TabItem value="list">

Gets a list of the registration assignments.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.managed_services.registration_assignments
WHERE scope = '{{ scope }}' -- required
AND $expandRegistrationDefinition = '{{ $expandRegistrationDefinition }}'
AND $filter = '{{ $filter }}'
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

Creates or updates a registration assignment.

```sql
INSERT INTO azure.managed_services.registration_assignments (
data__properties,
scope,
registrationAssignmentId
)
SELECT 
'{{ properties }}',
'{{ scope }}',
'{{ registrationAssignmentId }}'
RETURNING
id,
name,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: registration_assignments
  props:
    - name: scope
      value: string
      description: Required parameter for the registration_assignments resource.
    - name: registrationAssignmentId
      value: string
      description: Required parameter for the registration_assignments resource.
    - name: properties
      value: object
      description: |
        The properties of a registration assignment.
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

Deletes the specified registration assignment.

```sql
DELETE FROM azure.managed_services.registration_assignments
WHERE scope = '{{ scope }}' --required
AND registrationAssignmentId = '{{ registrationAssignmentId }}' --required
;
```
</TabItem>
</Tabs>
