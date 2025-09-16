--- 
title: flows
hide_title: false
hide_table_of_contents: false
keywords:
  - flows
  - data_transfer
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

Creates, updates, deletes, gets or lists a <code>flows</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>flows</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_transfer.flows" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_connection', value: 'list_by_connection' }
    ]}
>
<TabItem value="get">

Retrieved the flows resource.

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
    <td>The managed identity of the flow resource, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>Plan for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of flow</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_connection">

Listed all flows under the resource group.

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
    <td>The managed identity of the flow resource, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>Plan for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of flow</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a>, <a href="#parameter-flowName"><code>flowName</code></a></td>
    <td></td>
    <td>Gets flow resource.</td>
</tr>
<tr>
    <td><a href="#list_by_connection"><CopyableCode code="list_by_connection" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a></td>
    <td></td>
    <td>Gets flows in a connection.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a>, <a href="#parameter-flowName"><code>flowName</code></a>, <a href="#parameter-data__location"><code>data__location</code></a></td>
    <td></td>
    <td>Creates or updates the flow resource.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a>, <a href="#parameter-flowName"><code>flowName</code></a></td>
    <td></td>
    <td>Updates the flow resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a>, <a href="#parameter-flowName"><code>flowName</code></a></td>
    <td></td>
    <td>Deletes the flow resource.</td>
</tr>
<tr>
    <td><a href="#enable"><CopyableCode code="enable" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a>, <a href="#parameter-flowName"><code>flowName</code></a></td>
    <td></td>
    <td>Enables the specified flow.</td>
</tr>
<tr>
    <td><a href="#disable"><CopyableCode code="disable" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a>, <a href="#parameter-flowName"><code>flowName</code></a></td>
    <td></td>
    <td>Disables the specified flow</td>
</tr>
<tr>
    <td><a href="#link"><CopyableCode code="link" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a>, <a href="#parameter-flowName"><code>flowName</code></a>, <a href="#parameter-id"><code>id</code></a></td>
    <td></td>
    <td>Links the specified flow.</td>
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
<tr id="parameter-connectionName">
    <td><CopyableCode code="connectionName" /></td>
    <td><code>string</code></td>
    <td>The name for the connection that is to be requested.</td>
</tr>
<tr id="parameter-flowName">
    <td><CopyableCode code="flowName" /></td>
    <td><code>string</code></td>
    <td>The name for the flow that is to be onboarded.</td>
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
        { label: 'list_by_connection', value: 'list_by_connection' }
    ]}
>
<TabItem value="get">

Gets flow resource.

```sql
SELECT
identity,
location,
plan,
properties,
tags
FROM azure.data_transfer.flows
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND connectionName = '{{ connectionName }}' -- required
AND flowName = '{{ flowName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_connection">

Gets flows in a connection.

```sql
SELECT
identity,
location,
plan,
properties,
tags
FROM azure.data_transfer.flows
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND connectionName = '{{ connectionName }}' -- required
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

Creates or updates the flow resource.

```sql
INSERT INTO azure.data_transfer.flows (
data__properties,
data__plan,
data__identity,
data__tags,
data__location,
subscriptionId,
resourceGroupName,
connectionName,
flowName
)
SELECT 
'{{ properties }}',
'{{ plan }}',
'{{ identity }}',
'{{ tags }}',
'{{ location }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ connectionName }}',
'{{ flowName }}'
RETURNING
identity,
location,
plan,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: flows
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the flows resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the flows resource.
    - name: connectionName
      value: string
      description: Required parameter for the flows resource.
    - name: flowName
      value: string
      description: Required parameter for the flows resource.
    - name: properties
      value: object
      description: |
        Properties of flow
    - name: plan
      value: object
      description: |
        Plan for the resource.
    - name: identity
      value: object
      description: |
        The managed identity of the flow resource, if configured.
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

Updates the flow resource.

```sql
UPDATE azure.data_transfer.flows
SET 
data__identity = '{{ identity }}',
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND connectionName = '{{ connectionName }}' --required
AND flowName = '{{ flowName }}' --required
RETURNING
identity,
location,
plan,
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

Deletes the flow resource.

```sql
DELETE FROM azure.data_transfer.flows
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND connectionName = '{{ connectionName }}' --required
AND flowName = '{{ flowName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="enable"
    values={[
        { label: 'enable', value: 'enable' },
        { label: 'disable', value: 'disable' },
        { label: 'link', value: 'link' }
    ]}
>
<TabItem value="enable">

Enables the specified flow.

```sql
EXEC azure.data_transfer.flows.enable 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@connectionName='{{ connectionName }}' --required, 
@flowName='{{ flowName }}' --required
;
```
</TabItem>
<TabItem value="disable">

Disables the specified flow

```sql
EXEC azure.data_transfer.flows.disable 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@connectionName='{{ connectionName }}' --required, 
@flowName='{{ flowName }}' --required
;
```
</TabItem>
<TabItem value="link">

Links the specified flow.

```sql
EXEC azure.data_transfer.flows.link 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@connectionName='{{ connectionName }}' --required, 
@flowName='{{ flowName }}' --required 
@@json=
'{
"id": "{{ id }}", 
"statusReason": "{{ statusReason }}"
}'
;
```
</TabItem>
</Tabs>
