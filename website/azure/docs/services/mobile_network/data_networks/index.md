--- 
title: data_networks
hide_title: false
hide_table_of_contents: false
keywords:
  - data_networks
  - mobile_network
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

Creates, updates, deletes, gets or lists a <code>data_networks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>data_networks</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mobile_network.data_networks" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_mobile_network', value: 'list_by_mobile_network' }
    ]}
>
<TabItem value="get">

Request successful. The operation returns the resulting data network resource.

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
    <td>Data network properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_mobile_network">

Request successful. The operation returns a list of data network resources.

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
    <td>Data network properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mobileNetworkName"><code>mobileNetworkName</code></a>, <a href="#parameter-dataNetworkName"><code>dataNetworkName</code></a></td>
    <td></td>
    <td>Gets information about the specified data network.</td>
</tr>
<tr>
    <td><a href="#list_by_mobile_network"><CopyableCode code="list_by_mobile_network" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mobileNetworkName"><code>mobileNetworkName</code></a></td>
    <td></td>
    <td>Lists all data networks in the mobile network.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mobileNetworkName"><code>mobileNetworkName</code></a>, <a href="#parameter-dataNetworkName"><code>dataNetworkName</code></a></td>
    <td></td>
    <td>Creates or updates a data network. Must be created in the same location as its parent mobile network.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mobileNetworkName"><code>mobileNetworkName</code></a>, <a href="#parameter-dataNetworkName"><code>dataNetworkName</code></a></td>
    <td></td>
    <td>Deletes the specified data network.</td>
</tr>
<tr>
    <td><a href="#update_tags"><CopyableCode code="update_tags" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mobileNetworkName"><code>mobileNetworkName</code></a>, <a href="#parameter-dataNetworkName"><code>dataNetworkName</code></a></td>
    <td></td>
    <td>Updates data network tags.</td>
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
<tr id="parameter-dataNetworkName">
    <td><CopyableCode code="dataNetworkName" /></td>
    <td><code>string</code></td>
    <td>The name of the data network.</td>
</tr>
<tr id="parameter-mobileNetworkName">
    <td><CopyableCode code="mobileNetworkName" /></td>
    <td><code>string</code></td>
    <td>The name of the mobile network.</td>
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
        { label: 'list_by_mobile_network', value: 'list_by_mobile_network' }
    ]}
>
<TabItem value="get">

Gets information about the specified data network.

```sql
SELECT
location,
properties,
tags
FROM azure.mobile_network.data_networks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND mobileNetworkName = '{{ mobileNetworkName }}' -- required
AND dataNetworkName = '{{ dataNetworkName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_mobile_network">

Lists all data networks in the mobile network.

```sql
SELECT
location,
properties,
tags
FROM azure.mobile_network.data_networks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND mobileNetworkName = '{{ mobileNetworkName }}' -- required
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

Creates or updates a data network. Must be created in the same location as its parent mobile network.

```sql
INSERT INTO azure.mobile_network.data_networks (
data__properties,
data__tags,
data__location,
subscriptionId,
resourceGroupName,
mobileNetworkName,
dataNetworkName
)
SELECT 
'{{ properties }}',
'{{ tags }}',
'{{ location }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ mobileNetworkName }}',
'{{ dataNetworkName }}'
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
- name: data_networks
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the data_networks resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the data_networks resource.
    - name: mobileNetworkName
      value: string
      description: Required parameter for the data_networks resource.
    - name: dataNetworkName
      value: string
      description: Required parameter for the data_networks resource.
    - name: properties
      value: object
      description: |
        Data network properties.
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


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Deletes the specified data network.

```sql
DELETE FROM azure.mobile_network.data_networks
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND mobileNetworkName = '{{ mobileNetworkName }}' --required
AND dataNetworkName = '{{ dataNetworkName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_tags"
    values={[
        { label: 'update_tags', value: 'update_tags' }
    ]}
>
<TabItem value="update_tags">

Updates data network tags.

```sql
EXEC azure.mobile_network.data_networks.update_tags 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@mobileNetworkName='{{ mobileNetworkName }}' --required, 
@dataNetworkName='{{ dataNetworkName }}' --required 
@@json=
'{
"tags": "{{ tags }}"
}'
;
```
</TabItem>
</Tabs>
