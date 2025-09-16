--- 
title: network_fabrics
hide_title: false
hide_table_of_contents: false
keywords:
  - network_fabrics
  - managed_network_fabric
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

Creates, updates, deletes, gets or lists a <code>network_fabrics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>network_fabrics</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network_fabric.network_fabrics" /></td></tr>
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
    <td>Resource properties.</td>
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

Lists all Network Fabrics under the resource group.

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
    <td>Resource properties.</td>
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

Lists all NetworkFabrics under the subscription.

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
    <td>Resource properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFabricName"><code>networkFabricName</code></a></td>
    <td></td>
    <td>Get Network Fabric resource details.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>List all the Network Fabric resources in the given resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>List all the Network Fabric resources in the given subscription.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFabricName"><code>networkFabricName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create Network Fabric resource.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFabricName"><code>networkFabricName</code></a></td>
    <td></td>
    <td>Update certain properties of the Network Fabric resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFabricName"><code>networkFabricName</code></a></td>
    <td></td>
    <td>Delete Network Fabric resource.</td>
</tr>
<tr>
    <td><a href="#provision"><CopyableCode code="provision" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFabricName"><code>networkFabricName</code></a></td>
    <td></td>
    <td>Provisions the underlying resources in the given Network Fabric instance.</td>
</tr>
<tr>
    <td><a href="#deprovision"><CopyableCode code="deprovision" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFabricName"><code>networkFabricName</code></a></td>
    <td></td>
    <td>Deprovisions the underlying resources in the given Network Fabric instance.</td>
</tr>
<tr>
    <td><a href="#upgrade"><CopyableCode code="upgrade" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFabricName"><code>networkFabricName</code></a></td>
    <td></td>
    <td>Upgrades the version of the underlying resources in the given Network Fabric instance.</td>
</tr>
<tr>
    <td><a href="#refresh_configuration"><CopyableCode code="refresh_configuration" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFabricName"><code>networkFabricName</code></a></td>
    <td></td>
    <td>Refreshes the configuration of the underlying resources in the given Network Fabric instance.</td>
</tr>
<tr>
    <td><a href="#validate_configuration"><CopyableCode code="validate_configuration" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFabricName"><code>networkFabricName</code></a></td>
    <td></td>
    <td>Validates the configuration of the underlying resources in the given Network Fabric instance.</td>
</tr>
<tr>
    <td><a href="#commit_configuration"><CopyableCode code="commit_configuration" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFabricName"><code>networkFabricName</code></a></td>
    <td></td>
    <td>Atomic update of the given Network Fabric instance. Sync update of NFA resources at Fabric level.</td>
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
<tr id="parameter-networkFabricName">
    <td><CopyableCode code="networkFabricName" /></td>
    <td><code>string</code></td>
    <td>Name of the Network Fabric.</td>
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

Get Network Fabric resource details.

```sql
SELECT
location,
properties,
tags
FROM azure.managed_network_fabric.network_fabrics
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND networkFabricName = '{{ networkFabricName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

List all the Network Fabric resources in the given resource group.

```sql
SELECT
location,
properties,
tags
FROM azure.managed_network_fabric.network_fabrics
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

List all the Network Fabric resources in the given subscription.

```sql
SELECT
location,
properties,
tags
FROM azure.managed_network_fabric.network_fabrics
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

Create Network Fabric resource.

```sql
INSERT INTO azure.managed_network_fabric.network_fabrics (
data__properties,
data__tags,
data__location,
subscriptionId,
resourceGroupName,
networkFabricName
)
SELECT 
'{{ properties }}' /* required */,
'{{ tags }}',
'{{ location }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ networkFabricName }}'
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
- name: network_fabrics
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the network_fabrics resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the network_fabrics resource.
    - name: networkFabricName
      value: string
      description: Required parameter for the network_fabrics resource.
    - name: properties
      value: object
      description: |
        Resource properties.
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

Update certain properties of the Network Fabric resource.

```sql
UPDATE azure.managed_network_fabric.network_fabrics
SET 
data__properties = '{{ properties }}',
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND networkFabricName = '{{ networkFabricName }}' --required
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

Delete Network Fabric resource.

```sql
DELETE FROM azure.managed_network_fabric.network_fabrics
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND networkFabricName = '{{ networkFabricName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="provision"
    values={[
        { label: 'provision', value: 'provision' },
        { label: 'deprovision', value: 'deprovision' },
        { label: 'upgrade', value: 'upgrade' },
        { label: 'refresh_configuration', value: 'refresh_configuration' },
        { label: 'validate_configuration', value: 'validate_configuration' },
        { label: 'commit_configuration', value: 'commit_configuration' }
    ]}
>
<TabItem value="provision">

Provisions the underlying resources in the given Network Fabric instance.

```sql
EXEC azure.managed_network_fabric.network_fabrics.provision 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@networkFabricName='{{ networkFabricName }}' --required
;
```
</TabItem>
<TabItem value="deprovision">

Deprovisions the underlying resources in the given Network Fabric instance.

```sql
EXEC azure.managed_network_fabric.network_fabrics.deprovision 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@networkFabricName='{{ networkFabricName }}' --required
;
```
</TabItem>
<TabItem value="upgrade">

Upgrades the version of the underlying resources in the given Network Fabric instance.

```sql
EXEC azure.managed_network_fabric.network_fabrics.upgrade 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@networkFabricName='{{ networkFabricName }}' --required 
@@json=
'{
"action": "{{ action }}", 
"version": "{{ version }}"
}'
;
```
</TabItem>
<TabItem value="refresh_configuration">

Refreshes the configuration of the underlying resources in the given Network Fabric instance.

```sql
EXEC azure.managed_network_fabric.network_fabrics.refresh_configuration 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@networkFabricName='{{ networkFabricName }}' --required
;
```
</TabItem>
<TabItem value="validate_configuration">

Validates the configuration of the underlying resources in the given Network Fabric instance.

```sql
EXEC azure.managed_network_fabric.network_fabrics.validate_configuration 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@networkFabricName='{{ networkFabricName }}' --required 
@@json=
'{
"validateAction": "{{ validateAction }}"
}'
;
```
</TabItem>
<TabItem value="commit_configuration">

Atomic update of the given Network Fabric instance. Sync update of NFA resources at Fabric level.

```sql
EXEC azure.managed_network_fabric.network_fabrics.commit_configuration 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@networkFabricName='{{ networkFabricName }}' --required
;
```
</TabItem>
</Tabs>
