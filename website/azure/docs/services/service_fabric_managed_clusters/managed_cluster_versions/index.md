--- 
title: managed_cluster_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - managed_cluster_versions
  - service_fabric_managed_clusters
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

Creates, updates, deletes, gets or lists a <code>managed_cluster_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>managed_cluster_versions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_fabric_managed_clusters.managed_cluster_versions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_environment"
    values={[
        { label: 'get_by_environment', value: 'get_by_environment' },
        { label: 'get', value: 'get' },
        { label: 'list_by_environment', value: 'list_by_environment' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_by_environment">

The operation completed successfully.

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
    <td>The identification of the result</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the result</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The detail of the Service Fabric runtime version result</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The result resource type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get">

The operation completed successfully.

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
    <td>The identification of the result</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the result</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The detail of the Service Fabric runtime version result</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The result resource type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_environment">

The operation completed successfully.

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
    <td>The identification of the result</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the result</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The detail of the Service Fabric runtime version result</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The result resource type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

The operation completed successfully.

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
    <td>The identification of the result</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the result</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The detail of the Service Fabric runtime version result</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The result resource type</td>
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
    <td><a href="#get_by_environment"><CopyableCode code="get_by_environment" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-environment"><code>environment</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-clusterVersion"><code>clusterVersion</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets information about an available Service Fabric cluster code version by environment.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-clusterVersion"><code>clusterVersion</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets information about an available Service Fabric managed cluster code version.</td>
</tr>
<tr>
    <td><a href="#list_by_environment"><CopyableCode code="list_by_environment" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-environment"><code>environment</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets all available code versions for Service Fabric cluster resources by environment.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets all available code versions for Service Fabric cluster resources by location.</td>
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
<tr id="parameter-clusterVersion">
    <td><CopyableCode code="clusterVersion" /></td>
    <td><code>string</code></td>
    <td>The cluster code version.</td>
</tr>
<tr id="parameter-environment">
    <td><CopyableCode code="environment" /></td>
    <td><code>string</code></td>
    <td>The operating system of the cluster. The default means all.</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location for the cluster code versions. This is different from cluster location.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The customer subscription identifier.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The version of the Service Fabric resource provider API. This is a required parameter and it's value must be "2024-06-01-preview" for this specification.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_environment"
    values={[
        { label: 'get_by_environment', value: 'get_by_environment' },
        { label: 'get', value: 'get' },
        { label: 'list_by_environment', value: 'list_by_environment' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_by_environment">

Gets information about an available Service Fabric cluster code version by environment.

```sql
SELECT
id,
name,
properties,
type
FROM azure.service_fabric_managed_clusters.managed_cluster_versions
WHERE location = '{{ location }}' -- required
AND environment = '{{ environment }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND clusterVersion = '{{ clusterVersion }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="get">

Gets information about an available Service Fabric managed cluster code version.

```sql
SELECT
id,
name,
properties,
type
FROM azure.service_fabric_managed_clusters.managed_cluster_versions
WHERE location = '{{ location }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND clusterVersion = '{{ clusterVersion }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list_by_environment">

Gets all available code versions for Service Fabric cluster resources by environment.

```sql
SELECT
id,
name,
properties,
type
FROM azure.service_fabric_managed_clusters.managed_cluster_versions
WHERE location = '{{ location }}' -- required
AND environment = '{{ environment }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Gets all available code versions for Service Fabric cluster resources by location.

```sql
SELECT
id,
name,
properties,
type
FROM azure.service_fabric_managed_clusters.managed_cluster_versions
WHERE location = '{{ location }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
