--- 
title: integration_service_environments
hide_title: false
hide_table_of_contents: false
keywords:
  - integration_service_environments
  - logic_apps
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

Creates, updates, deletes, gets or lists an <code>integration_service_environments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>integration_service_environments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.logic_apps.integration_service_environments" /></td></tr>
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The resource id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets the resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity properties.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The integration service environment properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The sku.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Gets the resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The resource id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets the resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity properties.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The integration service environment properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The sku.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Gets the resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The resource id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets the resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity properties.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The integration service environment properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The sku.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Gets the resource type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-integrationServiceEnvironmentName"><code>integrationServiceEnvironmentName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets an integration service environment.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>Gets a list of integration service environments by resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>Gets a list of integration service environments by subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-integrationServiceEnvironmentName"><code>integrationServiceEnvironmentName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Creates or updates an integration service environment.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-integrationServiceEnvironmentName"><code>integrationServiceEnvironmentName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Updates an integration service environment.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-integrationServiceEnvironmentName"><code>integrationServiceEnvironmentName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Deletes an integration service environment.</td>
</tr>
<tr>
    <td><a href="#restart"><CopyableCode code="restart" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-integrationServiceEnvironmentName"><code>integrationServiceEnvironmentName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Restarts an integration service environment.</td>
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
<tr id="parameter-integrationServiceEnvironmentName">
    <td><CopyableCode code="integrationServiceEnvironmentName" /></td>
    <td><code>string</code></td>
    <td>The integration service environment name.</td>
</tr>
<tr id="parameter-resourceGroup">
    <td><CopyableCode code="resourceGroup" /></td>
    <td><code>string</code></td>
    <td>The resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription id.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of items to be included in the result.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The API version.</td>
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

Gets an integration service environment.

```sql
SELECT
id,
name,
identity,
location,
properties,
sku,
tags,
type
FROM azure.logic_apps.integration_service_environments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroup = '{{ resourceGroup }}' -- required
AND integrationServiceEnvironmentName = '{{ integrationServiceEnvironmentName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Gets a list of integration service environments by resource group.

```sql
SELECT
id,
name,
identity,
location,
properties,
sku,
tags,
type
FROM azure.logic_apps.integration_service_environments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroup = '{{ resourceGroup }}' -- required
AND api-version = '{{ api-version }}'
AND $top = '{{ $top }}'
;
```
</TabItem>
<TabItem value="list_by_subscription">

Gets a list of integration service environments by subscription.

```sql
SELECT
id,
name,
identity,
location,
properties,
sku,
tags,
type
FROM azure.logic_apps.integration_service_environments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
AND $top = '{{ $top }}'
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

Creates or updates an integration service environment.

```sql
INSERT INTO azure.logic_apps.integration_service_environments (
data__properties,
data__sku,
data__identity,
data__location,
data__tags,
subscriptionId,
resourceGroup,
integrationServiceEnvironmentName,
api-version
)
SELECT 
'{{ properties }}',
'{{ sku }}',
'{{ identity }}',
'{{ location }}',
'{{ tags }}',
'{{ subscriptionId }}',
'{{ resourceGroup }}',
'{{ integrationServiceEnvironmentName }}',
'{{ api-version }}'
RETURNING
id,
name,
identity,
location,
properties,
sku,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: integration_service_environments
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the integration_service_environments resource.
    - name: resourceGroup
      value: string
      description: Required parameter for the integration_service_environments resource.
    - name: integrationServiceEnvironmentName
      value: string
      description: Required parameter for the integration_service_environments resource.
    - name: properties
      value: object
      description: |
        The integration service environment properties.
    - name: sku
      value: object
      description: |
        The sku.
    - name: identity
      value: object
      description: |
        Managed service identity properties.
    - name: location
      value: string
      description: |
        The resource location.
    - name: tags
      value: object
      description: |
        The resource tags.
    - name: api-version
      value: string
      description: The API version.
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

Updates an integration service environment.

```sql
UPDATE azure.logic_apps.integration_service_environments
SET 
data__properties = '{{ properties }}',
data__sku = '{{ sku }}',
data__identity = '{{ identity }}',
data__location = '{{ location }}',
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroup = '{{ resourceGroup }}' --required
AND integrationServiceEnvironmentName = '{{ integrationServiceEnvironmentName }}' --required
AND api-version = '{{ api-version}}'
RETURNING
id,
name,
identity,
location,
properties,
sku,
tags,
type;
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

Deletes an integration service environment.

```sql
DELETE FROM azure.logic_apps.integration_service_environments
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroup = '{{ resourceGroup }}' --required
AND integrationServiceEnvironmentName = '{{ integrationServiceEnvironmentName }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="restart"
    values={[
        { label: 'restart', value: 'restart' }
    ]}
>
<TabItem value="restart">

Restarts an integration service environment.

```sql
EXEC azure.logic_apps.integration_service_environments.restart 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroup='{{ resourceGroup }}' --required, 
@integrationServiceEnvironmentName='{{ integrationServiceEnvironmentName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
</Tabs>
