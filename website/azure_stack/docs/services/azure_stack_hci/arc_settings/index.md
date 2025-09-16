--- 
title: arc_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - arc_settings
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

Creates, updates, deletes, gets or lists an <code>arc_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>arc_settings</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack_hci.arc_settings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_cluster', value: 'list_by_cluster' }
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
    <td>ArcSetting properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_cluster">

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
    <td>ArcSetting properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-arcSettingName"><code>arcSettingName</code></a></td>
    <td></td>
    <td>Get ArcSetting resource details of HCI Cluster.</td>
</tr>
<tr>
    <td><a href="#list_by_cluster"><CopyableCode code="list_by_cluster" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a></td>
    <td></td>
    <td>Get ArcSetting resources of HCI Cluster.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-arcSettingName"><code>arcSettingName</code></a></td>
    <td></td>
    <td>Create ArcSetting for HCI cluster.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-arcSettingName"><code>arcSettingName</code></a></td>
    <td></td>
    <td>Update ArcSettings for HCI cluster.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-arcSettingName"><code>arcSettingName</code></a></td>
    <td></td>
    <td>Delete ArcSetting resource details of HCI Cluster.</td>
</tr>
<tr>
    <td><a href="#generate_password"><CopyableCode code="generate_password" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-arcSettingName"><code>arcSettingName</code></a></td>
    <td></td>
    <td>Generate password for arc settings.</td>
</tr>
<tr>
    <td><a href="#consent_and_install_default_extensions"><CopyableCode code="consent_and_install_default_extensions" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-arcSettingName"><code>arcSettingName</code></a></td>
    <td></td>
    <td>Add consent time for default extensions and initiate extensions installation</td>
</tr>
<tr>
    <td><a href="#initialize_disable_process"><CopyableCode code="initialize_disable_process" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-arcSettingName"><code>arcSettingName</code></a></td>
    <td></td>
    <td>Initializes ARC Disable process on the cluster</td>
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
        { label: 'list_by_cluster', value: 'list_by_cluster' }
    ]}
>
<TabItem value="get">

Get ArcSetting resource details of HCI Cluster.

```sql
SELECT
properties
FROM azure_stack.azure_stack_hci.arc_settings
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
AND arcSettingName = '{{ arcSettingName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_cluster">

Get ArcSetting resources of HCI Cluster.

```sql
SELECT
properties
FROM azure_stack.azure_stack_hci.arc_settings
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
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

Create ArcSetting for HCI cluster.

```sql
INSERT INTO azure_stack.azure_stack_hci.arc_settings (
data__properties,
subscriptionId,
resourceGroupName,
clusterName,
arcSettingName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ clusterName }}',
'{{ arcSettingName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: arc_settings
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the arc_settings resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the arc_settings resource.
    - name: clusterName
      value: string
      description: Required parameter for the arc_settings resource.
    - name: arcSettingName
      value: string
      description: Required parameter for the arc_settings resource.
    - name: properties
      value: object
      description: |
        ArcSetting properties.
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

Update ArcSettings for HCI cluster.

```sql
UPDATE azure_stack.azure_stack_hci.arc_settings
SET 
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND clusterName = '{{ clusterName }}' --required
AND arcSettingName = '{{ arcSettingName }}' --required
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

Delete ArcSetting resource details of HCI Cluster.

```sql
DELETE FROM azure_stack.azure_stack_hci.arc_settings
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND clusterName = '{{ clusterName }}' --required
AND arcSettingName = '{{ arcSettingName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="generate_password"
    values={[
        { label: 'generate_password', value: 'generate_password' },
        { label: 'consent_and_install_default_extensions', value: 'consent_and_install_default_extensions' },
        { label: 'initialize_disable_process', value: 'initialize_disable_process' }
    ]}
>
<TabItem value="generate_password">

Generate password for arc settings.

```sql
EXEC azure_stack.azure_stack_hci.arc_settings.generate_password 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@clusterName='{{ clusterName }}' --required, 
@arcSettingName='{{ arcSettingName }}' --required
;
```
</TabItem>
<TabItem value="consent_and_install_default_extensions">

Add consent time for default extensions and initiate extensions installation

```sql
EXEC azure_stack.azure_stack_hci.arc_settings.consent_and_install_default_extensions 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@clusterName='{{ clusterName }}' --required, 
@arcSettingName='{{ arcSettingName }}' --required
;
```
</TabItem>
<TabItem value="initialize_disable_process">

Initializes ARC Disable process on the cluster

```sql
EXEC azure_stack.azure_stack_hci.arc_settings.initialize_disable_process 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@clusterName='{{ clusterName }}' --required, 
@arcSettingName='{{ arcSettingName }}' --required
;
```
</TabItem>
</Tabs>
