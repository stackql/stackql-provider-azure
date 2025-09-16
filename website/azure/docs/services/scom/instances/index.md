--- 
title: instances
hide_title: false
hide_table_of_contents: false
keywords:
  - instances
  - scom
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

Creates, updates, deletes, gets or lists an <code>instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>instances</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.scom.instances" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Operation completed successfully.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The Azure Active Directory identity of the SCOM instance</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of a SCOM instance resource</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

Operation completed successfully.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The Azure Active Directory identity of the SCOM instance</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of a SCOM instance resource</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

Operation completed successfully.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The Azure Active Directory identity of the SCOM instance</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of a SCOM instance resource</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-instanceName"><code>instanceName</code></a></td>
    <td></td>
    <td>Get SCOM managed instance details</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Lists all SCOM managed instances in a resource group</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all SCOM managed instances in a subscription </td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-instanceName"><code>instanceName</code></a></td>
    <td><a href="#parameter-validationMode"><code>validationMode</code></a></td>
    <td>Create or update SCOM managed instance</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-instanceName"><code>instanceName</code></a></td>
    <td></td>
    <td>Patch SCOM managed instance</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-instanceName"><code>instanceName</code></a></td>
    <td></td>
    <td>Delete a SCOM managed instance</td>
</tr>
<tr>
    <td><a href="#scale"><CopyableCode code="scale" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-instanceName"><code>instanceName</code></a></td>
    <td></td>
    <td>Scaling SCOM managed instance.</td>
</tr>
<tr>
    <td><a href="#patch_servers"><CopyableCode code="patch_servers" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-instanceName"><code>instanceName</code></a></td>
    <td></td>
    <td>Update SCOM servers with latest scom software.</td>
</tr>
<tr>
    <td><a href="#link_log_analytics"><CopyableCode code="link_log_analytics" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-instanceName"><code>instanceName</code></a></td>
    <td></td>
    <td>Link Log Analytics workspace for SCOM monitoring instance</td>
</tr>
<tr>
    <td><a href="#unlink_log_analytics"><CopyableCode code="unlink_log_analytics" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-instanceName"><code>instanceName</code></a></td>
    <td></td>
    <td>Unlink Log Analytics workspace for SCOM monitoring instance</td>
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
<tr id="parameter-instanceName">
    <td><CopyableCode code="instanceName" /></td>
    <td><code>string</code></td>
    <td>Name of the SCOM managed instance.</td>
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
<tr id="parameter-validationMode">
    <td><CopyableCode code="validationMode" /></td>
    <td><code>boolean</code></td>
    <td>Validation mode for the SCOM managed instance</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Get SCOM managed instance details

```sql
SELECT
identity,
location,
properties,
tags
FROM azure.scom.instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND instanceName = '{{ instanceName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Lists all SCOM managed instances in a resource group

```sql
SELECT
identity,
location,
properties,
tags
FROM azure.scom.instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

Lists all SCOM managed instances in a subscription 

```sql
SELECT
identity,
location,
properties,
tags
FROM azure.scom.instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Create or update SCOM managed instance

```sql
INSERT INTO azure.scom.instances (
data__tags,
data__location,
data__properties,
data__identity,
subscriptionId,
resourceGroupName,
instanceName,
validationMode
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ properties }}',
'{{ identity }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ instanceName }}',
'{{ validationMode }}'
RETURNING
identity,
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: instances
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the instances resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the instances resource.
    - name: instanceName
      value: string
      description: Required parameter for the instances resource.
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
        The properties of a SCOM instance resource
    - name: identity
      value: object
      description: |
        The Azure Active Directory identity of the SCOM instance
    - name: validationMode
      value: boolean
      description: Validation mode for the SCOM managed instance
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

Patch SCOM managed instance

```sql
UPDATE azure.scom.instances
SET 
data__identity = '{{ identity }}',
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND instanceName = '{{ instanceName }}' --required
RETURNING
identity,
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

Delete a SCOM managed instance

```sql
DELETE FROM azure.scom.instances
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND instanceName = '{{ instanceName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="scale"
    values={[
        { label: 'scale', value: 'scale' },
        { label: 'patch_servers', value: 'patch_servers' },
        { label: 'link_log_analytics', value: 'link_log_analytics' },
        { label: 'unlink_log_analytics', value: 'unlink_log_analytics' }
    ]}
>
<TabItem value="scale">

Scaling SCOM managed instance.

```sql
EXEC azure.scom.instances.scale 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@instanceName='{{ instanceName }}' --required 
@@json=
'{
"serverCount": {{ serverCount }}
}'
;
```
</TabItem>
<TabItem value="patch_servers">

Update SCOM servers with latest scom software.

```sql
EXEC azure.scom.instances.patch_servers 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@instanceName='{{ instanceName }}' --required
;
```
</TabItem>
<TabItem value="link_log_analytics">

Link Log Analytics workspace for SCOM monitoring instance

```sql
EXEC azure.scom.instances.link_log_analytics 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@instanceName='{{ instanceName }}' --required 
@@json=
'{
"workspaceId": "{{ workspaceId }}", 
"dataTypes": "{{ dataTypes }}", 
"importData": {{ importData }}
}'
;
```
</TabItem>
<TabItem value="unlink_log_analytics">

Unlink Log Analytics workspace for SCOM monitoring instance

```sql
EXEC azure.scom.instances.unlink_log_analytics 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@instanceName='{{ instanceName }}' --required
;
```
</TabItem>
</Tabs>
