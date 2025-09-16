--- 
title: dedicated_cloud_nodes
hide_title: false
hide_table_of_contents: false
keywords:
  - dedicated_cloud_nodes
  - vmware_cloud_simple
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>dedicated_cloud_nodes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>dedicated_cloud_nodes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.vmware_cloud_simple.dedicated_cloud_nodes" /></td></tr>
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

successful operation

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
    <td>/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/dedicatedCloudNodes/&#123;dedicatedCloudNodeName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>&#123;dedicatedCloudNodeName&#125; (pattern: <code>^[a-zA-Z0-9]([-_.a-zA-Z0-9]*[a-zA-Z0-9])?$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Azure region</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Dedicated Cloud Nodes properties</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Dedicated Cloud Nodes SKU</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dedicated Cloud Nodes tags</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

successful operation

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
    <td>/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/dedicatedCloudNodes/&#123;dedicatedCloudNodeName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>&#123;dedicatedCloudNodeName&#125; (pattern: <code>^[a-zA-Z0-9]([-_.a-zA-Z0-9]*[a-zA-Z0-9])?$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Azure region</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Dedicated Cloud Nodes properties</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Dedicated Cloud Nodes SKU</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dedicated Cloud Nodes tags</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

successful operation

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
    <td>/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/dedicatedCloudNodes/&#123;dedicatedCloudNodeName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>&#123;dedicatedCloudNodeName&#125; (pattern: <code>^[a-zA-Z0-9]([-_.a-zA-Z0-9]*[a-zA-Z0-9])?$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Azure region</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Dedicated Cloud Nodes properties</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Dedicated Cloud Nodes SKU</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dedicated Cloud Nodes tags</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dedicatedCloudNodeName"><code>dedicatedCloudNodeName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Returns dedicated cloud node</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$skipToken"><code>$skipToken</code></a></td>
    <td>Returns list of dedicate cloud nodes within resource group</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$skipToken"><code>$skipToken</code></a></td>
    <td>Returns list of dedicate cloud nodes within subscription</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-Referer"><code>Referer</code></a>, <a href="#parameter-dedicatedCloudNodeName"><code>dedicatedCloudNodeName</code></a>, <a href="#parameter-data__location"><code>data__location</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Returns dedicated cloud node by its name</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dedicatedCloudNodeName"><code>dedicatedCloudNodeName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Patches dedicated node properties</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dedicatedCloudNodeName"><code>dedicatedCloudNodeName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Delete dedicated cloud node</td>
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
<tr id="parameter-Referer">
    <td><CopyableCode code="Referer" /></td>
    <td><code>string</code></td>
    <td>referer url</td>
</tr>
<tr id="parameter-dedicatedCloudNodeName">
    <td><CopyableCode code="dedicatedCloudNodeName" /></td>
    <td><code>string</code></td>
    <td>dedicated cloud node name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the list operation</td>
</tr>
<tr id="parameter-$skipToken">
    <td><CopyableCode code="$skipToken" /></td>
    <td><code>string</code></td>
    <td>to be used by nextLink implementation</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of record sets to return</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client API version.</td>
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

Returns dedicated cloud node

```sql
SELECT
id,
name,
location,
properties,
sku,
tags,
type
FROM azure_isv.vmware_cloud_simple.dedicated_cloud_nodes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dedicatedCloudNodeName = '{{ dedicatedCloudNodeName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Returns list of dedicate cloud nodes within resource group

```sql
SELECT
id,
name,
location,
properties,
sku,
tags,
type
FROM azure_isv.vmware_cloud_simple.dedicated_cloud_nodes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND api-version = '{{ api-version }}'
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
AND $skipToken = '{{ $skipToken }}'
;
```
</TabItem>
<TabItem value="list_by_subscription">

Returns list of dedicate cloud nodes within subscription

```sql
SELECT
id,
name,
location,
properties,
sku,
tags,
type
FROM azure_isv.vmware_cloud_simple.dedicated_cloud_nodes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
AND $skipToken = '{{ $skipToken }}'
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

Returns dedicated cloud node by its name

```sql
INSERT INTO azure_isv.vmware_cloud_simple.dedicated_cloud_nodes (
data__location,
data__properties,
data__sku,
data__tags,
subscriptionId,
resourceGroupName,
Referer,
dedicatedCloudNodeName,
api-version
)
SELECT 
'{{ location }}' /* required */,
'{{ properties }}',
'{{ sku }}',
'{{ tags }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ Referer }}',
'{{ dedicatedCloudNodeName }}',
'{{ api-version }}'
RETURNING
id,
name,
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
- name: dedicated_cloud_nodes
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the dedicated_cloud_nodes resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the dedicated_cloud_nodes resource.
    - name: Referer
      value: string
      description: Required parameter for the dedicated_cloud_nodes resource.
    - name: dedicatedCloudNodeName
      value: string
      description: Required parameter for the dedicated_cloud_nodes resource.
    - name: location
      value: string
      description: |
        Azure region
    - name: properties
      value: object
      description: |
        Dedicated Cloud Nodes properties
    - name: sku
      value: object
      description: |
        Dedicated Cloud Nodes SKU
    - name: tags
      value: object
      description: |
        Dedicated Cloud Nodes tags
    - name: api-version
      value: string
      description: Client API version.
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

Patches dedicated node properties

```sql
UPDATE azure_isv.vmware_cloud_simple.dedicated_cloud_nodes
SET 
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dedicatedCloudNodeName = '{{ dedicatedCloudNodeName }}' --required
AND api-version = '{{ api-version}}'
RETURNING
id,
name,
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

Delete dedicated cloud node

```sql
DELETE FROM azure_isv.vmware_cloud_simple.dedicated_cloud_nodes
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dedicatedCloudNodeName = '{{ dedicatedCloudNodeName }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
