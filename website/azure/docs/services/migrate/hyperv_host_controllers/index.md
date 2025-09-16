--- 
title: hyperv_host_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - hyperv_host_controllers
  - migrate
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

Creates, updates, deletes, gets or lists a <code>hyperv_host_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>hyperv_host_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.hyperv_host_controllers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_hyperv_site', value: 'list_by_hyperv_site' }
    ]}
>
<TabItem value="get">

ARM operation completed successfully.

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
<TabItem value="list_by_hyperv_site">

ARM operation completed successfully.

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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-hostName"><code>hostName</code></a></td>
    <td></td>
    <td>Get a HypervHost</td>
</tr>
<tr>
    <td><a href="#list_by_hyperv_site"><CopyableCode code="list_by_hyperv_site" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a></td>
    <td>List HypervHost resources by HypervSite</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-hostName"><code>hostName</code></a></td>
    <td></td>
    <td>Create a HypervHost</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-hostName"><code>hostName</code></a></td>
    <td></td>
    <td>Delete a HypervHost</td>
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
<tr id="parameter-hostName">
    <td><CopyableCode code="hostName" /></td>
    <td><code>string</code></td>
    <td> Host name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-siteName">
    <td><CopyableCode code="siteName" /></td>
    <td><code>string</code></td>
    <td>Site name</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>filter query</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_hyperv_site', value: 'list_by_hyperv_site' }
    ]}
>
<TabItem value="get">

Get a HypervHost

```sql
SELECT
properties
FROM azure.migrate.hyperv_host_controllers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND siteName = '{{ siteName }}' -- required
AND hostName = '{{ hostName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_hyperv_site">

List HypervHost resources by HypervSite

```sql
SELECT
properties
FROM azure.migrate.hyperv_host_controllers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND siteName = '{{ siteName }}' -- required
AND filter = '{{ filter }}'
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

Create a HypervHost

```sql
INSERT INTO azure.migrate.hyperv_host_controllers (
data__properties,
subscriptionId,
resourceGroupName,
siteName,
hostName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ siteName }}',
'{{ hostName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: hyperv_host_controllers
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the hyperv_host_controllers resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the hyperv_host_controllers resource.
    - name: siteName
      value: string
      description: Required parameter for the hyperv_host_controllers resource.
    - name: hostName
      value: string
      description: Required parameter for the hyperv_host_controllers resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
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

Delete a HypervHost

```sql
DELETE FROM azure.migrate.hyperv_host_controllers
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND siteName = '{{ siteName }}' --required
AND hostName = '{{ hostName }}' --required
;
```
</TabItem>
</Tabs>
