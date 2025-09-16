--- 
title: bare_metal_machines
hide_title: false
hide_table_of_contents: false
keywords:
  - bare_metal_machines
  - nexus
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

Creates, updates, deletes, gets or lists a <code>bare_metal_machines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>bare_metal_machines</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.nexus.bare_metal_machines" /></td></tr>
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

The resource has been successfully retrieved.

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
    <td>The extended location of the cluster associated with the resource. (title: ExtendedLocation represents the Azure custom location where the resource will be created.)</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The list of the resource properties. (title: BareMetalMachineProperties represents the properties of a bare metal machine.)</td>
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

The resource list has been successfully retrieved.

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
    <td>The extended location of the cluster associated with the resource. (title: ExtendedLocation represents the Azure custom location where the resource will be created.)</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The list of the resource properties. (title: BareMetalMachineProperties represents the properties of a bare metal machine.)</td>
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

The resource list has been successfully retrieved.

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
    <td>The extended location of the cluster associated with the resource. (title: ExtendedLocation represents the Azure custom location where the resource will be created.)</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The list of the resource properties. (title: BareMetalMachineProperties represents the properties of a bare metal machine.)</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bareMetalMachineName"><code>bareMetalMachineName</code></a></td>
    <td></td>
    <td>Get properties of the provided bare metal machine.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Get a list of bare metal machines in the provided resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get a list of bare metal machines in the provided subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bareMetalMachineName"><code>bareMetalMachineName</code></a>, <a href="#parameter-data__extendedLocation"><code>data__extendedLocation</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create a new bare metal machine or update the properties of the existing one.<br />All customer initiated requests will be rejected as the life cycle of this resource is managed by the system.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bareMetalMachineName"><code>bareMetalMachineName</code></a></td>
    <td></td>
    <td>Patch properties of the provided bare metal machine, or update tags associated with the bare metal machine. Properties and tag updates can be done independently.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bareMetalMachineName"><code>bareMetalMachineName</code></a></td>
    <td></td>
    <td>Delete the provided bare metal machine.<br />All customer initiated requests will be rejected as the life cycle of this resource is managed by the system.</td>
</tr>
<tr>
    <td><a href="#cordon"><CopyableCode code="cordon" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bareMetalMachineName"><code>bareMetalMachineName</code></a></td>
    <td></td>
    <td>Cordon the provided bare metal machine's Kubernetes node.</td>
</tr>
<tr>
    <td><a href="#power_off"><CopyableCode code="power_off" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bareMetalMachineName"><code>bareMetalMachineName</code></a></td>
    <td></td>
    <td>Power off the provided bare metal machine.</td>
</tr>
<tr>
    <td><a href="#reimage"><CopyableCode code="reimage" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bareMetalMachineName"><code>bareMetalMachineName</code></a></td>
    <td></td>
    <td>Reimage the provided bare metal machine.</td>
</tr>
<tr>
    <td><a href="#replace"><CopyableCode code="replace" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bareMetalMachineName"><code>bareMetalMachineName</code></a></td>
    <td></td>
    <td>Replace the provided bare metal machine.</td>
</tr>
<tr>
    <td><a href="#restart"><CopyableCode code="restart" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bareMetalMachineName"><code>bareMetalMachineName</code></a></td>
    <td></td>
    <td>Restart the provided bare metal machine.</td>
</tr>
<tr>
    <td><a href="#run_command"><CopyableCode code="run_command" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bareMetalMachineName"><code>bareMetalMachineName</code></a>, <a href="#parameter-script"><code>script</code></a>, <a href="#parameter-limitTimeSeconds"><code>limitTimeSeconds</code></a></td>
    <td></td>
    <td>Run the command or the script on the provided bare metal machine. The URL to storage account with the command execution results and the command exit code can be retrieved from the operation status API once available.</td>
