--- 
title: extended_sql_pool_blob_auditing_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - extended_sql_pool_blob_auditing_policies
  - synapse
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

Creates, updates, deletes, gets or lists an <code>extended_sql_pool_blob_auditing_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>extended_sql_pool_blob_auditing_policies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.extended_sql_pool_blob_auditing_policies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_sql_pool', value: 'list_by_sql_pool' }
    ]}
>
<TabItem value="get">

Successfully retrieved the extended Sql pool blob auditing policy.

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
    <td>Resource properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_sql_pool">

Successfully retrieved the database extended auditing settings.

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
    <td>Resource properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-sqlPoolName"><code>sqlPoolName</code></a>, <a href="#parameter-blobAuditingPolicyName"><code>blobAuditingPolicyName</code></a></td>
    <td></td>
    <td>Gets an extended Sql pool's blob auditing policy.</td>
</tr>
<tr>
    <td><a href="#list_by_sql_pool"><CopyableCode code="list_by_sql_pool" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-sqlPoolName"><code>sqlPoolName</code></a></td>
    <td></td>
    <td>Lists extended auditing settings of a Sql pool.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-sqlPoolName"><code>sqlPoolName</code></a>, <a href="#parameter-blobAuditingPolicyName"><code>blobAuditingPolicyName</code></a></td>
    <td></td>
    <td>Creates or updates an extended Sql pool's blob auditing policy.</td>
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
<tr id="parameter-blobAuditingPolicyName">
    <td><CopyableCode code="blobAuditingPolicyName" /></td>
    <td><code>string</code></td>
    <td>The name of the blob auditing policy.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-sqlPoolName">
    <td><CopyableCode code="sqlPoolName" /></td>
    <td><code>string</code></td>
    <td>SQL pool name</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-workspaceName">
    <td><CopyableCode code="workspaceName" /></td>
    <td><code>string</code></td>
    <td>The name of the workspace.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_sql_pool', value: 'list_by_sql_pool' }
    ]}
>
<TabItem value="get">

Gets an extended Sql pool's blob auditing policy.

```sql
SELECT
properties
FROM azure.synapse.extended_sql_pool_blob_auditing_policies
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND sqlPoolName = '{{ sqlPoolName }}' -- required
AND blobAuditingPolicyName = '{{ blobAuditingPolicyName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_sql_pool">

Lists extended auditing settings of a Sql pool.

```sql
SELECT
properties
FROM azure.synapse.extended_sql_pool_blob_auditing_policies
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND sqlPoolName = '{{ sqlPoolName }}' -- required
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

Creates or updates an extended Sql pool's blob auditing policy.

```sql
INSERT INTO azure.synapse.extended_sql_pool_blob_auditing_policies (
data__properties,
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
blobAuditingPolicyName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ workspaceName }}',
'{{ sqlPoolName }}',
'{{ blobAuditingPolicyName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: extended_sql_pool_blob_auditing_policies
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the extended_sql_pool_blob_auditing_policies resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the extended_sql_pool_blob_auditing_policies resource.
    - name: workspaceName
      value: string
      description: Required parameter for the extended_sql_pool_blob_auditing_policies resource.
    - name: sqlPoolName
      value: string
      description: Required parameter for the extended_sql_pool_blob_auditing_policies resource.
    - name: blobAuditingPolicyName
      value: string
      description: Required parameter for the extended_sql_pool_blob_auditing_policies resource.
    - name: properties
      value: object
      description: |
        Resource properties.
```
</TabItem>
</Tabs>
