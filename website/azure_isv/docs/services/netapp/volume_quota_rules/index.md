--- 
title: volume_quota_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - volume_quota_rules
  - netapp
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>volume_quota_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>volume_quota_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.netapp.volume_quota_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_volume', value: 'list_by_volume' }
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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Volume Quota Rule Properties</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_volume">

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Volume Quota Rule Properties</td>
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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a>, <a href="#parameter-volumeQuotaRuleName"><code>volumeQuotaRuleName</code></a></td>
    <td></td>
    <td>Get details of the specified quota rule</td>
</tr>
<tr>
    <td><a href="#list_by_volume"><CopyableCode code="list_by_volume" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>List all quota rules associated with the volume</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a>, <a href="#parameter-volumeQuotaRuleName"><code>volumeQuotaRuleName</code></a></td>
    <td></td>
    <td>Create the specified quota rule within the given volume</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a>, <a href="#parameter-volumeQuotaRuleName"><code>volumeQuotaRuleName</code></a></td>
    <td></td>
    <td>Patch a quota rule</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a>, <a href="#parameter-volumeQuotaRuleName"><code>volumeQuotaRuleName</code></a></td>
    <td></td>
    <td>Delete quota rule</td>
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
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>The name of the NetApp account</td>
</tr>
<tr id="parameter-poolName">
    <td><CopyableCode code="poolName" /></td>
    <td><code>string</code></td>
    <td>The name of the capacity pool</td>
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
<tr id="parameter-volumeName">
    <td><CopyableCode code="volumeName" /></td>
    <td><code>string</code></td>
    <td>The name of the volume</td>
</tr>
<tr id="parameter-volumeQuotaRuleName">
    <td><CopyableCode code="volumeQuotaRuleName" /></td>
    <td><code>string</code></td>
    <td>The name of volume quota rule</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_volume', value: 'list_by_volume' }
    ]}
>
<TabItem value="get">

Get details of the specified quota rule

```sql
SELECT
location,
properties,
tags
FROM azure_isv.netapp.volume_quota_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND poolName = '{{ poolName }}' -- required
AND volumeName = '{{ volumeName }}' -- required
AND volumeQuotaRuleName = '{{ volumeQuotaRuleName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_volume">

List all quota rules associated with the volume

```sql
SELECT
location,
properties,
tags
FROM azure_isv.netapp.volume_quota_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND poolName = '{{ poolName }}' -- required
AND volumeName = '{{ volumeName }}' -- required
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

Create the specified quota rule within the given volume

```sql
INSERT INTO azure_isv.netapp.volume_quota_rules (
data__tags,
data__location,
data__properties,
subscriptionId,
resourceGroupName,
accountName,
poolName,
volumeName,
volumeQuotaRuleName
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ accountName }}',
'{{ poolName }}',
'{{ volumeName }}',
'{{ volumeQuotaRuleName }}'
RETURNING
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: volume_quota_rules
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the volume_quota_rules resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the volume_quota_rules resource.
    - name: accountName
      value: string
      description: Required parameter for the volume_quota_rules resource.
    - name: poolName
      value: string
      description: Required parameter for the volume_quota_rules resource.
    - name: volumeName
      value: string
      description: Required parameter for the volume_quota_rules resource.
    - name: volumeQuotaRuleName
      value: string
      description: Required parameter for the volume_quota_rules resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
    - name: properties
      value: object
      description: |
        Volume Quota Rule Properties
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

Patch a quota rule

```sql
UPDATE azure_isv.netapp.volume_quota_rules
SET 
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND poolName = '{{ poolName }}' --required
AND volumeName = '{{ volumeName }}' --required
AND volumeQuotaRuleName = '{{ volumeQuotaRuleName }}' --required
RETURNING
location,
properties,
tags;
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

Delete quota rule

```sql
DELETE FROM azure_isv.netapp.volume_quota_rules
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND poolName = '{{ poolName }}' --required
AND volumeName = '{{ volumeName }}' --required
AND volumeQuotaRuleName = '{{ volumeQuotaRuleName }}' --required
;
```
</TabItem>
</Tabs>
