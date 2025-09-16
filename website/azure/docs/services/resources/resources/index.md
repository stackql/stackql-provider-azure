--- 
title: resources
hide_title: false
hide_table_of_contents: false
keywords:
  - resources
  - resources
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

Creates, updates, deletes, gets or lists a <code>resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>resources</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.resources.resources" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' },
        { label: 'get_by_id', value: 'get_by_id' }
    ]}
>
<TabItem value="get">

OK - Returns information about the resource.

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of the resource. (pattern: <code>^[-\w\._,\(\)]+$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>ID of the resource that manages this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>Plan for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The resource model definition representing SKU</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

OK - Returns an array of resources

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
    <td><CopyableCode code="changedTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The changed time of the resource. This is only present if requested via the $expand query parameter.</td>
</tr>
<tr>
    <td><CopyableCode code="createdTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The created time of the resource. This is only present if requested via the $expand query parameter.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of the resource. (pattern: <code>^[-\w\._,\(\)]+$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>ID of the resource that manages this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>Plan for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="provisioningState" /></td>
    <td><code>string</code></td>
    <td>The provisioning state of the resource. This is only present if requested via the $expand query parameter.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The resource model definition representing SKU</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK - Returns an array of resources.

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
    <td><CopyableCode code="changedTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The changed time of the resource. This is only present if requested via the $expand query parameter.</td>
</tr>
<tr>
    <td><CopyableCode code="createdTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The created time of the resource. This is only present if requested via the $expand query parameter.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of the resource. (pattern: <code>^[-\w\._,\(\)]+$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>ID of the resource that manages this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>Plan for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="provisioningState" /></td>
    <td><code>string</code></td>
    <td>The provisioning state of the resource. This is only present if requested via the $expand query parameter.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The resource model definition representing SKU</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_id">

OK - Returns information about the resource.

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of the resource. (pattern: <code>^[-\w\._,\(\)]+$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>ID of the resource that manages this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>Plan for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The resource model definition representing SKU</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceProviderNamespace"><code>resourceProviderNamespace</code></a>, <a href="#parameter-parentResourcePath"><code>parentResourcePath</code></a>, <a href="#parameter-resourceType"><code>resourceType</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets a resource.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$expand"><code>$expand</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>Get all the resources for a resource group.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$expand"><code>$expand</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>Get all the resources in a subscription.</td>
</tr>
<tr>
    <td><a href="#get_by_id"><CopyableCode code="get_by_id" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceId"><code>resourceId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets a resource by ID.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceProviderNamespace"><code>resourceProviderNamespace</code></a>, <a href="#parameter-parentResourcePath"><code>parentResourcePath</code></a>, <a href="#parameter-resourceType"><code>resourceType</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Creates a resource.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceProviderNamespace"><code>resourceProviderNamespace</code></a>, <a href="#parameter-parentResourcePath"><code>parentResourcePath</code></a>, <a href="#parameter-resourceType"><code>resourceType</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Updates a resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceProviderNamespace"><code>resourceProviderNamespace</code></a>, <a href="#parameter-parentResourcePath"><code>parentResourcePath</code></a>, <a href="#parameter-resourceType"><code>resourceType</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Deletes a resource.</td>
</tr>
<tr>
    <td><a href="#delete_by_id"><CopyableCode code="delete_by_id" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceId"><code>resourceId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Deletes a resource by ID.</td>
</tr>
<tr>
    <td><a href="#move_resources"><CopyableCode code="move_resources" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-sourceResourceGroupName"><code>sourceResourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>The resources to be moved must be in the same source resource group in the source subscription being used. The target resource group may be in a different subscription. When moving resources, both the source group and the target group are locked for the duration of the operation. Write and delete operations are blocked on the groups until the move completes. </td>
</tr>
<tr>
    <td><a href="#validate_move_resources"><CopyableCode code="validate_move_resources" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-sourceResourceGroupName"><code>sourceResourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>This operation checks whether the specified resources can be moved to the target. The resources to be moved must be in the same source resource group in the source subscription being used. The target resource group may be in a different subscription. If validation succeeds, it returns HTTP response code 204 (no content). If validation fails, it returns HTTP response code 409 (Conflict) with an error message. Retrieve the URL in the Location header value to check the result of the long-running operation.</td>
</tr>
<tr>
    <td><a href="#update_by_id"><CopyableCode code="update_by_id" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceId"><code>resourceId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Updates a resource by ID.</td>
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
<tr id="parameter-parentResourcePath">
    <td><CopyableCode code="parentResourcePath" /></td>
    <td><code>string</code></td>
    <td>The parent resource identity.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the resource to delete. The name is case insensitive.</td>
</tr>
<tr id="parameter-resourceId">
    <td><CopyableCode code="resourceId" /></td>
    <td><code>string</code></td>
    <td>The fully qualified ID of the resource, including the resource name and resource type. Use the format, /subscriptions/&#123;guid&#125;/resourceGroups/&#123;resource-group-name&#125;/&#123;resource-provider-namespace&#125;/&#123;resource-type&#125;/&#123;resource-name&#125;</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource to delete.</td>
</tr>
<tr id="parameter-resourceProviderNamespace">
    <td><CopyableCode code="resourceProviderNamespace" /></td>
    <td><code>string</code></td>
    <td>The namespace of the resource provider.</td>
</tr>
<tr id="parameter-resourceType">
    <td><CopyableCode code="resourceType" /></td>
    <td><code>string</code></td>
    <td>The resource type.</td>
</tr>
<tr id="parameter-sourceResourceGroupName">
    <td><CopyableCode code="sourceResourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group from the source subscription containing the resources to be validated for move.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>Comma-separated list of additional properties to be included in the response. Valid values include `createdTime`, `changedTime` and `provisioningState`. For example, `$expand=createdTime,changedTime`.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation.<br /><br />Filter comparison operators include `eq` (equals) and `ne` (not equals) and may be used with the following properties: `location`, `resourceType`, `name`, `resourceGroup`, `identity`, `identity/principalId`, `plan`, `plan/publisher`, `plan/product`, `plan/name`, `plan/version`, and `plan/promotionCode`.<br /><br />For example, to filter by a resource type, use `$filter=resourceType eq 'Microsoft.Network/virtualNetworks'`<br /><br /><br />`substringof(value, property)` can  be used to filter for substrings of the following currently-supported properties: `name` and `resourceGroup`<br /><br />For example, to get all resources with 'demo' anywhere in the resource name, use `$filter=substringof('demo', name)`<br /><br />Multiple substring operations can also be combined using `and`/`or` operators.<br /><br />Note that any truncated number of results queried via `$top` may also not be compatible when using a filter.<br /><br /><br />Resources can be filtered by tag names and values. For example, to filter for a tag name and value, use `$filter=tagName eq 'tag1' and tagValue eq 'Value1'`. Note that when resources are filtered by tag name and value, &lt;b&gt;the original tags for each resource will not be returned in the results.&lt;/b&gt; Any list of additional properties queried via `$expand` may also not be compatible when filtering by tag names/values. <br /><br />For tag names only, resources can be filtered by prefix using the following syntax: `$filter=startswith(tagName, 'depart')`. This query will return all resources with a tag name prefixed by the phrase `depart` (i.e.`department`, `departureDate`, `departureTime`, etc.)<br /><br /><br />Note that some properties can be combined when filtering resources, which include the following: `substringof() and/or resourceType`, `plan and plan/publisher and plan/name`, and `identity and identity/principalId`.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of recommendations per page if a paged version of this API is being used.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The API version to use for the operation.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' },
        { label: 'get_by_id', value: 'get_by_id' }
    ]}
