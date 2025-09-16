--- 
title: bot_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - bot_connections
  - bot_service
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

Creates, updates, deletes, gets or lists a <code>bot_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>bot_connections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.bot_service.bot_connections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_with_secrets"
    values={[
        { label: 'list_with_secrets', value: 'list_with_secrets' },
        { label: 'get', value: 'get' },
        { label: 'list_by_bot_service', value: 'list_by_bot_service' }
    ]}
>
<TabItem value="list_with_secrets">

The resource provider should return 200 (OK) to indicate that the operation completed successfully. 

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
    <td>Specifies the resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Specifies the name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Entity Tag.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Required. Gets or sets the Kind of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Specifies the location of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The set of properties specific to bot channel resource</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The SKU of the cognitive services account.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Contains resource tags defined as key/value pairs.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Specifies the type of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>Entity zones</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get">

The resource provider should return 200 (OK) to indicate that the operation completed successfully. 

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
    <td>Specifies the resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Specifies the name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Entity Tag.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Required. Gets or sets the Kind of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Specifies the location of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The set of properties specific to bot channel resource</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The SKU of the cognitive services account.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Contains resource tags defined as key/value pairs.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Specifies the type of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>Entity zones</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_bot_service">

The resource provider should return 200 (OK) to indicate that the operation completed successfully. For other errors (e.g. internal errors) use the appropriate HTTP error code.<br />The nextLink field is expected to point to the URL the client should use to fetch the next page (per server side paging). This matches the OData guidelines for paged responses here. If a resource provider does not support paging, it should return the same body (JSON object with “value” property) but omit nextLink entirely (or set to null, *not* empty string) for future compatibility.<br />The nextLink should be implemented using following query parameters:<br />· skipToken: opaque token that allows the resource provider to skip resources already enumerated. This value is defined and returned by the RP after first request via nextLink.<br />· top: the optional client query parameter which defines the maximum number of records to be returned by the server.<br />Implementation details:<br />· NextLink may include all the query parameters (specifically OData $filter) used by the client in the first query. <br />· Server may return less records than requested with nextLink. Returning zero records with NextLink is an acceptable response. <br />Clients must fetch records until the nextLink is not returned back / null. Clients should never rely on number of returned records to determinate if pagination is completed.

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
    <td>Specifies the resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Specifies the name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Entity Tag.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Required. Gets or sets the Kind of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Specifies the location of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The set of properties specific to bot channel resource</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The SKU of the cognitive services account.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Contains resource tags defined as key/value pairs.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Specifies the type of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>Entity zones</td>
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
    <td><a href="#list_with_secrets"><CopyableCode code="list_with_secrets" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get a Connection Setting registration for a Bot Service</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get a Connection Setting registration for a Bot Service</td>
</tr>
<tr>
    <td><a href="#list_by_bot_service"><CopyableCode code="list_by_bot_service" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns all the Connection Settings registered to a particular BotService resource</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Register a new Auth Connection for a Bot Service</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates a Connection Setting registration for a Bot Service</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes a Connection Setting registration for a Bot Service</td>
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
    <td>The name of the Bot Service Connection Setting resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the Bot resource group in the user subscription.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Bot resource.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure Subscription ID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_with_secrets"
    values={[
        { label: 'list_with_secrets', value: 'list_with_secrets' },
        { label: 'get', value: 'get' },
        { label: 'list_by_bot_service', value: 'list_by_bot_service' }
    ]}
>
<TabItem value="list_with_secrets">

Get a Connection Setting registration for a Bot Service

```sql
SELECT
id,
name,
etag,
kind,
location,
properties,
sku,
tags,
type,
zones
FROM azure.bot_service.bot_connections
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND connectionName = '{{ connectionName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get">

Get a Connection Setting registration for a Bot Service

```sql
SELECT
id,
name,
etag,
kind,
location,
properties,
sku,
tags,
type,
zones
FROM azure.bot_service.bot_connections
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND connectionName = '{{ connectionName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_bot_service">

Returns all the Connection Settings registered to a particular BotService resource

```sql
SELECT
id,
name,
etag,
kind,
location,
properties,
sku,
tags,
type,
zones
FROM azure.bot_service.bot_connections
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Register a new Auth Connection for a Bot Service

```sql
INSERT INTO azure.bot_service.bot_connections (
data__location,
data__tags,
data__sku,
data__kind,
data__etag,
data__properties,
resourceGroupName,
resourceName,
connectionName,
subscriptionId
)
SELECT 
'{{ location }}',
'{{ tags }}',
'{{ sku }}',
'{{ kind }}',
'{{ etag }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ resourceName }}',
'{{ connectionName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
etag,
kind,
location,
properties,
sku,
tags,
type,
zones
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: bot_connections
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the bot_connections resource.
    - name: resourceName
      value: string
      description: Required parameter for the bot_connections resource.
    - name: connectionName
      value: string
      description: Required parameter for the bot_connections resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the bot_connections resource.
    - name: location
      value: string
      description: |
        Specifies the location of the resource.
    - name: tags
      value: object
      description: |
        Contains resource tags defined as key/value pairs.
    - name: sku
      value: object
      description: |
        The SKU of the cognitive services account.
    - name: kind
      value: string
      description: |
        Required. Gets or sets the Kind of the resource.
      valid_values: ['sdk', 'designer', 'bot', 'function', 'azurebot']
    - name: etag
      value: string
      description: |
        Entity Tag.
    - name: properties
      value: object
      description: |
        The set of properties specific to bot channel resource
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

Updates a Connection Setting registration for a Bot Service

```sql
UPDATE azure.bot_service.bot_connections
SET 
data__location = '{{ location }}',
data__tags = '{{ tags }}',
data__sku = '{{ sku }}',
data__kind = '{{ kind }}',
data__etag = '{{ etag }}',
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND resourceName = '{{ resourceName }}' --required
AND connectionName = '{{ connectionName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
id,
name,
etag,
kind,
location,
properties,
sku,
tags,
type,
zones;
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

Deletes a Connection Setting registration for a Bot Service

```sql
DELETE FROM azure.bot_service.bot_connections
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND resourceName = '{{ resourceName }}' --required
AND connectionName = '{{ connectionName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
