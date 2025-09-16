--- 
title: configuration_group_schemas
hide_title: false
hide_table_of_contents: false
keywords:
  - configuration_group_schemas
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

Creates, updates, deletes, gets or lists a <code>configuration_group_schemas</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>configuration_group_schemas</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_network.configuration_group_schemas" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_publisher', value: 'list_by_publisher' }
    ]}
>
<TabItem value="get">

Request is successful. The operation returns the resulting publisher network function definition group resource.

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
    <td>Configuration group schema properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_publisher">

Request is successful. The operation returns the resulting configuration group schema resource.

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
    <td>Configuration group schema properties.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-configurationGroupSchemaName"><code>configurationGroupSchemaName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets information about the specified configuration group schema.</td>
</tr>
<tr>
    <td><a href="#list_by_publisher"><CopyableCode code="list_by_publisher" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets information of the configuration group schemas under a publisher.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-configurationGroupSchemaName"><code>configurationGroupSchemaName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates a configuration group schema.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-configurationGroupSchemaName"><code>configurationGroupSchemaName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates a configuration group schema resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-configurationGroupSchemaName"><code>configurationGroupSchemaName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes a specified configuration group schema.</td>
</tr>
<tr>
    <td><a href="#update_state"><CopyableCode code="update_state" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-configurationGroupSchemaName"><code>configurationGroupSchemaName</code></a></td>
    <td></td>
    <td>Update configuration group schema state.</td>
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
<tr id="parameter-configurationGroupSchemaName">
    <td><CopyableCode code="configurationGroupSchemaName" /></td>
    <td><code>string</code></td>
    <td>The name of the configuration group schema.</td>
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
        { label: 'list_by_publisher', value: 'list_by_publisher' }
    ]}
>
<TabItem value="get">

Gets information about the specified configuration group schema.

```sql
SELECT
location,
properties,
tags
FROM azure.hybrid_network.configuration_group_schemas
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND publisherName = '{{ publisherName }}' -- required
AND configurationGroupSchemaName = '{{ configurationGroupSchemaName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_publisher">

Gets information of the configuration group schemas under a publisher.

```sql
SELECT
location,
properties,
tags
FROM azure.hybrid_network.configuration_group_schemas
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND publisherName = '{{ publisherName }}' -- required
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

Creates or updates a configuration group schema.

```sql
INSERT INTO azure.hybrid_network.configuration_group_schemas (
data__properties,
data__tags,
data__location,
resourceGroupName,
publisherName,
configurationGroupSchemaName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ tags }}',
'{{ location }}',
'{{ resourceGroupName }}',
'{{ publisherName }}',
'{{ configurationGroupSchemaName }}',
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
- name: configuration_group_schemas
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the configuration_group_schemas resource.
    - name: publisherName
      value: string
      description: Required parameter for the configuration_group_schemas resource.
    - name: configurationGroupSchemaName
      value: string
      description: Required parameter for the configuration_group_schemas resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the configuration_group_schemas resource.
    - name: properties
      value: object
      description: |
        Configuration group schema properties.
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

Updates a configuration group schema resource.

```sql
UPDATE azure.hybrid_network.configuration_group_schemas
SET 
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND publisherName = '{{ publisherName }}' --required
AND configurationGroupSchemaName = '{{ configurationGroupSchemaName }}' --required
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

Deletes a specified configuration group schema.

```sql
DELETE FROM azure.hybrid_network.configuration_group_schemas
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND publisherName = '{{ publisherName }}' --required
AND configurationGroupSchemaName = '{{ configurationGroupSchemaName }}' --required
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

Update configuration group schema state.

```sql
EXEC azure.hybrid_network.configuration_group_schemas.update_state 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@publisherName='{{ publisherName }}' --required, 
@configurationGroupSchemaName='{{ configurationGroupSchemaName }}' --required 
@@json=
'{
"versionState": "{{ versionState }}"
}'
;
```
</TabItem>
</Tabs>
