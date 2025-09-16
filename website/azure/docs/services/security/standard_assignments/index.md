--- 
title: standard_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - standard_assignments
  - security
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

Creates, updates, deletes, gets or lists a <code>standard_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>standard_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.standard_assignments" /></td></tr>
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

Returns information about the standard assignment.

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of a standard assignments assignment</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Standard assignment list by scope

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of a standard assignments assignment</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
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
    <td><a href="#parameter-standardAssignmentName"><code>standardAssignmentName</code></a></td>
    <td><a href="#parameter-resourceId"><code>resourceId</code></a></td>
    <td>This operation retrieves a single standard assignment, given its name and the scope it was created at.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a></td>
    <td></td>
    <td>Get a list of all relevant standard assignments over a scope</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-standardAssignmentName"><code>standardAssignmentName</code></a></td>
    <td><a href="#parameter-resourceId"><code>resourceId</code></a></td>
    <td> This operation creates or updates a standard assignment with the given scope and name. standard assignments apply to all resources contained within their scope. For example, when you assign a policy at resource group scope, that policy applies to all resources in the group.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-standardAssignmentName"><code>standardAssignmentName</code></a></td>
    <td><a href="#parameter-resourceId"><code>resourceId</code></a></td>
    <td>This operation deletes a standard assignment, given its name and the scope it was created in. The scope of a standard assignment is the part of its ID preceding '/providers/Microsoft.Security/standardAssignments/&#123;standardAssignmentName&#125;'.</td>
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
    <td>The scope of the standard assignment. Valid scopes are: management group (format: 'providers/Microsoft.Management/managementGroups/&#123;managementGroup&#125;'), subscription (format: 'subscriptions/&#123;subscriptionId&#125;'), or security connector (format: 'subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/Microsoft.Security/securityConnectors/&#123;securityConnectorName&#125;)'</td>
</tr>
<tr id="parameter-standardAssignmentName">
    <td><CopyableCode code="standardAssignmentName" /></td>
    <td><code>string</code></td>
    <td>The standard assignments assignment key - unique key for the standard assignment</td>
</tr>
<tr id="parameter-resourceId">
    <td><CopyableCode code="resourceId" /></td>
    <td><code>string</code></td>
    <td>Optional filter for listing the assignments of a specific resource.</td>
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

This operation retrieves a single standard assignment, given its name and the scope it was created at.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.security.standard_assignments
WHERE standardAssignmentName = '{{ standardAssignmentName }}' -- required
AND resourceId = '{{ resourceId }}'
;
```
</TabItem>
<TabItem value="list">

Get a list of all relevant standard assignments over a scope

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.security.standard_assignments
WHERE scope = '{{ scope }}' -- required
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

 This operation creates or updates a standard assignment with the given scope and name. standard assignments apply to all resources contained within their scope. For example, when you assign a policy at resource group scope, that policy applies to all resources in the group.

```sql
INSERT INTO azure.security.standard_assignments (
data__properties,
standardAssignmentName,
resourceId
)
SELECT 
'{{ properties }}',
'{{ standardAssignmentName }}',
'{{ resourceId }}'
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
- name: standard_assignments
  props:
    - name: standardAssignmentName
      value: string
      description: Required parameter for the standard_assignments resource.
    - name: properties
      value: object
      description: |
        Properties of a standard assignments assignment
    - name: resourceId
      value: string
      description: Optional filter for listing the assignments of a specific resource.
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

This operation deletes a standard assignment, given its name and the scope it was created in. The scope of a standard assignment is the part of its ID preceding '/providers/Microsoft.Security/standardAssignments/&#123;standardAssignmentName&#125;'.

```sql
DELETE FROM azure.security.standard_assignments
WHERE standardAssignmentName = '{{ standardAssignmentName }}' --required
AND resourceId = '{{ resourceId }}'
;
```
</TabItem>
</Tabs>
