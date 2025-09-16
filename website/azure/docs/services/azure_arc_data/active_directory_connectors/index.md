--- 
title: active_directory_connectors
hide_title: false
hide_table_of_contents: false
keywords:
  - active_directory_connectors
  - azure_arc_data
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

Creates, updates, deletes, gets or lists an <code>active_directory_connectors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>active_directory_connectors</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.azure_arc_data.active_directory_connectors" /></td></tr>
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>null</td>
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>null</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataControllerName"><code>dataControllerName</code></a>, <a href="#parameter-activeDirectoryConnectorName"><code>activeDirectoryConnectorName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Retrieves an Active Directory connector resource</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataControllerName"><code>dataControllerName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td></td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataControllerName"><code>dataControllerName</code></a>, <a href="#parameter-activeDirectoryConnectorName"><code>activeDirectoryConnectorName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Creates or replaces an Active Directory connector resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataControllerName"><code>dataControllerName</code></a>, <a href="#parameter-activeDirectoryConnectorName"><code>activeDirectoryConnectorName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Deletes an Active Directory connector resource</td>
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
<tr id="parameter-activeDirectoryConnectorName">
    <td><CopyableCode code="activeDirectoryConnectorName" /></td>
    <td><code>string</code></td>
    <td>The name of the Active Directory connector instance</td>
</tr>
<tr id="parameter-dataControllerName">
    <td><CopyableCode code="dataControllerName" /></td>
    <td><code>string</code></td>
    <td>The name of the data controller</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the Azure resource group</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the Azure subscription</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The API version to use for the request</td>
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

Retrieves an Active Directory connector resource

```sql
SELECT
properties
FROM azure.azure_arc_data.active_directory_connectors
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataControllerName = '{{ dataControllerName }}' -- required
AND activeDirectoryConnectorName = '{{ activeDirectoryConnectorName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

OK

```sql
SELECT
properties
FROM azure.azure_arc_data.active_directory_connectors
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataControllerName = '{{ dataControllerName }}' -- required
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

Creates or replaces an Active Directory connector resource.

```sql
INSERT INTO azure.azure_arc_data.active_directory_connectors (
data__properties,
subscriptionId,
resourceGroupName,
dataControllerName,
activeDirectoryConnectorName,
api-version
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ dataControllerName }}',
'{{ activeDirectoryConnectorName }}',
'{{ api-version }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: active_directory_connectors
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the active_directory_connectors resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the active_directory_connectors resource.
    - name: dataControllerName
      value: string
      description: Required parameter for the active_directory_connectors resource.
    - name: activeDirectoryConnectorName
      value: string
      description: Required parameter for the active_directory_connectors resource.
    - name: properties
      value: object
      description: |
        null
    - name: api-version
      value: string
      description: The API version to use for the request
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

Deletes an Active Directory connector resource

```sql
DELETE FROM azure.azure_arc_data.active_directory_connectors
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dataControllerName = '{{ dataControllerName }}' --required
AND activeDirectoryConnectorName = '{{ activeDirectoryConnectorName }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
