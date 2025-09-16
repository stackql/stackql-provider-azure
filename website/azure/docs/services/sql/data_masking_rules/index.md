--- 
title: data_masking_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - data_masking_rules
  - sql
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.data_masking_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_database"
    values={[
        { label: 'list_by_database', value: 'list_by_database' }
    ]}
>
<TabItem value="list_by_database">

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
    <td><a href="#list_by_database"><CopyableCode code="list_by_database" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-dataMaskingPolicyName"><code>dataMaskingPolicyName</code></a></td>
    <td></td>
    <td>Gets a list of database data masking rules.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-dataMaskingPolicyName"><code>dataMaskingPolicyName</code></a>, <a href="#parameter-dataMaskingRuleName"><code>dataMaskingRuleName</code></a></td>
    <td></td>
    <td>Creates or updates a database data masking rule.</td>
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
    <td>The name of the database for which the data masking rule applies.</td>
</tr>
<tr id="parameter-dataMaskingRuleName">
    <td><CopyableCode code="dataMaskingRuleName" /></td>
    <td><code>string</code></td>
    <td>The name of the data masking rule.</td>
</tr>
<tr id="parameter-databaseName">
    <td><CopyableCode code="databaseName" /></td>
    <td><code>string</code></td>
    <td>The name of the database.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-serverName">
    <td><CopyableCode code="serverName" /></td>
    <td><code>string</code></td>
    <td>The name of the server.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID that identifies an Azure subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_database"
    values={[
        { label: 'list_by_database', value: 'list_by_database' }
    ]}
>
<TabItem value="list_by_database">

Gets a list of database data masking rules.

```sql
SELECT
kind,
location,
properties
FROM azure.sql.data_masking_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
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

Creates or updates a database data masking rule.

```sql
INSERT INTO azure.sql.data_masking_rules (
data__properties,
subscriptionId,
resourceGroupName,
serverName,
databaseName,
dataMaskingPolicyName,
dataMaskingRuleName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ serverName }}',
'{{ databaseName }}',
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
    - name: serverName
      value: string
      description: Required parameter for the data_masking_rules resource.
    - name: databaseName
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
