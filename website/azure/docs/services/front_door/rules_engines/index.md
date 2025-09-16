--- 
title: rules_engines
hide_title: false
hide_table_of_contents: false
keywords:
  - rules_engines
  - front_door
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

Creates, updates, deletes, gets or lists a <code>rules_engines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>rules_engines</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.front_door.rules_engines" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_front_door', value: 'list_by_front_door' }
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the Rules Engine Configuration.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_front_door">

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the Rules Engine Configuration.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-frontDoorName"><code>frontDoorName</code></a>, <a href="#parameter-rulesEngineName"><code>rulesEngineName</code></a></td>
    <td></td>
    <td>Gets a Rules Engine Configuration with the specified name within the specified Front Door.</td>
</tr>
<tr>
    <td><a href="#list_by_front_door"><CopyableCode code="list_by_front_door" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-frontDoorName"><code>frontDoorName</code></a></td>
    <td></td>
    <td>Lists all of the Rules Engine Configurations within a Front Door.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-frontDoorName"><code>frontDoorName</code></a>, <a href="#parameter-rulesEngineName"><code>rulesEngineName</code></a></td>
    <td></td>
    <td>Creates a new Rules Engine Configuration with the specified name within the specified Front Door.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-frontDoorName"><code>frontDoorName</code></a>, <a href="#parameter-rulesEngineName"><code>rulesEngineName</code></a></td>
    <td></td>
    <td>Deletes an existing Rules Engine Configuration with the specified parameters.</td>
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
<tr id="parameter-frontDoorName">
    <td><CopyableCode code="frontDoorName" /></td>
    <td><code>string</code></td>
    <td>Name of the Front Door which is globally unique.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the Resource group within the Azure subscription.</td>
</tr>
<tr id="parameter-rulesEngineName">
    <td><CopyableCode code="rulesEngineName" /></td>
    <td><code>string</code></td>
    <td>Name of the Rules Engine which is unique within the Front Door.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_front_door', value: 'list_by_front_door' }
    ]}
>
<TabItem value="get">

Gets a Rules Engine Configuration with the specified name within the specified Front Door.

```sql
SELECT
id,
name,
properties,
type
FROM azure.front_door.rules_engines
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND frontDoorName = '{{ frontDoorName }}' -- required
AND rulesEngineName = '{{ rulesEngineName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_front_door">

Lists all of the Rules Engine Configurations within a Front Door.

```sql
SELECT
id,
name,
properties,
type
FROM azure.front_door.rules_engines
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND frontDoorName = '{{ frontDoorName }}' -- required
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

Creates a new Rules Engine Configuration with the specified name within the specified Front Door.

```sql
INSERT INTO azure.front_door.rules_engines (
data__properties,
subscriptionId,
resourceGroupName,
frontDoorName,
rulesEngineName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ frontDoorName }}',
'{{ rulesEngineName }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: rules_engines
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the rules_engines resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the rules_engines resource.
    - name: frontDoorName
      value: string
      description: Required parameter for the rules_engines resource.
    - name: rulesEngineName
      value: string
      description: Required parameter for the rules_engines resource.
    - name: properties
      value: object
      description: |
        Properties of the Rules Engine Configuration.
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

Deletes an existing Rules Engine Configuration with the specified parameters.

```sql
DELETE FROM azure.front_door.rules_engines
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND frontDoorName = '{{ frontDoorName }}' --required
AND rulesEngineName = '{{ rulesEngineName }}' --required
;
```
</TabItem>
</Tabs>
