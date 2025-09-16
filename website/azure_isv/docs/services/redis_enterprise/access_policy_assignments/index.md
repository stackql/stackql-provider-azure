--- 
title: access_policy_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - access_policy_assignments
  - redis_enterprise
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>access_policy_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>access_policy_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.redis_enterprise.access_policy_assignments" /></td></tr>
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

Successfully found the access policy assignment

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the access policy assignment. (title: Redis Enterprise database access policy assignment properties)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

The list of access policy assignment.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the access policy assignment. (title: Redis Enterprise database access policy assignment properties)</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-accessPolicyAssignmentName"><code>accessPolicyAssignmentName</code></a></td>
    <td></td>
    <td>Gets information about access policy assignment for database.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a></td>
    <td></td>
    <td>Gets all access policy assignments..</td>
</tr>
<tr>
    <td><a href="#create_update"><CopyableCode code="create_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-accessPolicyAssignmentName"><code>accessPolicyAssignmentName</code></a></td>
    <td></td>
    <td>Creates/Updates a particular access policy assignment for a database</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-accessPolicyAssignmentName"><code>accessPolicyAssignmentName</code></a></td>
    <td></td>
    <td>Deletes a single access policy assignment.</td>
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
<tr id="parameter-accessPolicyAssignmentName">
    <td><CopyableCode code="accessPolicyAssignmentName" /></td>
    <td><code>string</code></td>
    <td>The name of the Redis Enterprise database access policy assignment.</td>
</tr>
<tr id="parameter-clusterName">
    <td><CopyableCode code="clusterName" /></td>
    <td><code>string</code></td>
    <td>The name of the Redis Enterprise cluster.</td>
</tr>
<tr id="parameter-databaseName">
    <td><CopyableCode code="databaseName" /></td>
    <td><code>string</code></td>
    <td>The name of the Redis Enterprise database.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
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

Gets information about access policy assignment for database.

```sql
SELECT
properties
FROM azure_isv.redis_enterprise.access_policy_assignments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
AND accessPolicyAssignmentName = '{{ accessPolicyAssignmentName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets all access policy assignments..

```sql
SELECT
properties
FROM azure_isv.redis_enterprise.access_policy_assignments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_update"
    values={[
        { label: 'create_update', value: 'create_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_update">

Creates/Updates a particular access policy assignment for a database

```sql
INSERT INTO azure_isv.redis_enterprise.access_policy_assignments (
data__properties,
subscriptionId,
resourceGroupName,
clusterName,
databaseName,
accessPolicyAssignmentName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ clusterName }}',
'{{ databaseName }}',
'{{ accessPolicyAssignmentName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: access_policy_assignments
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the access_policy_assignments resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the access_policy_assignments resource.
    - name: clusterName
      value: string
      description: Required parameter for the access_policy_assignments resource.
    - name: databaseName
      value: string
      description: Required parameter for the access_policy_assignments resource.
    - name: accessPolicyAssignmentName
      value: string
      description: Required parameter for the access_policy_assignments resource.
    - name: properties
      value: object
      description: |
        Properties of the access policy assignment.
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

Deletes a single access policy assignment.

```sql
DELETE FROM azure_isv.redis_enterprise.access_policy_assignments
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND clusterName = '{{ clusterName }}' --required
AND databaseName = '{{ databaseName }}' --required
AND accessPolicyAssignmentName = '{{ accessPolicyAssignmentName }}' --required
;
```
</TabItem>
</Tabs>
