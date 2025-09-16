--- 
title: data_masking_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - data_masking_rules
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

Creates, updates, deletes, gets or lists a <code>data_masking_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>data_masking_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.data_masking_rules" /></td></tr>
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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of Data Masking Rule. Metadata, used for Azure portal.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location of the data masking rule.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_sql_pool">

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of Data Masking Rule. Metadata, used for Azure portal.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location of the data masking rule.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-sqlPoolName"><code>sqlPoolName</code></a>, <a href="#parameter-dataMaskingPolicyName"><code>dataMaskingPolicyName</code></a>, <a href="#parameter-dataMaskingRuleName"><code>dataMaskingRuleName</code></a></td>
    <td></td>
    <td>Gets the specific Sql pool data masking rule.</td>
</tr>
<tr>
    <td><a href="#list_by_sql_pool"><CopyableCode code="list_by_sql_pool" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-sqlPoolName"><code>sqlPoolName</code></a>, <a href="#parameter-dataMaskingPolicyName"><code>dataMaskingPolicyName</code></a></td>
    <td></td>
    <td>Gets a list of Sql pool data masking rules.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-sqlPoolName"><code>sqlPoolName</code></a>, <a href="#parameter-dataMaskingPolicyName"><code>dataMaskingPolicyName</code></a>, <a href="#parameter-dataMaskingRuleName"><code>dataMaskingRuleName</code></a></td>
    <td></td>
    <td>Creates or updates a Sql pool data masking rule.</td>
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
<tr id="parameter-dataMaskingPolicyName">
    <td><CopyableCode code="dataMaskingPolicyName" /></td>
    <td><code>string</code></td>
    <td>The name of the data masking policy for which the masking rule applies.</td>
</tr>
<tr id="parameter-dataMaskingRuleName">
    <td><CopyableCode code="dataMaskingRuleName" /></td>
    <td><code>string</code></td>
    <td>The name of the data masking rule.</td>
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

Gets the specific Sql pool data masking rule.

```sql
SELECT
kind,
location,
properties
FROM azure.synapse.data_masking_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND sqlPoolName = '{{ sqlPoolName }}' -- required
AND dataMaskingPolicyName = '{{ dataMaskingPolicyName }}' -- required
AND dataMaskingRuleName = '{{ dataMaskingRuleName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_sql_pool">

Gets a list of Sql pool data masking rules.

```sql
SELECT
kind,
location,
properties
FROM azure.synapse.data_masking_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND sqlPoolName = '{{ sqlPoolName }}' -- required
AND dataMaskingPolicyName = '{{ dataMaskingPolicyName }}' -- required
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

Creates or updates a Sql pool data masking rule.

```sql
INSERT INTO azure.synapse.data_masking_rules (
data__properties,
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
dataMaskingPolicyName,
dataMaskingRuleName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ workspaceName }}',
'{{ sqlPoolName }}',
'{{ dataMaskingPolicyName }}',
'{{ dataMaskingRuleName }}'
RETURNING
kind,
location,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: data_masking_rules
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the data_masking_rules resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the data_masking_rules resource.
    - name: workspaceName
      value: string
      description: Required parameter for the data_masking_rules resource.
    - name: sqlPoolName
      value: string
      description: Required parameter for the data_masking_rules resource.
    - name: dataMaskingPolicyName
      value: string
      description: Required parameter for the data_masking_rules resource.
    - name: dataMaskingRuleName
      value: string
      description: Required parameter for the data_masking_rules resource.
    - name: properties
      value: object
      description: |
        The properties of the resource.
```
</TabItem>
</Tabs>
