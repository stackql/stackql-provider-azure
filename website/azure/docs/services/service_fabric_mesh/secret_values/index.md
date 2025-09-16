--- 
title: secret_values
hide_title: false
hide_table_of_contents: false
keywords:
  - secret_values
  - service_fabric_mesh
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

Creates, updates, deletes, gets or lists a <code>secret_values</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>secret_values</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_fabric_mesh.secret_values" /></td></tr>
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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>This type describes properties of a secret value resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>This type describes properties of a secret value resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-secretResourceName"><code>secretResourceName</code></a>, <a href="#parameter-secretValueResourceName"><code>secretValueResourceName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get the information about the specified named secret value resources. The information does not include the actual value of the secret.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-secretResourceName"><code>secretResourceName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets information about all secret value resources of the specified secret resource. The information includes the names of the secret value resources, but not the actual values.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-secretResourceName"><code>secretResourceName</code></a>, <a href="#parameter-secretValueResourceName"><code>secretValueResourceName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Creates a new value of the specified secret resource. The name of the value is typically the version identifier. Once created the value cannot be changed.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-secretResourceName"><code>secretResourceName</code></a>, <a href="#parameter-secretValueResourceName"><code>secretValueResourceName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Deletes the secret value resource identified by the name. The name of the resource is typically the version associated with that value. Deletion will fail if the specified value is in use.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Azure resource group name</td>
</tr>
<tr id="parameter-secretResourceName">
    <td><CopyableCode code="secretResourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the secret resource.</td>
</tr>
<tr id="parameter-secretValueResourceName">
    <td><CopyableCode code="secretValueResourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the secret resource value which is typically the version identifier for the value.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The customer subscription identifier</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The version of the API. This parameter is required and its value must be `2018-09-01-preview`.</td>
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

Get the information about the specified named secret value resources. The information does not include the actual value of the secret.

```sql
SELECT
location,
properties,
tags
FROM azure.service_fabric_mesh.secret_values
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND secretResourceName = '{{ secretResourceName }}' -- required
AND secretValueResourceName = '{{ secretValueResourceName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Gets information about all secret value resources of the specified secret resource. The information includes the names of the secret value resources, but not the actual values.

```sql
SELECT
location,
properties,
tags
FROM azure.service_fabric_mesh.secret_values
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND secretResourceName = '{{ secretResourceName }}' -- required
AND api-version = '{{ api-version }}'
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

Creates a new value of the specified secret resource. The name of the value is typically the version identifier. Once created the value cannot be changed.

```sql
INSERT INTO azure.service_fabric_mesh.secret_values (
data__tags,
data__location,
data__properties,
subscriptionId,
resourceGroupName,
secretResourceName,
secretValueResourceName,
api-version
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ secretResourceName }}',
'{{ secretValueResourceName }}',
'{{ api-version }}'
RETURNING
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: secret_values
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the secret_values resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the secret_values resource.
    - name: secretResourceName
      value: string
      description: Required parameter for the secret_values resource.
    - name: secretValueResourceName
      value: string
      description: Required parameter for the secret_values resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
    - name: properties
      value: object
      description: |
        This type describes properties of a secret value resource.
    - name: api-version
      value: string
      description: The version of the API. This parameter is required and its value must be `2018-09-01-preview`.
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

Deletes the secret value resource identified by the name. The name of the resource is typically the version associated with that value. Deletion will fail if the specified value is in use.

```sql
DELETE FROM azure.service_fabric_mesh.secret_values
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND secretResourceName = '{{ secretResourceName }}' --required
AND secretValueResourceName = '{{ secretValueResourceName }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