</tr>
<tr>
    <td><a href="#run_data_extracts"><CopyableCode code="run_data_extracts" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bareMetalMachineName"><code>bareMetalMachineName</code></a>, <a href="#parameter-commands"><code>commands</code></a>, <a href="#parameter-limitTimeSeconds"><code>limitTimeSeconds</code></a></td>
    <td></td>
    <td>Run one or more data extractions on the provided bare metal machine. The URL to storage account with the command execution results and the command exit code can be retrieved from the operation status API once available.</td>
</tr>
<tr>
    <td><a href="#run_read_commands"><CopyableCode code="run_read_commands" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bareMetalMachineName"><code>bareMetalMachineName</code></a>, <a href="#parameter-commands"><code>commands</code></a>, <a href="#parameter-limitTimeSeconds"><code>limitTimeSeconds</code></a></td>
    <td></td>
    <td>Run one or more read-only commands on the provided bare metal machine. The URL to storage account with the command execution results and the command exit code can be retrieved from the operation status API once available.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bareMetalMachineName"><code>bareMetalMachineName</code></a></td>
    <td></td>
    <td>Start the provided bare metal machine.</td>
</tr>
<tr>
    <td><a href="#uncordon"><CopyableCode code="uncordon" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bareMetalMachineName"><code>bareMetalMachineName</code></a></td>
    <td></td>
    <td>Uncordon the provided bare metal machine's Kubernetes node.</td>
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
<tr id="parameter-bareMetalMachineName">
    <td><CopyableCode code="bareMetalMachineName" /></td>
    <td><code>string</code></td>
    <td>The name of the bare metal machine.</td>
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
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Get properties of the provided bare metal machine.

```sql
SELECT
extendedLocation,
location,
properties,
tags
FROM azure.nexus.bare_metal_machines
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND bareMetalMachineName = '{{ bareMetalMachineName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Get a list of bare metal machines in the provided resource group.

```sql
SELECT
extendedLocation,
location,
properties,
tags
FROM azure.nexus.bare_metal_machines
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

Get a list of bare metal machines in the provided subscription.

```sql
SELECT
extendedLocation,
location,
properties,
tags
FROM azure.nexus.bare_metal_machines
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

Create a new bare metal machine or update the properties of the existing one.<br />All customer initiated requests will be rejected as the life cycle of this resource is managed by the system.

```sql
INSERT INTO azure.nexus.bare_metal_machines (
data__extendedLocation,
data__properties,
data__tags,
data__location,
subscriptionId,
resourceGroupName,
bareMetalMachineName
)
SELECT 
'{{ extendedLocation }}' /* required */,
'{{ properties }}' /* required */,
'{{ tags }}',
'{{ location }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ bareMetalMachineName }}'
RETURNING
extendedLocation,
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: bare_metal_machines
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the bare_metal_machines resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the bare_metal_machines resource.
    - name: bareMetalMachineName
      value: string
      description: Required parameter for the bare_metal_machines resource.
    - name: extendedLocation
      value: object
      description: |
        The extended location of the cluster associated with the resource.
    - name: properties
      value: object
      description: |
        The list of the resource properties.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
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

Patch properties of the provided bare metal machine, or update tags associated with the bare metal machine. Properties and tag updates can be done independently.

```sql
UPDATE azure.nexus.bare_metal_machines
SET 
data__properties = '{{ properties }}',
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND bareMetalMachineName = '{{ bareMetalMachineName }}' --required
RETURNING
extendedLocation,
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

Delete the provided bare metal machine.<br />All customer initiated requests will be rejected as the life cycle of this resource is managed by the system.

```sql
DELETE FROM azure.nexus.bare_metal_machines
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND bareMetalMachineName = '{{ bareMetalMachineName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="cordon"
    values={[
        { label: 'cordon', value: 'cordon' },
        { label: 'power_off', value: 'power_off' },
        { label: 'reimage', value: 'reimage' },
        { label: 'replace', value: 'replace' },
        { label: 'restart', value: 'restart' },
        { label: 'run_command', value: 'run_command' },
        { label: 'run_data_extracts', value: 'run_data_extracts' },
        { label: 'run_read_commands', value: 'run_read_commands' },
        { label: 'start', value: 'start' },
        { label: 'uncordon', value: 'uncordon' }
    ]}
