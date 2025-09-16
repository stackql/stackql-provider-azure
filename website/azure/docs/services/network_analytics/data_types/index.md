--- 
title: data_types
hide_title: false
hide_table_of_contents: false
keywords:
  - data_types
  - network_analytics
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

Creates, updates, deletes, gets or lists a <code>data_types</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>data_types</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network_analytics.data_types" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_data_product', value: 'list_by_data_product' }
    ]}
>
<TabItem value="get">

Azure operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_data_product">

Azure operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataProductName"><code>dataProductName</code></a>, <a href="#parameter-dataTypeName"><code>dataTypeName</code></a></td>
    <td></td>
    <td>Retrieve data type resource.</td>
</tr>
<tr>
    <td><a href="#list_by_data_product"><CopyableCode code="list_by_data_product" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataProductName"><code>dataProductName</code></a></td>
    <td></td>
    <td>List data type by parent resource.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataProductName"><code>dataProductName</code></a>, <a href="#parameter-dataTypeName"><code>dataTypeName</code></a></td>
    <td></td>
    <td>Create data type resource.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataProductName"><code>dataProductName</code></a>, <a href="#parameter-dataTypeName"><code>dataTypeName</code></a></td>
    <td></td>
    <td>Update data type resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataProductName"><code>dataProductName</code></a>, <a href="#parameter-dataTypeName"><code>dataTypeName</code></a></td>
    <td></td>
    <td>Delete data type resource.</td>
</tr>
<tr>
    <td><a href="#generate_storage_container_sas_token"><CopyableCode code="generate_storage_container_sas_token" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataProductName"><code>dataProductName</code></a>, <a href="#parameter-dataTypeName"><code>dataTypeName</code></a>, <a href="#parameter-startTimeStamp"><code>startTimeStamp</code></a>, <a href="#parameter-expiryTimeStamp"><code>expiryTimeStamp</code></a>, <a href="#parameter-ipAddress"><code>ipAddress</code></a></td>
    <td></td>
    <td>Generate sas token for storage container.</td>
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
<tr id="parameter-dataProductName">
    <td><CopyableCode code="dataProductName" /></td>
    <td><code>string</code></td>
    <td>The data product resource name</td>
</tr>
<tr id="parameter-dataTypeName">
    <td><CopyableCode code="dataTypeName" /></td>
    <td><code>string</code></td>
    <td>The data type name.</td>
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
        { label: 'list_by_data_product', value: 'list_by_data_product' }
    ]}
>
<TabItem value="get">

Retrieve data type resource.

```sql
SELECT
properties
FROM azure.network_analytics.data_types
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataProductName = '{{ dataProductName }}' -- required
AND dataTypeName = '{{ dataTypeName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_data_product">

List data type by parent resource.

```sql
SELECT
properties
FROM azure.network_analytics.data_types
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataProductName = '{{ dataProductName }}' -- required
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

Create data type resource.

```sql
INSERT INTO azure.network_analytics.data_types (
data__properties,
subscriptionId,
resourceGroupName,
dataProductName,
dataTypeName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ dataProductName }}',
'{{ dataTypeName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: data_types
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the data_types resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the data_types resource.
    - name: dataProductName
      value: string
      description: Required parameter for the data_types resource.
    - name: dataTypeName
      value: string
      description: Required parameter for the data_types resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
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

Update data type resource.

```sql
UPDATE azure.network_analytics.data_types
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dataProductName = '{{ dataProductName }}' --required
AND dataTypeName = '{{ dataTypeName }}' --required
RETURNING
properties;
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

Delete data type resource.

```sql
DELETE FROM azure.network_analytics.data_types
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dataProductName = '{{ dataProductName }}' --required
AND dataTypeName = '{{ dataTypeName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="generate_storage_container_sas_token"
    values={[
        { label: 'generate_storage_container_sas_token', value: 'generate_storage_container_sas_token' }
    ]}
>
<TabItem value="generate_storage_container_sas_token">

Generate sas token for storage container.

```sql
EXEC azure.network_analytics.data_types.generate_storage_container_sas_token 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@dataProductName='{{ dataProductName }}' --required, 
@dataTypeName='{{ dataTypeName }}' --required 
@@json=
'{
"startTimeStamp": "{{ startTimeStamp }}", 
"expiryTimeStamp": "{{ expiryTimeStamp }}", 
"ipAddress": "{{ ipAddress }}"
}'
;
```
</TabItem>
</Tabs>
