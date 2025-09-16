--- 
title: dataflows
hide_title: false
hide_table_of_contents: false
keywords:
  - dataflows
  - iotoperations
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

Creates, updates, deletes, gets or lists a <code>dataflows</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>dataflows</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iotoperations.dataflows" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_profile_resource', value: 'list_by_profile_resource' }
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
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>Edge location of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_profile_resource">

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
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>Edge location of the resource.</td>
</tr>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-instanceName"><code>instanceName</code></a>, <a href="#parameter-dataflowProfileName"><code>dataflowProfileName</code></a>, <a href="#parameter-dataflowName"><code>dataflowName</code></a></td>
    <td></td>
    <td>Get a DataflowResource</td>
</tr>
<tr>
    <td><a href="#list_by_profile_resource"><CopyableCode code="list_by_profile_resource" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-instanceName"><code>instanceName</code></a>, <a href="#parameter-dataflowProfileName"><code>dataflowProfileName</code></a></td>
    <td></td>
    <td>List DataflowResource resources by DataflowProfileResource</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-instanceName"><code>instanceName</code></a>, <a href="#parameter-dataflowProfileName"><code>dataflowProfileName</code></a>, <a href="#parameter-dataflowName"><code>dataflowName</code></a>, <a href="#parameter-data__extendedLocation"><code>data__extendedLocation</code></a></td>
    <td></td>
    <td>Create a DataflowResource</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-instanceName"><code>instanceName</code></a>, <a href="#parameter-dataflowProfileName"><code>dataflowProfileName</code></a>, <a href="#parameter-dataflowName"><code>dataflowName</code></a></td>
    <td></td>
    <td>Delete a DataflowResource</td>
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
<tr id="parameter-dataflowName">
    <td><CopyableCode code="dataflowName" /></td>
    <td><code>string</code></td>
    <td>Name of Instance dataflowProfile dataflow resource</td>
</tr>
<tr id="parameter-dataflowProfileName">
    <td><CopyableCode code="dataflowProfileName" /></td>
    <td><code>string</code></td>
    <td>Name of Instance dataflowProfile resource</td>
</tr>
<tr id="parameter-instanceName">
    <td><CopyableCode code="instanceName" /></td>
    <td><code>string</code></td>
    <td>Name of instance.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_profile_resource', value: 'list_by_profile_resource' }
    ]}
>
<TabItem value="get">

Get a DataflowResource

```sql
SELECT
extendedLocation,
properties
FROM azure.iotoperations.dataflows
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND instanceName = '{{ instanceName }}' -- required
AND dataflowProfileName = '{{ dataflowProfileName }}' -- required
AND dataflowName = '{{ dataflowName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_profile_resource">

List DataflowResource resources by DataflowProfileResource

```sql
SELECT
extendedLocation,
properties
FROM azure.iotoperations.dataflows
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND instanceName = '{{ instanceName }}' -- required
AND dataflowProfileName = '{{ dataflowProfileName }}' -- required
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

Create a DataflowResource

```sql
INSERT INTO azure.iotoperations.dataflows (
data__properties,
data__extendedLocation,
subscriptionId,
resourceGroupName,
instanceName,
dataflowProfileName,
dataflowName
)
SELECT 
'{{ properties }}',
'{{ extendedLocation }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ instanceName }}',
'{{ dataflowProfileName }}',
'{{ dataflowName }}'
RETURNING
extendedLocation,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: dataflows
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the dataflows resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the dataflows resource.
    - name: instanceName
      value: string
      description: Required parameter for the dataflows resource.
    - name: dataflowProfileName
      value: string
      description: Required parameter for the dataflows resource.
    - name: dataflowName
      value: string
      description: Required parameter for the dataflows resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
    - name: extendedLocation
      value: object
      description: |
        Edge location of the resource.
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

Delete a DataflowResource

```sql
DELETE FROM azure.iotoperations.dataflows
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND instanceName = '{{ instanceName }}' --required
AND dataflowProfileName = '{{ dataflowProfileName }}' --required
AND dataflowName = '{{ dataflowName }}' --required
;
```
</TabItem>
</Tabs>
