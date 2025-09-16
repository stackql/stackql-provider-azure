--- 
title: deployments
hide_title: false
hide_table_of_contents: false
keywords:
  - deployments
  - sphere
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

Creates, updates, deletes, gets or lists a <code>deployments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>deployments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sphere.deployments" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_device_group', value: 'list_by_device_group' }
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
<TabItem value="list_by_device_group">

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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-deviceGroupName"><code>deviceGroupName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Get a Deployment. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.</td>
</tr>
<tr>
    <td><a href="#list_by_device_group"><CopyableCode code="list_by_device_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-deviceGroupName"><code>deviceGroupName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$skip"><code>$skip</code></a>, <a href="#parameter-$maxpagesize"><code>$maxpagesize</code></a></td>
    <td>List Deployment resources by DeviceGroup. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-deviceGroupName"><code>deviceGroupName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Create a Deployment. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-deviceGroupName"><code>deviceGroupName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Delete a Deployment. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.</td>
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
<tr id="parameter-catalogName">
    <td><CopyableCode code="catalogName" /></td>
    <td><code>string</code></td>
    <td>Name of catalog</td>
</tr>
<tr id="parameter-deploymentName">
    <td><CopyableCode code="deploymentName" /></td>
    <td><code>string</code></td>
    <td>Deployment name. Use .default for deployment creation and to get the current deployment for the associated device group.</td>
</tr>
<tr id="parameter-deviceGroupName">
    <td><CopyableCode code="deviceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of device group.</td>
</tr>
<tr id="parameter-productName">
    <td><CopyableCode code="productName" /></td>
    <td><code>string</code></td>
    <td>Name of product.</td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Filter the result list using the given expression</td>
</tr>
<tr id="parameter-$maxpagesize">
    <td><CopyableCode code="$maxpagesize" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of result items per page.</td>
</tr>
<tr id="parameter-$skip">
    <td><CopyableCode code="$skip" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of result items to skip.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of result items to return.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_device_group', value: 'list_by_device_group' }
    ]}
>
<TabItem value="get">

Get a Deployment. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.

```sql
SELECT
properties
FROM azure.sphere.deployments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND catalogName = '{{ catalogName }}' -- required
AND productName = '{{ productName }}' -- required
AND deviceGroupName = '{{ deviceGroupName }}' -- required
AND deploymentName = '{{ deploymentName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_device_group">

List Deployment resources by DeviceGroup. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.

```sql
SELECT
properties
FROM azure.sphere.deployments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND catalogName = '{{ catalogName }}' -- required
AND productName = '{{ productName }}' -- required
AND deviceGroupName = '{{ deviceGroupName }}' -- required
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
AND $skip = '{{ $skip }}'
AND $maxpagesize = '{{ $maxpagesize }}'
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

Create a Deployment. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.

```sql
INSERT INTO azure.sphere.deployments (
data__properties,
subscriptionId,
resourceGroupName,
catalogName,
productName,
deviceGroupName,
deploymentName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ catalogName }}',
'{{ productName }}',
'{{ deviceGroupName }}',
'{{ deploymentName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: deployments
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the deployments resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the deployments resource.
    - name: catalogName
      value: string
      description: Required parameter for the deployments resource.
    - name: productName
      value: string
      description: Required parameter for the deployments resource.
    - name: deviceGroupName
      value: string
      description: Required parameter for the deployments resource.
    - name: deploymentName
      value: string
      description: Required parameter for the deployments resource.
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

Delete a Deployment. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.

```sql
DELETE FROM azure.sphere.deployments
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND catalogName = '{{ catalogName }}' --required
AND productName = '{{ productName }}' --required
AND deviceGroupName = '{{ deviceGroupName }}' --required
AND deploymentName = '{{ deploymentName }}' --required
;
```
</TabItem>
</Tabs>
