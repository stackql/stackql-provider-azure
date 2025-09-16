--- 
title: network_service_design_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - network_service_design_versions
  - hybrid_network
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

Creates, updates, deletes, gets or lists a <code>network_service_design_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>network_service_design_versions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_network.network_service_design_versions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_network_service_design_group', value: 'list_by_network_service_design_group' }
    ]}
>
<TabItem value="get">

Request is successful. The operation returns the resulting networkServiceDesignVersion resource.

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
    <td>network service design version properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_network_service_design_group">

Request is successful. The operation returns the resulting networkServiceDesignVersion resource.

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
    <td>network service design version properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-networkServiceDesignGroupName"><code>networkServiceDesignGroupName</code></a>, <a href="#parameter-networkServiceDesignVersionName"><code>networkServiceDesignVersionName</code></a></td>
    <td></td>
    <td>Gets information about a network service design version.</td>
</tr>
<tr>
    <td><a href="#list_by_network_service_design_group"><CopyableCode code="list_by_network_service_design_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-networkServiceDesignGroupName"><code>networkServiceDesignGroupName</code></a></td>
    <td></td>
    <td>Gets information about a list of network service design versions under a network service design group.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-networkServiceDesignGroupName"><code>networkServiceDesignGroupName</code></a>, <a href="#parameter-networkServiceDesignVersionName"><code>networkServiceDesignVersionName</code></a></td>
    <td></td>
    <td>Creates or updates a network service design version.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-networkServiceDesignGroupName"><code>networkServiceDesignGroupName</code></a>, <a href="#parameter-networkServiceDesignVersionName"><code>networkServiceDesignVersionName</code></a></td>
    <td></td>
    <td>Updates a network service design version resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-networkServiceDesignGroupName"><code>networkServiceDesignGroupName</code></a>, <a href="#parameter-networkServiceDesignVersionName"><code>networkServiceDesignVersionName</code></a></td>
    <td></td>
    <td>Deletes the specified network service design version.</td>
</tr>
<tr>
    <td><a href="#update_state"><CopyableCode code="update_state" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-networkServiceDesignGroupName"><code>networkServiceDesignGroupName</code></a>, <a href="#parameter-networkServiceDesignVersionName"><code>networkServiceDesignVersionName</code></a></td>
    <td></td>
    <td>Update network service design version state.</td>
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
<tr id="parameter-networkServiceDesignGroupName">
    <td><CopyableCode code="networkServiceDesignGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the network service design group.</td>
</tr>
<tr id="parameter-networkServiceDesignVersionName">
    <td><CopyableCode code="networkServiceDesignVersionName" /></td>
    <td><code>string</code></td>
    <td>The name of the network service design version. The name should conform to the SemVer 2.0.0 specification: https://semver.org/spec/v2.0.0.html.</td>
</tr>
<tr id="parameter-publisherName">
    <td><CopyableCode code="publisherName" /></td>
    <td><code>string</code></td>
    <td>The name of the publisher.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_network_service_design_group', value: 'list_by_network_service_design_group' }
    ]}
>
<TabItem value="get">

Gets information about a network service design version.

```sql
SELECT
location,
properties,
tags
FROM azure.hybrid_network.network_service_design_versions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND publisherName = '{{ publisherName }}' -- required
AND networkServiceDesignGroupName = '{{ networkServiceDesignGroupName }}' -- required
AND networkServiceDesignVersionName = '{{ networkServiceDesignVersionName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_network_service_design_group">

Gets information about a list of network service design versions under a network service design group.

```sql
SELECT
location,
properties,
tags
FROM azure.hybrid_network.network_service_design_versions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND publisherName = '{{ publisherName }}' -- required
AND networkServiceDesignGroupName = '{{ networkServiceDesignGroupName }}' -- required
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

Creates or updates a network service design version.

```sql
INSERT INTO azure.hybrid_network.network_service_design_versions (
data__tags,
data__location,
data__properties,
subscriptionId,
resourceGroupName,
publisherName,
networkServiceDesignGroupName,
networkServiceDesignVersionName
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ publisherName }}',
'{{ networkServiceDesignGroupName }}',
'{{ networkServiceDesignVersionName }}'
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
- name: network_service_design_versions
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the network_service_design_versions resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the network_service_design_versions resource.
    - name: publisherName
      value: string
      description: Required parameter for the network_service_design_versions resource.
    - name: networkServiceDesignGroupName
      value: string
      description: Required parameter for the network_service_design_versions resource.
    - name: networkServiceDesignVersionName
      value: string
      description: Required parameter for the network_service_design_versions resource.
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
        network service design version properties.
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

Updates a network service design version resource.

```sql
UPDATE azure.hybrid_network.network_service_design_versions
SET 
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND publisherName = '{{ publisherName }}' --required
AND networkServiceDesignGroupName = '{{ networkServiceDesignGroupName }}' --required
AND networkServiceDesignVersionName = '{{ networkServiceDesignVersionName }}' --required
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

Deletes the specified network service design version.

```sql
DELETE FROM azure.hybrid_network.network_service_design_versions
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND publisherName = '{{ publisherName }}' --required
AND networkServiceDesignGroupName = '{{ networkServiceDesignGroupName }}' --required
AND networkServiceDesignVersionName = '{{ networkServiceDesignVersionName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_state"
    values={[
        { label: 'update_state', value: 'update_state' }
    ]}
>
<TabItem value="update_state">

Update network service design version state.

```sql
EXEC azure.hybrid_network.network_service_design_versions.update_state 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@publisherName='{{ publisherName }}' --required, 
@networkServiceDesignGroupName='{{ networkServiceDesignGroupName }}' --required, 
@networkServiceDesignVersionName='{{ networkServiceDesignVersionName }}' --required 
@@json=
'{
"versionState": "{{ versionState }}"
}'
;
```
</TabItem>
</Tabs>