>
<TabItem value="get">

Gets a resource.

```sql
SELECT
id,
name,
identity,
kind,
managedBy,
plan,
properties,
sku,
systemData,
type
FROM azure.resources.resources
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceProviderNamespace = '{{ resourceProviderNamespace }}' -- required
AND parentResourcePath = '{{ parentResourcePath }}' -- required
AND resourceType = '{{ resourceType }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Get all the resources for a resource group.

```sql
SELECT
changedTime,
createdTime,
identity,
kind,
managedBy,
plan,
properties,
provisioningState,
sku
FROM azure.resources.resources
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
AND $expand = '{{ $expand }}'
AND $top = '{{ $top }}'
;
```
</TabItem>
<TabItem value="list">

Get all the resources in a subscription.

```sql
SELECT
changedTime,
createdTime,
identity,
kind,
managedBy,
plan,
properties,
provisioningState,
sku
FROM azure.resources.resources
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
AND $expand = '{{ $expand }}'
AND $top = '{{ $top }}'
;
```
</TabItem>
<TabItem value="get_by_id">

Gets a resource by ID.

```sql
SELECT
id,
name,
identity,
kind,
managedBy,
plan,
properties,
sku,
systemData,
type
FROM azure.resources.resources
WHERE resourceId = '{{ resourceId }}' -- required
AND api-version = '{{ api-version }}'
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

Creates a resource.

