--- 
title: servers
hide_title: false
hide_table_of_contents: false
keywords:
  - servers
  - fluid_relay
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

Creates, updates, deletes, gets or lists a <code>servers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>servers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.fluid_relay.servers" /></td></tr>
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

Request completed synchronously.

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
    <td>Identity for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>System meta data for this resource, including creation and modification information.</td>
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

Paged response

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
    <td>Identity for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>System meta data for this resource, including creation and modification information.</td>
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

Paged response

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
    <td>Identity for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>System meta data for this resource, including creation and modification information.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-fluidRelayServerName"><code>fluidRelayServerName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-fluidRelayServerName"><code>fluidRelayServerName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-fluidRelayServerName"><code>fluidRelayServerName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-fluidRelayServerName"><code>fluidRelayServerName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#regenerate_key"><CopyableCode code="regenerate_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-fluidRelayServerName"><code>fluidRelayServerName</code></a>, <a href="#parameter-keyName"><code>keyName</code></a></td>
    <td></td>
    <td></td>
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
<tr id="parameter-fluidRelayServerName">
    <td><CopyableCode code="fluidRelayServerName" /></td>
    <td><code>string</code></td>
    <td>The Fluid Relay server resource name.</td>
</tr>
<tr id="parameter-resourceGroup">
    <td><CopyableCode code="resourceGroup" /></td>
    <td><code>string</code></td>
    <td>The resource group containing the resource.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription id (GUID) for this resource.</td>
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

Request completed synchronously.

```sql
SELECT
identity,
location,
properties,
systemData,
tags
FROM azure.fluid_relay.servers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroup = '{{ resourceGroup }}' -- required
AND fluidRelayServerName = '{{ fluidRelayServerName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Paged response

```sql
SELECT
identity,
location,
properties,
systemData,
tags
FROM azure.fluid_relay.servers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroup = '{{ resourceGroup }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

Paged response

```sql
SELECT
identity,
location,
properties,
systemData,
tags
FROM azure.fluid_relay.servers
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

No description available.

```sql
INSERT INTO azure.fluid_relay.servers (
data__properties,
data__identity,
data__tags,
data__location,
subscriptionId,
resourceGroup,
fluidRelayServerName
)
SELECT 
'{{ properties }}',
'{{ identity }}',
'{{ tags }}',
'{{ location }}',
'{{ subscriptionId }}',
'{{ resourceGroup }}',
'{{ fluidRelayServerName }}'
RETURNING
identity,
location,
properties,
systemData,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: servers
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the servers resource.
    - name: resourceGroup
      value: string
      description: Required parameter for the servers resource.
    - name: fluidRelayServerName
      value: string
      description: Required parameter for the servers resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
    - name: identity
      value: object
      description: |
        Identity for the resource.
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

No description available.

```sql
UPDATE azure.fluid_relay.servers
SET 
data__properties = '{{ properties }}',
data__tags = '{{ tags }}',
data__identity = '{{ identity }}',
data__location = '{{ location }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroup = '{{ resourceGroup }}' --required
AND fluidRelayServerName = '{{ fluidRelayServerName }}' --required
RETURNING
identity,
location,
properties,
systemData,
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

No description available.

```sql
DELETE FROM azure.fluid_relay.servers
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroup = '{{ resourceGroup }}' --required
AND fluidRelayServerName = '{{ fluidRelayServerName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="regenerate_key"
    values={[
        { label: 'regenerate_key', value: 'regenerate_key' }
    ]}
>
<TabItem value="regenerate_key">

Request Completed Synchronously.

```sql
EXEC azure.fluid_relay.servers.regenerate_key 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroup='{{ resourceGroup }}' --required, 
@fluidRelayServerName='{{ fluidRelayServerName }}' --required 
@@json=
'{
"keyName": "{{ keyName }}"
}'
;
```
</TabItem>
</Tabs>
