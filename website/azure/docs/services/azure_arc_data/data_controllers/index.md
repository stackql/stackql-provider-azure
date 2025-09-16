--- 
title: data_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - data_controllers
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

Creates, updates, deletes, gets or lists a <code>data_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>data_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.azure_arc_data.data_controllers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_in_group"
    values={[
        { label: 'list_in_group', value: 'list_in_group' },
        { label: 'list_in_subscription', value: 'list_in_subscription' }
    ]}
>
<TabItem value="list_in_group">

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
    <td>The extendedLocation of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The data controller's properties</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_in_subscription">

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
    <td>The extendedLocation of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The data controller's properties</td>
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
    <td><a href="#list_in_group"><CopyableCode code="list_in_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td></td>
</tr>
<tr>
    <td><a href="#list_in_subscription"><CopyableCode code="list_in_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td></td>
</tr>
<tr>
    <td><a href="#put_data_controller"><CopyableCode code="put_data_controller" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataControllerName"><code>dataControllerName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Creates or replaces a dataController resource</td>
</tr>
<tr>
    <td><a href="#patch_data_controller"><CopyableCode code="patch_data_controller" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataControllerName"><code>dataControllerName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Updates a dataController resource</td>
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
    defaultValue="list_in_group"
    values={[
        { label: 'list_in_group', value: 'list_in_group' },
        { label: 'list_in_subscription', value: 'list_in_subscription' }
    ]}
>
<TabItem value="list_in_group">

OK

```sql
SELECT
extendedLocation,
location,
properties,
tags
FROM azure.azure_arc_data.data_controllers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list_in_subscription">

OK

```sql
SELECT
extendedLocation,
location,
properties,
tags
FROM azure.azure_arc_data.data_controllers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="put_data_controller"
    values={[
        { label: 'put_data_controller', value: 'put_data_controller' },
        { label: 'patch_data_controller', value: 'patch_data_controller' }
    ]}
>
<TabItem value="put_data_controller">

Creates or replaces a dataController resource

```sql
EXEC azure.azure_arc_data.data_controllers.put_data_controller 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@dataControllerName='{{ dataControllerName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"tags": "{{ tags }}", 
"location": "{{ location }}", 
"extendedLocation": "{{ extendedLocation }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="patch_data_controller">

Updates a dataController resource

```sql
EXEC azure.azure_arc_data.data_controllers.patch_data_controller 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@dataControllerName='{{ dataControllerName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"tags": "{{ tags }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
