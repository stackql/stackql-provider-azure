--- 
title: capacities
hide_title: false
hide_table_of_contents: false
keywords:
  - capacities
  - powerbi_dedicated
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

Creates, updates, deletes, gets or lists a <code>capacities</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>capacities</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.powerbi_dedicated.capacities" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_resource_group"
    values={[
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list_by_resource_group">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>An identifier that represents the PowerBI Dedicated resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the PowerBI Dedicated resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Location of the PowerBI Dedicated resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the provision operation request.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The SKU of the PowerBI Dedicated capacity resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Key-value pairs of additional resource provisioning properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the PowerBI Dedicated resource.</td>
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>An identifier that represents the PowerBI Dedicated resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the PowerBI Dedicated resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Location of the PowerBI Dedicated resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the provision operation request.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The SKU of the PowerBI Dedicated capacity resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Key-value pairs of additional resource provisioning properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the PowerBI Dedicated resource.</td>
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
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all the Dedicated capacities for the given resource group.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all the Dedicated capacities for the given subscription.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dedicatedCapacityName"><code>dedicatedCapacityName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__sku"><code>data__sku</code></a></td>
    <td></td>
    <td>Provisions the specified Dedicated capacity based on the configuration specified in the request.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dedicatedCapacityName"><code>dedicatedCapacityName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates the current state of the specified Dedicated capacity.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dedicatedCapacityName"><code>dedicatedCapacityName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified Dedicated capacity.</td>
</tr>
<tr>
    <td><a href="#suspend"><CopyableCode code="suspend" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dedicatedCapacityName"><code>dedicatedCapacityName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Suspends operation of the specified dedicated capacity instance.</td>
</tr>
<tr>
    <td><a href="#resume"><CopyableCode code="resume" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dedicatedCapacityName"><code>dedicatedCapacityName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Resumes operation of the specified Dedicated capacity instance.</td>
</tr>
<tr>
    <td><a href="#check_name_availability"><CopyableCode code="check_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Check the name availability in the target location.</td>
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
<tr id="parameter-dedicatedCapacityName">
    <td><CopyableCode code="dedicatedCapacityName" /></td>
    <td><code>string</code></td>
    <td>The name of the Dedicated capacity. It must be at least 3 characters in length, and no more than 63.</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The region name which the operation will lookup into.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the Azure Resource group of which a given PowerBIDedicated capacity is part. This name must be at least 1 character in length, and no more than 90.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>A unique identifier for a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_resource_group"
    values={[
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list_by_resource_group">

Gets all the Dedicated capacities for the given resource group.

```sql
SELECT
id,
name,
location,
properties,
sku,
systemData,
tags,
type
FROM azure.powerbi_dedicated.capacities
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all the Dedicated capacities for the given subscription.

```sql
SELECT
id,
name,
location,
properties,
sku,
systemData,
tags,
type
FROM azure.powerbi_dedicated.capacities
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

Provisions the specified Dedicated capacity based on the configuration specified in the request.

```sql
INSERT INTO azure.powerbi_dedicated.capacities (
data__sku,
data__properties,
data__location,
data__tags,
data__systemData,
resourceGroupName,
dedicatedCapacityName,
subscriptionId
)
SELECT 
'{{ sku }}' /* required */,
'{{ properties }}',
'{{ location }}',
'{{ tags }}',
'{{ systemData }}',
'{{ resourceGroupName }}',
'{{ dedicatedCapacityName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
location,
properties,
sku,
systemData,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: capacities
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the capacities resource.
    - name: dedicatedCapacityName
      value: string
      description: Required parameter for the capacities resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the capacities resource.
    - name: sku
      value: object
      description: |
        The SKU of the PowerBI Dedicated capacity resource.
    - name: properties
      value: object
      description: |
        Properties of the provision operation request.
    - name: location
      value: string
      description: |
        Location of the PowerBI Dedicated resource.
    - name: tags
      value: object
      description: |
        Key-value pairs of additional resource provisioning properties.
    - name: systemData
      value: object
      description: |
        Metadata pertaining to creation and last modification of the resource.
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

Updates the current state of the specified Dedicated capacity.

```sql
UPDATE azure.powerbi_dedicated.capacities
SET 
data__sku = '{{ sku }}',
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND dedicatedCapacityName = '{{ dedicatedCapacityName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
id,
name,
location,
properties,
sku,
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

Deletes the specified Dedicated capacity.

```sql
DELETE FROM azure.powerbi_dedicated.capacities
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND dedicatedCapacityName = '{{ dedicatedCapacityName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="suspend"
    values={[
        { label: 'suspend', value: 'suspend' },
        { label: 'resume', value: 'resume' },
        { label: 'check_name_availability', value: 'check_name_availability' }
    ]}
>
<TabItem value="suspend">

Suspends operation of the specified dedicated capacity instance.

```sql
EXEC azure.powerbi_dedicated.capacities.suspend 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@dedicatedCapacityName='{{ dedicatedCapacityName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="resume">

Resumes operation of the specified Dedicated capacity instance.

```sql
EXEC azure.powerbi_dedicated.capacities.resume 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@dedicatedCapacityName='{{ dedicatedCapacityName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="check_name_availability">

Check the name availability in the target location.

```sql
EXEC azure.powerbi_dedicated.capacities.check_name_availability 
@location='{{ location }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
</Tabs>
