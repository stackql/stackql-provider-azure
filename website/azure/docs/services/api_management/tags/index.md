--- 
title: tags
hide_title: false
hide_table_of_contents: false
keywords:
  - tags
  - api_management
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

Creates, updates, deletes, gets or lists a <code>tags</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>tags</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.tags" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_operation"
    values={[
        { label: 'get_by_operation', value: 'get_by_operation' },
        { label: 'list_by_operation', value: 'list_by_operation' },
        { label: 'get_by_api', value: 'get_by_api' },
        { label: 'get_by_product', value: 'get_by_product' },
        { label: 'get', value: 'get' },
        { label: 'list_by_api', value: 'list_by_api' },
        { label: 'list_by_product', value: 'list_by_product' },
        { label: 'list_by_service', value: 'list_by_service' }
    ]}
>
<TabItem value="get_by_operation">

Gets the details of the tag specified by its identifier.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Tag entity contract properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_operation">

The operation returns a collection of tags associated with the Operation entity.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Tag entity contract properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_api">

Gets the details of the tag specified by its identifier.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Tag entity contract properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_product">

Gets the details of the tag specified by its identifier.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Tag entity contract properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get">

The response body contains the specified Tag entity.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Tag entity contract properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_api">

The operation returns a collection of tags associated with the Api entity.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Tag entity contract properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_product">

The operation returns a collection of tags associated with the Product entity.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Tag entity contract properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_service">

Lists a collection of Tag entities.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Tag entity contract properties.</td>
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
    <td><a href="#get_by_operation"><CopyableCode code="get_by_operation" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-apiId"><code>apiId</code></a>, <a href="#parameter-operationId"><code>operationId</code></a>, <a href="#parameter-tagId"><code>tagId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get tag associated with the Operation.</td>
</tr>
<tr>
    <td><a href="#list_by_operation"><CopyableCode code="list_by_operation" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-apiId"><code>apiId</code></a>, <a href="#parameter-operationId"><code>operationId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$skip"><code>$skip</code></a></td>
    <td>Lists all Tags associated with the Operation.</td>
</tr>
<tr>
    <td><a href="#get_by_api"><CopyableCode code="get_by_api" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-apiId"><code>apiId</code></a>, <a href="#parameter-tagId"><code>tagId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get tag associated with the API.</td>
</tr>
<tr>
    <td><a href="#get_by_product"><CopyableCode code="get_by_product" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-productId"><code>productId</code></a>, <a href="#parameter-tagId"><code>tagId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get tag associated with the Product.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-tagId"><code>tagId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the details of the tag specified by its identifier.</td>
</tr>
<tr>
    <td><a href="#list_by_api"><CopyableCode code="list_by_api" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-apiId"><code>apiId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$skip"><code>$skip</code></a></td>
    <td>Lists all Tags associated with the API.</td>
</tr>
<tr>
    <td><a href="#list_by_product"><CopyableCode code="list_by_product" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-productId"><code>productId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$skip"><code>$skip</code></a></td>
    <td>Lists all Tags associated with the Product.</td>
</tr>
<tr>
    <td><a href="#list_by_service"><CopyableCode code="list_by_service" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$skip"><code>$skip</code></a>, <a href="#parameter-scope"><code>scope</code></a></td>
    <td>Lists a collection of tags defined within a service instance.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-tagId"><code>tagId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Creates a tag.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-tagId"><code>tagId</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates the details of the tag specified by its identifier.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-tagId"><code>tagId</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes specific tag of the API Management service instance.</td>
</tr>
<tr>
    <td><a href="#assign_to_operation"><CopyableCode code="assign_to_operation" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-apiId"><code>apiId</code></a>, <a href="#parameter-operationId"><code>operationId</code></a>, <a href="#parameter-tagId"><code>tagId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Assign tag to the Operation.</td>
