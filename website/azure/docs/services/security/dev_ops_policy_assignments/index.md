--- 
title: dev_ops_policy_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - dev_ops_policy_assignments
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

Creates, updates, deletes, gets or lists a <code>dev_ops_policy_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>dev_ops_policy_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.dev_ops_policy_assignments" /></td></tr>
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

Provides DevOps Policy Assignment details.

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
    <td>Properties of the DevOps policy assignment resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Provides a list of DevOps Policy Assignments.

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
    <td>Properties of the DevOps policy assignment resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-securityConnectorName"><code>securityConnectorName</code></a>, <a href="#parameter-policyAssignmentId"><code>policyAssignmentId</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-securityConnectorName"><code>securityConnectorName</code></a></td>
    <td><a href="#parameter-devOpsPolicyType"><code>devOpsPolicyType</code></a>, <a href="#parameter-resourceId"><code>resourceId</code></a></td>
    <td></td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-securityConnectorName"><code>securityConnectorName</code></a>, <a href="#parameter-policyAssignmentId"><code>policyAssignmentId</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-securityConnectorName"><code>securityConnectorName</code></a>, <a href="#parameter-policyAssignmentId"><code>policyAssignmentId</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-securityConnectorName"><code>securityConnectorName</code></a>, <a href="#parameter-policyAssignmentId"><code>policyAssignmentId</code></a></td>
    <td></td>
    <td></td>
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
<tr id="parameter-policyAssignmentId">
    <td><CopyableCode code="policyAssignmentId" /></td>
    <td><code>string</code></td>
    <td>The policy assignment Id.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-securityConnectorName">
    <td><CopyableCode code="securityConnectorName" /></td>
    <td><code>string</code></td>
    <td>The security connector name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-devOpsPolicyType">
    <td><CopyableCode code="devOpsPolicyType" /></td>
    <td><code>string</code></td>
    <td>Optional filter for listing the policies.</td>
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

Provides DevOps Policy Assignment details.

```sql
SELECT
properties,
systemData
FROM azure.security.dev_ops_policy_assignments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND securityConnectorName = '{{ securityConnectorName }}' -- required
AND policyAssignmentId = '{{ policyAssignmentId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Provides a list of DevOps Policy Assignments.

```sql
SELECT
properties,
systemData
FROM azure.security.dev_ops_policy_assignments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND securityConnectorName = '{{ securityConnectorName }}' -- required
AND devOpsPolicyType = '{{ devOpsPolicyType }}'
AND resourceId = '{{ resourceId }}'
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

No description available.

```sql
INSERT INTO azure.security.dev_ops_policy_assignments (
data__properties,
subscriptionId,
resourceGroupName,
securityConnectorName,
policyAssignmentId
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ securityConnectorName }}',
'{{ policyAssignmentId }}'
RETURNING
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: dev_ops_policy_assignments
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the dev_ops_policy_assignments resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the dev_ops_policy_assignments resource.
    - name: securityConnectorName
      value: string
      description: Required parameter for the dev_ops_policy_assignments resource.
    - name: policyAssignmentId
      value: string
      description: Required parameter for the dev_ops_policy_assignments resource.
    - name: properties
      value: object
      description: |
        Properties of the DevOps policy assignment resource.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

No description available.

```sql
UPDATE azure.security.dev_ops_policy_assignments
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND securityConnectorName = '{{ securityConnectorName }}' --required
AND policyAssignmentId = '{{ policyAssignmentId }}' --required
RETURNING
properties,
systemData;
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

No description available.

```sql
DELETE FROM azure.security.dev_ops_policy_assignments
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND securityConnectorName = '{{ securityConnectorName }}' --required
AND policyAssignmentId = '{{ policyAssignmentId }}' --required
;
```
</TabItem>
</Tabs>
