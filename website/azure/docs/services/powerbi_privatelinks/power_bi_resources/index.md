--- 
title: power_bi_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - power_bi_resources
  - powerbi_privatelinks
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

Creates, updates, deletes, gets or lists a <code>power_bi_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>power_bi_resources</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.powerbi_privatelinks.power_bi_resources" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-azureResourceName"><code>azureResourceName</code></a></td>
    <td><a href="#parameter-x-ms-client-tenant-id"><code>x-ms-client-tenant-id</code></a></td>
    <td>Creates or updates a Private Link Service Resource for Power BI.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-azureResourceName"><code>azureResourceName</code></a></td>
    <td><a href="#parameter-x-ms-client-tenant-id"><code>x-ms-client-tenant-id</code></a></td>
    <td>Creates or updates a Private Link Service Resource for Power BI.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-azureResourceName"><code>azureResourceName</code></a></td>
    <td></td>
    <td>Deletes a Private Link Service Resource for Power BI.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_name"><CopyableCode code="list_by_resource_name" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-azureResourceName"><code>azureResourceName</code></a></td>
    <td></td>
    <td>Gets all the private link resources for the given Azure resource.</td>
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
<tr id="parameter-azureResourceName">
    <td><CopyableCode code="azureResourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Azure resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).</td>
</tr>
<tr id="parameter-x-ms-client-tenant-id">
    <td><CopyableCode code="x-ms-client-tenant-id" /></td>
    <td><code>string</code></td>
    <td>The client tenant id in header. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Creates or updates a Private Link Service Resource for Power BI.

```sql
INSERT INTO azure.powerbi_privatelinks.power_bi_resources (
data__location,
data__properties,
data__tags,
subscriptionId,
resourceGroupName,
azureResourceName,
x-ms-client-tenant-id
)
SELECT 
'{{ location }}',
'{{ properties }}',
'{{ tags }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ azureResourceName }}',
'{{ x-ms-client-tenant-id }}'
RETURNING
id,
name,
location,
properties,
systemData,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: power_bi_resources
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the power_bi_resources resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the power_bi_resources resource.
    - name: azureResourceName
      value: string
      description: Required parameter for the power_bi_resources resource.
    - name: location
      value: string
      description: |
        Specifies the location of the resource.
    - name: properties
      value: object
      description: |
        Specifies the properties of the resource.
    - name: tags
      value: object
      description: |
        Specifies the tags of the resource.
    - name: x-ms-client-tenant-id
      value: string
      description: The client tenant id in header. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).
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

Creates or updates a Private Link Service Resource for Power BI.

```sql
UPDATE azure.powerbi_privatelinks.power_bi_resources
SET 
data__location = '{{ location }}',
data__properties = '{{ properties }}',
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND azureResourceName = '{{ azureResourceName }}' --required
AND x-ms-client-tenant-id = '{{ x-ms-client-tenant-id}}'
RETURNING
id,
name,
location,
properties,
systemData,
tags,
type;
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

Deletes a Private Link Service Resource for Power BI.

```sql
DELETE FROM azure.powerbi_privatelinks.power_bi_resources
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND azureResourceName = '{{ azureResourceName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="list_by_resource_name"
    values={[
        { label: 'list_by_resource_name', value: 'list_by_resource_name' }
    ]}
>
<TabItem value="list_by_resource_name">

Gets all the private link resources for the given Azure resource.

```sql
EXEC azure.powerbi_privatelinks.power_bi_resources.list_by_resource_name 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@azureResourceName='{{ azureResourceName }}' --required
;
```
</TabItem>
</Tabs>
