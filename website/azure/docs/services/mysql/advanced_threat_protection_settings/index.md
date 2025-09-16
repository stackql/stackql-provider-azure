--- 
title: advanced_threat_protection_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - advanced_threat_protection_settings
  - mysql
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

Creates, updates, deletes, gets or lists an <code>advanced_threat_protection_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>advanced_threat_protection_settings</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mysql.advanced_threat_protection_settings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Successfully retrieved the server's Advanced Threat Protection state.

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
    <td>Resource properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Successfully retrieved the server's Advanced Threat Protection states.

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
    <td>Resource properties.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-advancedThreatProtectionName"><code>advancedThreatProtectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get a server's Advanced Threat Protection state</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a list of server's Advanced Threat Protection states.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-advancedThreatProtectionName"><code>advancedThreatProtectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates a server's Advanced Threat Protection state.</td>
</tr>
<tr>
    <td><a href="#update_put"><CopyableCode code="update_put" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-advancedThreatProtectionName"><code>advancedThreatProtectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates a server's Advanced Threat Protection state.</td>
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
<tr id="parameter-advancedThreatProtectionName">
    <td><CopyableCode code="advancedThreatProtectionName" /></td>
    <td><code>string</code></td>
    <td>The name of the Advanced Threat Protection state.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-serverName">
    <td><CopyableCode code="serverName" /></td>
    <td><code>string</code></td>
    <td>The name of the server.</td>
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
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Get a server's Advanced Threat Protection state

```sql
SELECT
properties
FROM azure.mysql.advanced_threat_protection_settings
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND advancedThreatProtectionName = '{{ advancedThreatProtectionName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets a list of server's Advanced Threat Protection states.

```sql
SELECT
properties
FROM azure.mysql.advanced_threat_protection_settings
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
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

Updates a server's Advanced Threat Protection state.

```sql
UPDATE azure.mysql.advanced_threat_protection_settings
SET 
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND serverName = '{{ serverName }}' --required
AND advancedThreatProtectionName = '{{ advancedThreatProtectionName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
properties;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_put"
    values={[
        { label: 'update_put', value: 'update_put' }
    ]}
>
<TabItem value="update_put">

Updates a server's Advanced Threat Protection state.

```sql
EXEC azure.mysql.advanced_threat_protection_settings.update_put 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serverName='{{ serverName }}' --required, 
@advancedThreatProtectionName='{{ advancedThreatProtectionName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
