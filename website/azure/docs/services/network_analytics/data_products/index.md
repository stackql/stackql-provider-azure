--- 
title: data_products
hide_title: false
hide_table_of_contents: false
keywords:
  - data_products
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

Creates, updates, deletes, gets or lists a <code>data_products</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>data_products</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network_analytics.data_products" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The managed service identities assigned to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The managed service identities assigned to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The managed service identities assigned to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataProductName"><code>dataProductName</code></a></td>
    <td></td>
    <td>Retrieve data product resource.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>List data products by resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>List data products by subscription.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataProductName"><code>dataProductName</code></a></td>
    <td></td>
    <td>Create data product resource.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataProductName"><code>dataProductName</code></a></td>
    <td></td>
    <td>Update data product resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataProductName"><code>dataProductName</code></a></td>
    <td></td>
    <td>Delete data product resource.</td>
</tr>
<tr>
    <td><a href="#add_user_role"><CopyableCode code="add_user_role" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataProductName"><code>dataProductName</code></a>, <a href="#parameter-roleId"><code>roleId</code></a>, <a href="#parameter-principalId"><code>principalId</code></a>, <a href="#parameter-userName"><code>userName</code></a>, <a href="#parameter-dataTypeScope"><code>dataTypeScope</code></a>, <a href="#parameter-principalType"><code>principalType</code></a>, <a href="#parameter-role"><code>role</code></a></td>
    <td></td>
    <td>Assign role to the data product.</td>
</tr>
<tr>
    <td><a href="#generate_storage_account_sas_token"><CopyableCode code="generate_storage_account_sas_token" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataProductName"><code>dataProductName</code></a>, <a href="#parameter-startTimeStamp"><code>startTimeStamp</code></a>, <a href="#parameter-expiryTimeStamp"><code>expiryTimeStamp</code></a>, <a href="#parameter-ipAddress"><code>ipAddress</code></a></td>
    <td></td>
    <td>Generate sas token for storage account.</td>
</tr>
<tr>
    <td><a href="#remove_user_role"><CopyableCode code="remove_user_role" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataProductName"><code>dataProductName</code></a>, <a href="#parameter-roleId"><code>roleId</code></a>, <a href="#parameter-principalId"><code>principalId</code></a>, <a href="#parameter-userName"><code>userName</code></a>, <a href="#parameter-dataTypeScope"><code>dataTypeScope</code></a>, <a href="#parameter-principalType"><code>principalType</code></a>, <a href="#parameter-role"><code>role</code></a>, <a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a></td>
    <td></td>
    <td>Remove role from the data product.</td>
</tr>
<tr>
    <td><a href="#rotate_key"><CopyableCode code="rotate_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataProductName"><code>dataProductName</code></a>, <a href="#parameter-keyVaultUrl"><code>keyVaultUrl</code></a></td>
    <td></td>
    <td>Initiate key rotation on Data Product.</td>
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
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Retrieve data product resource.

```sql
SELECT
identity,
location,
properties,
tags
FROM azure.network_analytics.data_products
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataProductName = '{{ dataProductName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

List data products by resource group.

```sql
SELECT
identity,
location,
properties,
tags
FROM azure.network_analytics.data_products
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

List data products by subscription.

```sql
SELECT
identity,
location,
properties,
tags
FROM azure.network_analytics.data_products
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Create data product resource.

```sql
INSERT INTO azure.network_analytics.data_products (
data__properties,
data__identity,
data__tags,
data__location,
subscriptionId,
resourceGroupName,
dataProductName
)
SELECT 
'{{ properties }}',
'{{ identity }}',
'{{ tags }}',
'{{ location }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ dataProductName }}'
RETURNING
identity,
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: data_products
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the data_products resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the data_products resource.
    - name: dataProductName
      value: string
      description: Required parameter for the data_products resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
    - name: identity
      value: object
      description: |
        The managed service identities assigned to this resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
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

Update data product resource.

```sql
UPDATE azure.network_analytics.data_products
SET 
data__identity = '{{ identity }}',
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dataProductName = '{{ dataProductName }}' --required
RETURNING
identity,
location,
properties,
tags;
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

Delete data product resource.

```sql
DELETE FROM azure.network_analytics.data_products
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dataProductName = '{{ dataProductName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="add_user_role"
    values={[
        { label: 'add_user_role', value: 'add_user_role' },
        { label: 'generate_storage_account_sas_token', value: 'generate_storage_account_sas_token' },
        { label: 'remove_user_role', value: 'remove_user_role' },
        { label: 'rotate_key', value: 'rotate_key' }
    ]}
>
<TabItem value="add_user_role">

Assign role to the data product.

```sql
EXEC azure.network_analytics.data_products.add_user_role 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@dataProductName='{{ dataProductName }}' --required 
@@json=
'{
"roleId": "{{ roleId }}", 
"principalId": "{{ principalId }}", 
"userName": "{{ userName }}", 
"dataTypeScope": "{{ dataTypeScope }}", 
"principalType": "{{ principalType }}", 
"role": "{{ role }}"
}'
;
```
</TabItem>
<TabItem value="generate_storage_account_sas_token">

Generate sas token for storage account.

```sql
EXEC azure.network_analytics.data_products.generate_storage_account_sas_token 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@dataProductName='{{ dataProductName }}' --required 
@@json=
'{
"startTimeStamp": "{{ startTimeStamp }}", 
"expiryTimeStamp": "{{ expiryTimeStamp }}", 
"ipAddress": "{{ ipAddress }}"
}'
;
```
</TabItem>
<TabItem value="remove_user_role">

Remove role from the data product.

```sql
EXEC azure.network_analytics.data_products.remove_user_role 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@dataProductName='{{ dataProductName }}' --required 
@@json=
'{
"roleId": "{{ roleId }}", 
"principalId": "{{ principalId }}", 
"userName": "{{ userName }}", 
"dataTypeScope": "{{ dataTypeScope }}", 
"principalType": "{{ principalType }}", 
"role": "{{ role }}", 
"roleAssignmentId": "{{ roleAssignmentId }}"
}'
;
```
</TabItem>
<TabItem value="rotate_key">

Initiate key rotation on Data Product.

```sql
EXEC azure.network_analytics.data_products.rotate_key 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@dataProductName='{{ dataProductName }}' --required 
@@json=
'{
"keyVaultUrl": "{{ keyVaultUrl }}"
}'
;
```
</TabItem>
</Tabs>