</tr>
<tr>
    <td><a href="#detach_from_operation"><CopyableCode code="detach_from_operation" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-apiId"><code>apiId</code></a>, <a href="#parameter-operationId"><code>operationId</code></a>, <a href="#parameter-tagId"><code>tagId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Detach the tag from the Operation.</td>
</tr>
<tr>
    <td><a href="#assign_to_api"><CopyableCode code="assign_to_api" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-apiId"><code>apiId</code></a>, <a href="#parameter-tagId"><code>tagId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Assign tag to the Api.</td>
</tr>
<tr>
    <td><a href="#detach_from_api"><CopyableCode code="detach_from_api" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-apiId"><code>apiId</code></a>, <a href="#parameter-tagId"><code>tagId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Detach the tag from the Api.</td>
</tr>
<tr>
    <td><a href="#assign_to_product"><CopyableCode code="assign_to_product" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-productId"><code>productId</code></a>, <a href="#parameter-tagId"><code>tagId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Assign tag to the Product.</td>
</tr>
<tr>
    <td><a href="#detach_from_product"><CopyableCode code="detach_from_product" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-productId"><code>productId</code></a>, <a href="#parameter-tagId"><code>tagId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Detach the tag from the Product.</td>
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
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update.</td>
</tr>
<tr id="parameter-apiId">
    <td><CopyableCode code="apiId" /></td>
    <td><code>string</code></td>
    <td>API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.</td>
</tr>
<tr id="parameter-operationId">
    <td><CopyableCode code="operationId" /></td>
    <td><code>string</code></td>
    <td>The ID of an ongoing async operation.</td>
</tr>
<tr id="parameter-productId">
    <td><CopyableCode code="productId" /></td>
    <td><code>string</code></td>
    <td>Product identifier. Must be unique in the current API Management service instance.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the API Management service.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-tagId">
    <td><CopyableCode code="tagId" /></td>
    <td><code>string</code></td>
    <td>Tag identifier. Must be unique in the current API Management service instance.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>|     Field     |     Usage     |     Supported operators     |     Supported functions     |&lt;/br&gt;|-------------|-------------|-------------|-------------|&lt;/br&gt;| name | filter | ge, le, eq, ne, gt, lt | substringof, contains, startswith, endswith |&lt;/br&gt;| displayName | filter | ge, le, eq, ne, gt, lt | substringof, contains, startswith, endswith |&lt;/br&gt;</td>
</tr>
<tr id="parameter-$skip">
    <td><CopyableCode code="$skip" /></td>
    <td><code>integer (int32)</code></td>
    <td>Number of records to skip.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>Number of records to return.</td>
</tr>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the Entity. Not required when creating an entity, but required when updating an entity.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>Scope like 'apis', 'products' or 'apis/&#123;apiId&#125;</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_operation"
    values={[
        { label: 'get_by_operation', value: 'get_by_operation' },
        { label: 'list_by_operation', value: 'list_by_operation' },
        { label: 'get_by_api', value: 'get_by_api' },
        { label: 'get_by_product', value: 'get_by_product' },
        { label: 'get', value: 'get' },
        { label: 'list_by_api', value: 'list_by_api' },
        { label: 'list_by_product', value: 'list_by_product' },
        { label: 'list_by_service', value: 'list_by_service' }
    ]}
>
<TabItem value="get_by_operation">

Get tag associated with the Operation.

```sql
SELECT
properties
FROM azure.api_management.tags
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND apiId = '{{ apiId }}' -- required
AND operationId = '{{ operationId }}' -- required
AND tagId = '{{ tagId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_operation">

Lists all Tags associated with the Operation.

```sql
SELECT
properties
FROM azure.api_management.tags
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND apiId = '{{ apiId }}' -- required
AND operationId = '{{ operationId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
AND $skip = '{{ $skip }}'
;
```
</TabItem>
<TabItem value="get_by_api">

Get tag associated with the API.

```sql
SELECT
properties
FROM azure.api_management.tags
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND apiId = '{{ apiId }}' -- required
AND tagId = '{{ tagId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get_by_product">

