--- 
title: network_function_definition_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - network_function_definition_versions
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

Creates, updates, deletes, gets or lists a <code>network_function_definition_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>network_function_definition_versions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_network.network_function_definition_versions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_network_function_definition_group', value: 'list_by_network_function_definition_group' }
    ]}
>
<TabItem value="get">

Request is successful. The operation returns the resulting NetworkFunctionDefinitionVersion resource.

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
    <td>Network function definition version properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_network_function_definition_group">

Request is successful. The operation returns the resulting NetworkFunctionDefinitionVersion resource.

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
    <td>Network function definition version properties.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-networkFunctionDefinitionGroupName"><code>networkFunctionDefinitionGroupName</code></a>, <a href="#parameter-networkFunctionDefinitionVersionName"><code>networkFunctionDefinitionVersionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets information about a network function definition version.</td>
</tr>
<tr>
    <td><a href="#list_by_network_function_definition_group"><CopyableCode code="list_by_network_function_definition_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-networkFunctionDefinitionGroupName"><code>networkFunctionDefinitionGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets information about a list of network function definition versions under a network function definition group.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-networkFunctionDefinitionGroupName"><code>networkFunctionDefinitionGroupName</code></a>, <a href="#parameter-networkFunctionDefinitionVersionName"><code>networkFunctionDefinitionVersionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates a network function definition version.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-networkFunctionDefinitionGroupName"><code>networkFunctionDefinitionGroupName</code></a>, <a href="#parameter-networkFunctionDefinitionVersionName"><code>networkFunctionDefinitionVersionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates a network function definition version resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-networkFunctionDefinitionGroupName"><code>networkFunctionDefinitionGroupName</code></a>, <a href="#parameter-networkFunctionDefinitionVersionName"><code>networkFunctionDefinitionVersionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified network function definition version.</td>
</tr>
<tr>
    <td><a href="#update_state"><CopyableCode code="update_state" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-networkFunctionDefinitionGroupName"><code>networkFunctionDefinitionGroupName</code></a>, <a href="#parameter-networkFunctionDefinitionVersionName"><code>networkFunctionDefinitionVersionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Update network function definition version state.</td>
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
<tr id="parameter-networkFunctionDefinitionGroupName">
    <td><CopyableCode code="networkFunctionDefinitionGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the network function definition group.</td>
</tr>
<tr id="parameter-networkFunctionDefinitionVersionName">
    <td><CopyableCode code="networkFunctionDefinitionVersionName" /></td>
    <td><code>string</code></td>
    <td>The name of the network function definition version. The name should conform to the SemVer 2.0.0 specification: https://semver.org/spec/v2.0.0.html.</td>
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
        { label: 'list_by_network_function_definition_group', value: 'list_by_network_function_definition_group' }
    ]}
>
<TabItem value="get">

Gets information about a network function definition version.

```sql
SELECT
location,
properties,
tags
FROM azure.hybrid_network.network_function_definition_versions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND publisherName = '{{ publisherName }}' -- required
AND networkFunctionDefinitionGroupName = '{{ networkFunctionDefinitionGroupName }}' -- required
AND networkFunctionDefinitionVersionName = '{{ networkFunctionDefinitionVersionName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_network_function_definition_group">

Gets information about a list of network function definition versions under a network function definition group.

```sql
SELECT
location,
properties,
tags
FROM azure.hybrid_network.network_function_definition_versions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND publisherName = '{{ publisherName }}' -- required
AND networkFunctionDefinitionGroupName = '{{ networkFunctionDefinitionGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Creates or updates a network function definition version.

```sql
INSERT INTO azure.hybrid_network.network_function_definition_versions (
data__tags,
data__location,
data__properties,
resourceGroupName,
publisherName,
networkFunctionDefinitionGroupName,
networkFunctionDefinitionVersionName,
subscriptionId
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ publisherName }}',
'{{ networkFunctionDefinitionGroupName }}',
'{{ networkFunctionDefinitionVersionName }}',
'{{ subscriptionId }}'
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
- name: network_function_definition_versions
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the network_function_definition_versions resource.
    - name: publisherName
      value: string
      description: Required parameter for the network_function_definition_versions resource.
    - name: networkFunctionDefinitionGroupName
      value: string
      description: Required parameter for the network_function_definition_versions resource.
    - name: networkFunctionDefinitionVersionName
      value: string
      description: Required parameter for the network_function_definition_versions resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the network_function_definition_versions resource.
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
        Network function definition version properties.
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

Updates a network function definition version resource.

```sql
UPDATE azure.hybrid_network.network_function_definition_versions
SET 
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND publisherName = '{{ publisherName }}' --required
AND networkFunctionDefinitionGroupName = '{{ networkFunctionDefinitionGroupName }}' --required
AND networkFunctionDefinitionVersionName = '{{ networkFunctionDefinitionVersionName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
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

Deletes the specified network function definition version.

```sql
DELETE FROM azure.hybrid_network.network_function_definition_versions
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND publisherName = '{{ publisherName }}' --required
AND networkFunctionDefinitionGroupName = '{{ networkFunctionDefinitionGroupName }}' --required
AND networkFunctionDefinitionVersionName = '{{ networkFunctionDefinitionVersionName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
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

Update network function definition version state.

```sql
EXEC azure.hybrid_network.network_function_definition_versions.update_state 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@publisherName='{{ publisherName }}' --required, 
@networkFunctionDefinitionGroupName='{{ networkFunctionDefinitionGroupName }}' --required, 
@networkFunctionDefinitionVersionName='{{ networkFunctionDefinitionVersionName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"versionState": "{{ versionState }}"
}'
;
```
</TabItem>
</Tabs>
