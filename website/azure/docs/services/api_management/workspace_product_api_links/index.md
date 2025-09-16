--- 
title: workspace_product_api_links
hide_title: false
hide_table_of_contents: false
keywords:
  - workspace_product_api_links
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

Creates, updates, deletes, gets or lists a <code>workspace_product_api_links</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>workspace_product_api_links</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.workspace_product_api_links" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_product', value: 'list_by_product' }
    ]}
>
<TabItem value="get">

The response body contains the specified API link entity.

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
    <td>Product-API link entity contract properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_product">

The response body contains a collection of API link entities in the product.

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
    <td>Product-API link entity contract properties.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-workspaceId"><code>workspaceId</code></a>, <a href="#parameter-productId"><code>productId</code></a>, <a href="#parameter-apiLinkId"><code>apiLinkId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the API link for the product.</td>
</tr>
<tr>
    <td><a href="#list_by_product"><CopyableCode code="list_by_product" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-workspaceId"><code>workspaceId</code></a>, <a href="#parameter-productId"><code>productId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$skip"><code>$skip</code></a></td>
    <td>Lists a collection of the API links associated with a product.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-workspaceId"><code>workspaceId</code></a>, <a href="#parameter-productId"><code>productId</code></a>, <a href="#parameter-apiLinkId"><code>apiLinkId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Adds an API to the specified product via link.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-workspaceId"><code>workspaceId</code></a>, <a href="#parameter-productId"><code>productId</code></a>, <a href="#parameter-apiLinkId"><code>apiLinkId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified API from the specified product.</td>
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
<tr id="parameter-apiLinkId">
    <td><CopyableCode code="apiLinkId" /></td>
    <td><code>string</code></td>
    <td>Product-API link identifier. Must be unique in the current API Management service instance.</td>
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
<tr id="parameter-workspaceId">
    <td><CopyableCode code="workspaceId" /></td>
    <td><code>string</code></td>
    <td>Workspace identifier. Must be unique in the current API Management service instance.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>|     Field     |     Usage     |     Supported operators     |     Supported functions     |&lt;/br&gt;|-------------|-------------|-------------|-------------|&lt;/br&gt;| apiId | filter | ge, le, eq, ne, gt, lt | substringof, contains, startswith, endswith |&lt;/br&gt;</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_product', value: 'list_by_product' }
    ]}
>
<TabItem value="get">

Gets the API link for the product.

```sql
SELECT
properties
FROM azure.api_management.workspace_product_api_links
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND workspaceId = '{{ workspaceId }}' -- required
AND productId = '{{ productId }}' -- required
AND apiLinkId = '{{ apiLinkId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_product">

Lists a collection of the API links associated with a product.

```sql
SELECT
properties
FROM azure.api_management.workspace_product_api_links
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND workspaceId = '{{ workspaceId }}' -- required
AND productId = '{{ productId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
AND $skip = '{{ $skip }}'
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

Adds an API to the specified product via link.

```sql
INSERT INTO azure.api_management.workspace_product_api_links (
data__properties,
resourceGroupName,
serviceName,
workspaceId,
productId,
apiLinkId,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ serviceName }}',
'{{ workspaceId }}',
'{{ productId }}',
'{{ apiLinkId }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: workspace_product_api_links
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the workspace_product_api_links resource.
    - name: serviceName
      value: string
      description: Required parameter for the workspace_product_api_links resource.
    - name: workspaceId
      value: string
      description: Required parameter for the workspace_product_api_links resource.
    - name: productId
      value: string
      description: Required parameter for the workspace_product_api_links resource.
    - name: apiLinkId
      value: string
      description: Required parameter for the workspace_product_api_links resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the workspace_product_api_links resource.
    - name: properties
      value: object
      description: |
        Product-API link entity contract properties.
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

Deletes the specified API from the specified product.

```sql
DELETE FROM azure.api_management.workspace_product_api_links
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND serviceName = '{{ serviceName }}' --required
AND workspaceId = '{{ workspaceId }}' --required
AND productId = '{{ productId }}' --required
AND apiLinkId = '{{ apiLinkId }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