>
<TabItem value="cordon">

Cordon the provided bare metal machine's Kubernetes node.

```sql
EXEC azure.nexus.bare_metal_machines.cordon 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@bareMetalMachineName='{{ bareMetalMachineName }}' --required 
@@json=
'{
"evacuate": "{{ evacuate }}"
}'
;
```
</TabItem>
<TabItem value="power_off">

Power off the provided bare metal machine.

```sql
EXEC azure.nexus.bare_metal_machines.power_off 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@bareMetalMachineName='{{ bareMetalMachineName }}' --required 
@@json=
'{
"skipShutdown": "{{ skipShutdown }}"
}'
;
```
</TabItem>
<TabItem value="reimage">

Reimage the provided bare metal machine.

```sql
EXEC azure.nexus.bare_metal_machines.reimage 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@bareMetalMachineName='{{ bareMetalMachineName }}' --required
;
```
</TabItem>
<TabItem value="replace">

Replace the provided bare metal machine.

```sql
EXEC azure.nexus.bare_metal_machines.replace 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@bareMetalMachineName='{{ bareMetalMachineName }}' --required 
@@json=
'{
"bmcCredentials": "{{ bmcCredentials }}", 
"bmcMacAddress": "{{ bmcMacAddress }}", 
"bootMacAddress": "{{ bootMacAddress }}", 
"machineName": "{{ machineName }}", 
"serialNumber": "{{ serialNumber }}"
}'
;
```
</TabItem>
<TabItem value="restart">

Restart the provided bare metal machine.

```sql
EXEC azure.nexus.bare_metal_machines.restart 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@bareMetalMachineName='{{ bareMetalMachineName }}' --required
;
```
</TabItem>
<TabItem value="run_command">

Run the command or the script on the provided bare metal machine. The URL to storage account with the command execution results and the command exit code can be retrieved from the operation status API once available.

```sql
EXEC azure.nexus.bare_metal_machines.run_command 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@bareMetalMachineName='{{ bareMetalMachineName }}' --required 
@@json=
'{
"arguments": "{{ arguments }}", 
"limitTimeSeconds": {{ limitTimeSeconds }}, 
"script": "{{ script }}"
}'
;
```
</TabItem>
<TabItem value="run_data_extracts">

Run one or more data extractions on the provided bare metal machine. The URL to storage account with the command execution results and the command exit code can be retrieved from the operation status API once available.

```sql
EXEC azure.nexus.bare_metal_machines.run_data_extracts 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@bareMetalMachineName='{{ bareMetalMachineName }}' --required 
@@json=
'{
"commands": "{{ commands }}", 
"limitTimeSeconds": {{ limitTimeSeconds }}
}'
;
```
</TabItem>
<TabItem value="run_read_commands">

Run one or more read-only commands on the provided bare metal machine. The URL to storage account with the command execution results and the command exit code can be retrieved from the operation status API once available.

```sql
EXEC azure.nexus.bare_metal_machines.run_read_commands 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@bareMetalMachineName='{{ bareMetalMachineName }}' --required 
@@json=
'{
"commands": "{{ commands }}", 
"limitTimeSeconds": {{ limitTimeSeconds }}
}'
;
```
</TabItem>
<TabItem value="start">

Start the provided bare metal machine.

```sql
EXEC azure.nexus.bare_metal_machines.start 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@bareMetalMachineName='{{ bareMetalMachineName }}' --required
;
```
</TabItem>
<TabItem value="uncordon">

Uncordon the provided bare metal machine's Kubernetes node.

```sql
EXEC azure.nexus.bare_metal_machines.uncordon 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@bareMetalMachineName='{{ bareMetalMachineName }}' --required
;
```
</TabItem>
</Tabs>
