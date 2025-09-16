--- 
title: server_dependency_map_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - server_dependency_map_controllers
  - migrate
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

Creates, updates, deletes, gets or lists a <code>server_dependency_map_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>server_dependency_map_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.server_dependency_map_controllers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#client_group_members"><CopyableCode code="client_group_members" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a></td>
    <td></td>
    <td>API to list client group members for the selected client group.</td>
</tr>
<tr>
    <td><a href="#export_dependencies"><CopyableCode code="export_dependencies" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a></td>
    <td></td>
    <td>API to generate report containing agentless dependencies.</td>
</tr>
<tr>
    <td><a href="#generate_coarse_map"><CopyableCode code="generate_coarse_map" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a></td>
    <td></td>
    <td>API to generate coarse map for the list of machines.</td>
</tr>
<tr>
    <td><a href="#generate_detailed_map"><CopyableCode code="generate_detailed_map" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a></td>
    <td></td>
    <td>API to generate detailed map for a selected machine.</td>
</tr>
<tr>
    <td><a href="#server_group_members"><CopyableCode code="server_group_members" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a></td>
    <td></td>
    <td>API to list server group members for the selected server group.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-siteName">
    <td><CopyableCode code="siteName" /></td>
    <td><code>string</code></td>
    <td>Site name</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="client_group_members"
    values={[
        { label: 'client_group_members', value: 'client_group_members' },
        { label: 'export_dependencies', value: 'export_dependencies' },
        { label: 'generate_coarse_map', value: 'generate_coarse_map' },
        { label: 'generate_detailed_map', value: 'generate_detailed_map' },
        { label: 'server_group_members', value: 'server_group_members' }
    ]}
>
<TabItem value="client_group_members">

API to list client group members for the selected client group.

```sql
EXEC azure.migrate.server_dependency_map_controllers.client_group_members 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@siteName='{{ siteName }}' --required 
@@json=
'{
"machineId": "{{ machineId }}", 
"processGroupName": "{{ processGroupName }}", 
"processName": "{{ processName }}", 
"startTime": "{{ startTime }}", 
"endTime": "{{ endTime }}", 
"filters": "{{ filters }}"
}'
;
```
</TabItem>
<TabItem value="export_dependencies">

API to generate report containing agentless dependencies.

```sql
EXEC azure.migrate.server_dependency_map_controllers.export_dependencies 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@siteName='{{ siteName }}' --required 
@@json=
'{
"startTime": "{{ startTime }}", 
"endTime": "{{ endTime }}"
}'
;
```
</TabItem>
<TabItem value="generate_coarse_map">

API to generate coarse map for the list of machines.

```sql
EXEC azure.migrate.server_dependency_map_controllers.generate_coarse_map 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@siteName='{{ siteName }}' --required 
@@json=
'{
"startTime": "{{ startTime }}", 
"endTime": "{{ endTime }}", 
"filters": "{{ filters }}"
}'
;
```
</TabItem>
<TabItem value="generate_detailed_map">

API to generate detailed map for a selected machine.

```sql
EXEC azure.migrate.server_dependency_map_controllers.generate_detailed_map 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@siteName='{{ siteName }}' --required 
@@json=
'{
"machineId": "{{ machineId }}", 
"startTime": "{{ startTime }}", 
"endTime": "{{ endTime }}", 
"filters": "{{ filters }}"
}'
;
```
</TabItem>
<TabItem value="server_group_members">

API to list server group members for the selected server group.

```sql
EXEC azure.migrate.server_dependency_map_controllers.server_group_members 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@siteName='{{ siteName }}' --required 
@@json=
'{
"serverPort": {{ serverPort }}, 
"startTime": "{{ startTime }}", 
"endTime": "{{ endTime }}", 
"filters": "{{ filters }}"
}'
;
```
</TabItem>
</Tabs>
