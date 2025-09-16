--- 
title: access_control_records
hide_title: false
hide_table_of_contents: false
keywords:
  - access_control_records
  - storsimple_1200_series
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>access_control_records</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>access_control_records</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_1200_series.access_control_records" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_manager', value: 'list_by_manager' }
    ]}
>
<TabItem value="get">

The access control record.

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
    <td>The identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of AccessControlRecord</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_manager">

The collection of access control records.

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
    <td>The identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of AccessControlRecord</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type.</td>
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
    <td><a href="#parameter-accessControlRecordName"><code>accessControlRecordName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managerName"><code>managerName</code></a></td>
    <td></td>
    <td>Returns the properties of the specified access control record name.</td>
</tr>
<tr>
    <td><a href="#list_by_manager"><CopyableCode code="list_by_manager" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managerName"><code>managerName</code></a></td>
    <td></td>
    <td>Retrieves all the access control records in a manager.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-accessControlRecordName"><code>accessControlRecordName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managerName"><code>managerName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates or Updates an access control record.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-accessControlRecordName"><code>accessControlRecordName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managerName"><code>managerName</code></a></td>
    <td></td>
    <td>Deletes the access control record.</td>
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
<tr id="parameter-accessControlRecordName">
    <td><CopyableCode code="accessControlRecordName" /></td>
    <td><code>string</code></td>
    <td>The name of the access control record to delete.</td>
</tr>
<tr id="parameter-managerName">
    <td><CopyableCode code="managerName" /></td>
    <td><code>string</code></td>
    <td>The manager name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription id</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_manager', value: 'list_by_manager' }
    ]}
>
<TabItem value="get">

Returns the properties of the specified access control record name.

```sql
SELECT
id,
name,
properties,
type
FROM azure_extras.storsimple_1200_series.access_control_records
WHERE accessControlRecordName = '{{ accessControlRecordName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND managerName = '{{ managerName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_manager">

Retrieves all the access control records in a manager.

```sql
SELECT
id,
name,
properties,
type
FROM azure_extras.storsimple_1200_series.access_control_records
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND managerName = '{{ managerName }}' -- required
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

Creates or Updates an access control record.

```sql
INSERT INTO azure_extras.storsimple_1200_series.access_control_records (
data__properties,
accessControlRecordName,
subscriptionId,
resourceGroupName,
managerName
)
SELECT 
'{{ properties }}' /* required */,
'{{ accessControlRecordName }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ managerName }}'
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
- name: access_control_records
  props:
    - name: accessControlRecordName
      value: string
      description: Required parameter for the access_control_records resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the access_control_records resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the access_control_records resource.
    - name: managerName
      value: string
      description: Required parameter for the access_control_records resource.
    - name: properties
      value: object
      description: |
        Properties of AccessControlRecord
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

Deletes the access control record.

```sql
DELETE FROM azure_extras.storsimple_1200_series.access_control_records
WHERE accessControlRecordName = '{{ accessControlRecordName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND managerName = '{{ managerName }}' --required
;
```
</TabItem>
</Tabs>