```sql
INSERT INTO azure.resources.resources (
data__plan,
data__properties,
data__kind,
data__managedBy,
data__sku,
data__identity,
resourceGroupName,
resourceProviderNamespace,
parentResourcePath,
resourceType,
resourceName,
subscriptionId,
api-version
)
SELECT 
'{{ plan }}',
'{{ properties }}',
'{{ kind }}',
'{{ managedBy }}',
'{{ sku }}',
'{{ identity }}',
'{{ resourceGroupName }}',
'{{ resourceProviderNamespace }}',
'{{ parentResourcePath }}',
'{{ resourceType }}',
'{{ resourceName }}',
'{{ subscriptionId }}',
'{{ api-version }}'
RETURNING
id,
name,
identity,
kind,
managedBy,
plan,
properties,
sku,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: resources
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the resources resource.
    - name: resourceProviderNamespace
      value: string
      description: Required parameter for the resources resource.
    - name: parentResourcePath
      value: string
      description: Required parameter for the resources resource.
    - name: resourceType
      value: string
      description: Required parameter for the resources resource.
    - name: resourceName
      value: string
      description: Required parameter for the resources resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the resources resource.
    - name: plan
      value: object
      description: |
        Plan for the resource.
    - name: properties
      value: object
      description: |
        The resource properties.
    - name: kind
      value: string
      description: |
        The kind of the resource.
    - name: managedBy
      value: string
      description: |
        ID of the resource that manages this resource.
    - name: sku
      value: object
      description: |
        The resource model definition representing SKU
    - name: identity
      value: object
      description: |
        The identity of the resource.
    - name: api-version
      value: string
      description: The API version to use for the operation.
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

Updates a resource.

```sql
UPDATE azure.resources.resources
SET 
data__plan = '{{ plan }}',
data__properties = '{{ properties }}',
data__kind = '{{ kind }}',
data__managedBy = '{{ managedBy }}',
data__sku = '{{ sku }}',
data__identity = '{{ identity }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND resourceProviderNamespace = '{{ resourceProviderNamespace }}' --required
AND parentResourcePath = '{{ parentResourcePath }}' --required
AND resourceType = '{{ resourceType }}' --required
AND resourceName = '{{ resourceName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND api-version = '{{ api-version}}'
RETURNING
id,
name,
identity,
kind,
managedBy,
plan,
properties,
sku,
systemData,
type;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' },
        { label: 'delete_by_id', value: 'delete_by_id' }
    ]}
>
<TabItem value="delete">

Deletes a resource.

```sql
DELETE FROM azure.resources.resources
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND resourceProviderNamespace = '{{ resourceProviderNamespace }}' --required
AND parentResourcePath = '{{ parentResourcePath }}' --required
AND resourceType = '{{ resourceType }}' --required
AND resourceName = '{{ resourceName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="delete_by_id">

Deletes a resource by ID.

```sql
DELETE FROM azure.resources.resources
WHERE resourceId = '{{ resourceId }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="move_resources"
    values={[
        { label: 'move_resources', value: 'move_resources' },
        { label: 'validate_move_resources', value: 'validate_move_resources' },
        { label: 'update_by_id', value: 'update_by_id' }
    ]}
>
<TabItem value="move_resources">

The resources to be moved must be in the same source resource group in the source subscription being used. The target resource group may be in a different subscription. When moving resources, both the source group and the target group are locked for the duration of the operation. Write and delete operations are blocked on the groups until the move completes. 

```sql
EXEC azure.resources.resources.move_resources 
@sourceResourceGroupName='{{ sourceResourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"resources": "{{ resources }}", 
"targetResourceGroup": "{{ targetResourceGroup }}"
}'
;
```
</TabItem>
<TabItem value="validate_move_resources">

This operation checks whether the specified resources can be moved to the target. The resources to be moved must be in the same source resource group in the source subscription being used. The target resource group may be in a different subscription. If validation succeeds, it returns HTTP response code 204 (no content). If validation fails, it returns HTTP response code 409 (Conflict) with an error message. Retrieve the URL in the Location header value to check the result of the long-running operation.

```sql
EXEC azure.resources.resources.validate_move_resources 
@sourceResourceGroupName='{{ sourceResourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"resources": "{{ resources }}", 
"targetResourceGroup": "{{ targetResourceGroup }}"
}'
;
```
</TabItem>
<TabItem value="update_by_id">

Updates a resource by ID.

```sql
EXEC azure.resources.resources.update_by_id 
@resourceId='{{ resourceId }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"plan": "{{ plan }}", 
"properties": "{{ properties }}", 
"kind": "{{ kind }}", 
"managedBy": "{{ managedBy }}", 
"sku": "{{ sku }}", 
"identity": "{{ identity }}"
}'
;
```
</TabItem>
</Tabs>