Get tag associated with the Product.

```sql
SELECT
properties
FROM azure.api_management.tags
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND productId = '{{ productId }}' -- required
AND tagId = '{{ tagId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get">

Gets the details of the tag specified by its identifier.

```sql
SELECT
properties
FROM azure.api_management.tags
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND tagId = '{{ tagId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_api">

Lists all Tags associated with the API.

```sql
SELECT
properties
FROM azure.api_management.tags
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND apiId = '{{ apiId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
AND $skip = '{{ $skip }}'
;
```
</TabItem>
<TabItem value="list_by_product">

Lists all Tags associated with the Product.

```sql
SELECT
properties
FROM azure.api_management.tags
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND productId = '{{ productId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
AND $skip = '{{ $skip }}'
;
```
</TabItem>
<TabItem value="list_by_service">

Lists a collection of tags defined within a service instance.

```sql
SELECT
properties
FROM azure.api_management.tags
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
AND $skip = '{{ $skip }}'
AND scope = '{{ scope }}'
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

Creates a tag.

```sql
INSERT INTO azure.api_management.tags (
data__properties,
resourceGroupName,
serviceName,
tagId,
subscriptionId,
If-Match
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ serviceName }}',
'{{ tagId }}',
'{{ subscriptionId }}',
'{{ If-Match }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: tags
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the tags resource.
    - name: serviceName
      value: string
      description: Required parameter for the tags resource.
    - name: tagId
      value: string
      description: Required parameter for the tags resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the tags resource.
    - name: properties
      value: object
      description: |
        Properties supplied to Create Tag operation.
    - name: If-Match
      value: string
      description: ETag of the Entity. Not required when creating an entity, but required when updating an entity.
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

Updates the details of the tag specified by its identifier.

```sql
UPDATE azure.api_management.tags
SET 
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND serviceName = '{{ serviceName }}' --required
AND tagId = '{{ tagId }}' --required
AND If-Match = '{{ If-Match }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
properties;
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

Deletes specific tag of the API Management service instance.

```sql
DELETE FROM azure.api_management.tags
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND serviceName = '{{ serviceName }}' --required
AND tagId = '{{ tagId }}' --required
AND If-Match = '{{ If-Match }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="assign_to_operation"
    values={[
        { label: 'assign_to_operation', value: 'assign_to_operation' },
        { label: 'detach_from_operation', value: 'detach_from_operation' },
        { label: 'assign_to_api', value: 'assign_to_api' },
        { label: 'detach_from_api', value: 'detach_from_api' },
        { label: 'assign_to_product', value: 'assign_to_product' },
        { label: 'detach_from_product', value: 'detach_from_product' }
    ]}
>
<TabItem value="assign_to_operation">

Assign tag to the Operation.

```sql
EXEC azure.api_management.tags.assign_to_operation 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@apiId='{{ apiId }}' --required, 
@operationId='{{ operationId }}' --required, 
@tagId='{{ tagId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="detach_from_operation">

Detach the tag from the Operation.

```sql
EXEC azure.api_management.tags.detach_from_operation 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@apiId='{{ apiId }}' --required, 
@operationId='{{ operationId }}' --required, 
@tagId='{{ tagId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="assign_to_api">

Assign tag to the Api.

```sql
EXEC azure.api_management.tags.assign_to_api 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@apiId='{{ apiId }}' --required, 
@tagId='{{ tagId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="detach_from_api">

Detach the tag from the Api.

```sql
EXEC azure.api_management.tags.detach_from_api 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@apiId='{{ apiId }}' --required, 
@tagId='{{ tagId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="assign_to_product">

Assign tag to the Product.

```sql
EXEC azure.api_management.tags.assign_to_product 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@productId='{{ productId }}' --required, 
@tagId='{{ tagId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="detach_from_product">

Detach the tag from the Product.

```sql
EXEC azure.api_management.tags.detach_from_product 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@productId='{{ productId }}' --required, 
@tagId='{{ tagId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
