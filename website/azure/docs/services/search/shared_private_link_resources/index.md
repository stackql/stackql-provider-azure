--- 
title: shared_private_link_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - shared_private_link_resources
  - search
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

Creates, updates, deletes, gets or lists a <code>shared_private_link_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>shared_private_link_resources</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.search.shared_private_link_resources" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_service', value: 'list_by_service' }
    ]}
>
<TabItem value="get">

The definition of the shared private link resource was successfully retrieved and is in the response.

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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Describes the properties of a shared private link resource managed by the Azure AI Search service.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_service">

The operation succeeded. The response contains the list of all shared private link resources managed by the given service.

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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Describes the properties of a shared private link resource managed by the Azure AI Search service.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-searchServiceName"><code>searchServiceName</code></a>, <a href="#parameter-sharedPrivateLinkResourceName"><code>sharedPrivateLinkResourceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-x-ms-client-request-id"><code>x-ms-client-request-id</code></a></td>
    <td>Gets the details of the shared private link resource managed by the search service in the given resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_service"><CopyableCode code="list_by_service" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-searchServiceName"><code>searchServiceName</code></a></td>
    <td><a href="#parameter-x-ms-client-request-id"><code>x-ms-client-request-id</code></a></td>
    <td>Gets a list of all shared private link resources managed by the given service.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-searchServiceName"><code>searchServiceName</code></a>, <a href="#parameter-sharedPrivateLinkResourceName"><code>sharedPrivateLinkResourceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-x-ms-client-request-id"><code>x-ms-client-request-id</code></a></td>
    <td>Initiates the creation or update of a shared private link resource managed by the search service in the given resource group.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-searchServiceName"><code>searchServiceName</code></a>, <a href="#parameter-sharedPrivateLinkResourceName"><code>sharedPrivateLinkResourceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-x-ms-client-request-id"><code>x-ms-client-request-id</code></a></td>
    <td>Initiates the deletion of the shared private link resource from the search service.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-searchServiceName">
    <td><CopyableCode code="searchServiceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Azure AI Search service associated with the specified resource group.</td>
</tr>
<tr id="parameter-sharedPrivateLinkResourceName">
    <td><CopyableCode code="sharedPrivateLinkResourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the shared private link resource managed by the Azure AI Search service within the specified resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The unique identifier for a Microsoft Azure subscription. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-x-ms-client-request-id">
    <td><CopyableCode code="x-ms-client-request-id" /></td>
    <td><code>string (uuid)</code></td>
    <td>A client-generated GUID value that identifies this request. If specified, this will be included in response information as a way to track the request.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_service', value: 'list_by_service' }
    ]}
>
<TabItem value="get">

Gets the details of the shared private link resource managed by the search service in the given resource group.

```sql
SELECT
id,
name,
properties,
type
FROM azure.search.shared_private_link_resources
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND searchServiceName = '{{ searchServiceName }}' -- required
AND sharedPrivateLinkResourceName = '{{ sharedPrivateLinkResourceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND x-ms-client-request-id = '{{ x-ms-client-request-id }}'
;
```
</TabItem>
<TabItem value="list_by_service">

Gets a list of all shared private link resources managed by the given service.

```sql
SELECT
id,
name,
properties,
type
FROM azure.search.shared_private_link_resources
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND searchServiceName = '{{ searchServiceName }}' -- required
AND x-ms-client-request-id = '{{ x-ms-client-request-id }}'
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

Initiates the creation or update of a shared private link resource managed by the search service in the given resource group.

```sql
INSERT INTO azure.search.shared_private_link_resources (
data__properties,
resourceGroupName,
searchServiceName,
sharedPrivateLinkResourceName,
subscriptionId,
x-ms-client-request-id
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ searchServiceName }}',
'{{ sharedPrivateLinkResourceName }}',
'{{ subscriptionId }}',
'{{ x-ms-client-request-id }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: shared_private_link_resources
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the shared_private_link_resources resource.
    - name: searchServiceName
      value: string
      description: Required parameter for the shared_private_link_resources resource.
    - name: sharedPrivateLinkResourceName
      value: string
      description: Required parameter for the shared_private_link_resources resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the shared_private_link_resources resource.
    - name: properties
      value: object
      description: |
        Describes the properties of a shared private link resource managed by the Azure AI Search service.
    - name: x-ms-client-request-id
      value: string (uuid)
      description: A client-generated GUID value that identifies this request. If specified, this will be included in response information as a way to track the request.
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

Initiates the deletion of the shared private link resource from the search service.

```sql
DELETE FROM azure.search.shared_private_link_resources
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND searchServiceName = '{{ searchServiceName }}' --required
AND sharedPrivateLinkResourceName = '{{ sharedPrivateLinkResourceName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND x-ms-client-request-id = '{{ x-ms-client-request-id }}'
;
```
</TabItem>
</Tabs>
