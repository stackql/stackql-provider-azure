--- 
title: extensions
hide_title: false
hide_table_of_contents: false
keywords:
  - extensions
  - azure_stack_hci
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>extensions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>extensions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack_hci.extensions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_arc_setting', value: 'list_by_arc_setting' }
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
    <td>Describes Machine Extension Properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_arc_setting">

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
    <td>Describes Machine Extension Properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-arcSettingName"><code>arcSettingName</code></a>, <a href="#parameter-extensionName"><code>extensionName</code></a></td>
    <td></td>
    <td>Get particular Arc Extension of HCI Cluster.</td>
</tr>
<tr>
    <td><a href="#list_by_arc_setting"><CopyableCode code="list_by_arc_setting" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-arcSettingName"><code>arcSettingName</code></a></td>
    <td></td>
    <td>List all Extensions under ArcSetting resource.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-arcSettingName"><code>arcSettingName</code></a>, <a href="#parameter-extensionName"><code>extensionName</code></a></td>
    <td></td>
    <td>Create Extension for HCI cluster.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-arcSettingName"><code>arcSettingName</code></a>, <a href="#parameter-extensionName"><code>extensionName</code></a></td>
    <td></td>
    <td>Update Extension for HCI cluster.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-arcSettingName"><code>arcSettingName</code></a>, <a href="#parameter-extensionName"><code>extensionName</code></a></td>
    <td></td>
    <td>Delete particular Arc Extension of HCI Cluster.</td>
</tr>
<tr>
    <td><a href="#upgrade"><CopyableCode code="upgrade" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-arcSettingName"><code>arcSettingName</code></a>, <a href="#parameter-extensionName"><code>extensionName</code></a></td>
    <td></td>
    <td>Upgrade a particular Arc Extension of HCI Cluster.</td>
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
<tr id="parameter-arcSettingName">
    <td><CopyableCode code="arcSettingName" /></td>
    <td><code>string</code></td>
    <td>The name of the proxy resource holding details of HCI ArcSetting information.</td>
</tr>
<tr id="parameter-clusterName">
    <td><CopyableCode code="clusterName" /></td>
    <td><code>string</code></td>
    <td>The name of the cluster.</td>
</tr>
<tr id="parameter-extensionName">
    <td><CopyableCode code="extensionName" /></td>
    <td><code>string</code></td>
    <td>The name of the machine extension.</td>
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
        { label: 'list_by_arc_setting', value: 'list_by_arc_setting' }
    ]}
>
<TabItem value="get">

Get particular Arc Extension of HCI Cluster.

```sql
SELECT
properties
FROM azure_stack.azure_stack_hci.extensions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
AND arcSettingName = '{{ arcSettingName }}' -- required
AND extensionName = '{{ extensionName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_arc_setting">

List all Extensions under ArcSetting resource.

```sql
SELECT
properties
FROM azure_stack.azure_stack_hci.extensions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
AND arcSettingName = '{{ arcSettingName }}' -- required
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

Create Extension for HCI cluster.

```sql
INSERT INTO azure_stack.azure_stack_hci.extensions (
data__properties,
subscriptionId,
resourceGroupName,
clusterName,
arcSettingName,
extensionName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ clusterName }}',
'{{ arcSettingName }}',
'{{ extensionName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: extensions
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the extensions resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the extensions resource.
    - name: clusterName
      value: string
      description: Required parameter for the extensions resource.
    - name: arcSettingName
      value: string
      description: Required parameter for the extensions resource.
    - name: extensionName
      value: string
      description: Required parameter for the extensions resource.
    - name: properties
      value: object
      description: |
        Describes Machine Extension Properties.
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

Update Extension for HCI cluster.

```sql
UPDATE azure_stack.azure_stack_hci.extensions
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND clusterName = '{{ clusterName }}' --required
AND arcSettingName = '{{ arcSettingName }}' --required
AND extensionName = '{{ extensionName }}' --required
RETURNING
properties;
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

Delete particular Arc Extension of HCI Cluster.

```sql
DELETE FROM azure_stack.azure_stack_hci.extensions
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND clusterName = '{{ clusterName }}' --required
AND arcSettingName = '{{ arcSettingName }}' --required
AND extensionName = '{{ extensionName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="upgrade"
    values={[
        { label: 'upgrade', value: 'upgrade' }
    ]}
>
<TabItem value="upgrade">

Upgrade a particular Arc Extension of HCI Cluster.

```sql
EXEC azure_stack.azure_stack_hci.extensions.upgrade 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@clusterName='{{ clusterName }}' --required, 
@arcSettingName='{{ arcSettingName }}' --required, 
@extensionName='{{ extensionName }}' --required 
@@json=
'{
"targetVersion": "{{ targetVersion }}"
}'
;
```
</TabItem>
</Tabs>
