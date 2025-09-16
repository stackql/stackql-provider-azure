--- 
title: data_masking_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - data_masking_policies
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

Creates, updates, deletes, gets or lists a <code>data_masking_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>data_masking_policies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.data_masking_policies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
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
    <td>The kind of data masking policy. Metadata, used for Azure portal.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location of the data masking policy.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the data masking policy.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-dataMaskingPolicyName"><code>dataMaskingPolicyName</code></a></td>
    <td></td>
    <td>Gets a database data masking policy.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-dataMaskingPolicyName"><code>dataMaskingPolicyName</code></a></td>
    <td></td>
    <td>Creates or updates a database data masking policy</td>
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
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Gets a database data masking policy.

```sql
SELECT
kind,
location,
properties
FROM azure.sql.data_masking_policies
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

Creates or updates a database data masking policy

```sql
INSERT INTO azure.sql.data_masking_policies (
data__properties,
subscriptionId,
resourceGroupName,
serverName,
databaseName,
dataMaskingPolicyName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ serverName }}',
'{{ databaseName }}',
'{{ dataMaskingPolicyName }}'
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
- name: data_masking_policies
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the data_masking_policies resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the data_masking_policies resource.
    - name: serverName
      value: string
      description: Required parameter for the data_masking_policies resource.
    - name: databaseName
      value: string
      description: Required parameter for the data_masking_policies resource.
    - name: dataMaskingPolicyName
      value: string
      description: Required parameter for the data_masking_policies resource.
    - name: properties
      value: object
      description: |
        The properties of the data masking policy.
```
</TabItem>
</Tabs>
