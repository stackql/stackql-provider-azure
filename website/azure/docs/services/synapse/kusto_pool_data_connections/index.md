--- 
title: kusto_pool_data_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - kusto_pool_data_connections
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

Creates, updates, deletes, gets or lists a <code>kusto_pool_data_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>kusto_pool_data_connections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.kusto_pool_data_connections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_database', value: 'list_by_database' }
    ]}
>
<TabItem value="get">

Successfully retrieved the specified data connection.

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
    <td>Kind of the endpoint for the data connection</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_database">

Successfully retrieved the list of data connections.

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
    <td>Kind of the endpoint for the data connection</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-dataConnectionName"><code>dataConnectionName</code></a></td>
    <td></td>
    <td>Returns a data connection.</td>
</tr>
<tr>
    <td><a href="#list_by_database"><CopyableCode code="list_by_database" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a></td>
    <td></td>
    <td>Returns the list of data connections of the given Kusto pool database.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-dataConnectionName"><code>dataConnectionName</code></a>, <a href="#parameter-data__kind"><code>data__kind</code></a></td>
    <td></td>
    <td>Creates or updates a data connection.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-dataConnectionName"><code>dataConnectionName</code></a>, <a href="#parameter-data__kind"><code>data__kind</code></a></td>
    <td></td>
    <td>Updates a data connection.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-dataConnectionName"><code>dataConnectionName</code></a></td>
    <td></td>
    <td>Deletes the data connection with the given name.</td>
</tr>
<tr>
    <td><a href="#check_name_availability"><CopyableCode code="check_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Checks that the data connection name is valid and is not already in use.</td>
</tr>
<tr>
    <td><a href="#data_connection_validation"><CopyableCode code="data_connection_validation" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a></td>
    <td></td>
    <td>Checks that the data connection parameters are valid.</td>
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
<tr id="parameter-dataConnectionName">
    <td><CopyableCode code="dataConnectionName" /></td>
    <td><code>string</code></td>
    <td>The name of the data connection.</td>
</tr>
<tr id="parameter-databaseName">
    <td><CopyableCode code="databaseName" /></td>
    <td><code>string</code></td>
    <td>The name of the database in the Kusto pool.</td>
</tr>
<tr id="parameter-kustoPoolName">
    <td><CopyableCode code="kustoPoolName" /></td>
    <td><code>string</code></td>
    <td>The name of the Kusto pool.</td>
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
        { label: 'list_by_database', value: 'list_by_database' }
    ]}
>
<TabItem value="get">

Returns a data connection.

```sql
SELECT
kind,
location,
systemData
FROM azure.synapse.kusto_pool_data_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND kustoPoolName = '{{ kustoPoolName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
AND dataConnectionName = '{{ dataConnectionName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_database">

Returns the list of data connections of the given Kusto pool database.

```sql
SELECT
kind,
location,
systemData
FROM azure.synapse.kusto_pool_data_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND kustoPoolName = '{{ kustoPoolName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
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

Creates or updates a data connection.

```sql
INSERT INTO azure.synapse.kusto_pool_data_connections (
data__location,
data__kind,
subscriptionId,
resourceGroupName,
workspaceName,
kustoPoolName,
databaseName,
dataConnectionName
)
SELECT 
'{{ location }}',
'{{ kind }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ workspaceName }}',
'{{ kustoPoolName }}',
'{{ databaseName }}',
'{{ dataConnectionName }}'
RETURNING
kind,
location,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: kusto_pool_data_connections
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the kusto_pool_data_connections resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the kusto_pool_data_connections resource.
    - name: workspaceName
      value: string
      description: Required parameter for the kusto_pool_data_connections resource.
    - name: kustoPoolName
      value: string
      description: Required parameter for the kusto_pool_data_connections resource.
    - name: databaseName
      value: string
      description: Required parameter for the kusto_pool_data_connections resource.
    - name: dataConnectionName
      value: string
      description: Required parameter for the kusto_pool_data_connections resource.
    - name: location
      value: string
      description: |
        Resource location.
    - name: kind
      value: string
      description: |
        Kind of the endpoint for the data connection
      valid_values: ['EventHub', 'EventGrid', 'IotHub']
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

Updates a data connection.

```sql
UPDATE azure.synapse.kusto_pool_data_connections
SET 
data__location = '{{ location }}',
data__kind = '{{ kind }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND workspaceName = '{{ workspaceName }}' --required
AND kustoPoolName = '{{ kustoPoolName }}' --required
AND databaseName = '{{ databaseName }}' --required
AND dataConnectionName = '{{ dataConnectionName }}' --required
AND data__kind = '{{ kind }}' --required
RETURNING
kind,
location,
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

Deletes the data connection with the given name.

```sql
DELETE FROM azure.synapse.kusto_pool_data_connections
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND workspaceName = '{{ workspaceName }}' --required
AND kustoPoolName = '{{ kustoPoolName }}' --required
AND databaseName = '{{ databaseName }}' --required
AND dataConnectionName = '{{ dataConnectionName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="check_name_availability"
    values={[
        { label: 'check_name_availability', value: 'check_name_availability' },
        { label: 'data_connection_validation', value: 'data_connection_validation' }
    ]}
>
<TabItem value="check_name_availability">

Checks that the data connection name is valid and is not already in use.

```sql
EXEC azure.synapse.kusto_pool_data_connections.check_name_availability 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@workspaceName='{{ workspaceName }}' --required, 
@kustoPoolName='{{ kustoPoolName }}' --required, 
@databaseName='{{ databaseName }}' --required 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
<TabItem value="data_connection_validation">

Checks that the data connection parameters are valid.

```sql
EXEC azure.synapse.kusto_pool_data_connections.data_connection_validation 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@workspaceName='{{ workspaceName }}' --required, 
@kustoPoolName='{{ kustoPoolName }}' --required, 
@databaseName='{{ databaseName }}' --required 
@@json=
'{
"dataConnectionName": "{{ dataConnectionName }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
