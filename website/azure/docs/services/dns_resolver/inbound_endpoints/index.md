--- 
title: inbound_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - inbound_endpoints
  - dns_resolver
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

Creates, updates, deletes, gets or lists an <code>inbound_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>inbound_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dns_resolver.inbound_endpoints" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

The inbound endpoint for the DNS resolver was found.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>ETag of the inbound endpoint.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the inbound endpoint.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

List of inbound endpoints for the DNS resolver.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>ETag of the inbound endpoint.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the inbound endpoint.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dnsResolverName"><code>dnsResolverName</code></a>, <a href="#parameter-inboundEndpointName"><code>inboundEndpointName</code></a></td>
    <td></td>
    <td>Gets properties of an inbound endpoint for a DNS resolver.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dnsResolverName"><code>dnsResolverName</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a></td>
    <td>Lists inbound endpoints for a DNS resolver.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dnsResolverName"><code>dnsResolverName</code></a>, <a href="#parameter-inboundEndpointName"><code>inboundEndpointName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-If-None-Match"><code>If-None-Match</code></a></td>
    <td>Creates or updates an inbound endpoint for a DNS resolver.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dnsResolverName"><code>dnsResolverName</code></a>, <a href="#parameter-inboundEndpointName"><code>inboundEndpointName</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Updates an inbound endpoint for a DNS resolver.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dnsResolverName"><code>dnsResolverName</code></a>, <a href="#parameter-inboundEndpointName"><code>inboundEndpointName</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Deletes an inbound endpoint for a DNS resolver. WARNING: This operation cannot be undone.</td>
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
<tr id="parameter-dnsResolverName">
    <td><CopyableCode code="dnsResolverName" /></td>
    <td><code>string</code></td>
    <td>The name of the DNS resolver.</td>
</tr>
<tr id="parameter-inboundEndpointName">
    <td><CopyableCode code="inboundEndpointName" /></td>
    <td><code>string</code></td>
    <td>The name of the inbound endpoint for the DNS resolver.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of results to return. If not specified, returns up to 100 results.</td>
</tr>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the resource. Omit this value to always overwrite the current resource. Specify the last-seen ETag value to prevent accidentally overwriting any concurrent changes.</td>
</tr>
<tr id="parameter-If-None-Match">
    <td><CopyableCode code="If-None-Match" /></td>
    <td><code>string</code></td>
    <td>Set to '*' to allow a new resource to be created, but to prevent updating an existing resource. Other values will be ignored.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets properties of an inbound endpoint for a DNS resolver.

```sql
SELECT
etag,
location,
properties,
systemData,
tags
FROM azure.dns_resolver.inbound_endpoints
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dnsResolverName = '{{ dnsResolverName }}' -- required
AND inboundEndpointName = '{{ inboundEndpointName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists inbound endpoints for a DNS resolver.

```sql
SELECT
etag,
location,
properties,
systemData,
tags
FROM azure.dns_resolver.inbound_endpoints
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dnsResolverName = '{{ dnsResolverName }}' -- required
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

Creates or updates an inbound endpoint for a DNS resolver.

```sql
INSERT INTO azure.dns_resolver.inbound_endpoints (
data__properties,
data__tags,
data__location,
subscriptionId,
resourceGroupName,
dnsResolverName,
inboundEndpointName,
If-Match,
If-None-Match
)
SELECT 
'{{ properties }}' /* required */,
'{{ tags }}',
'{{ location }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ dnsResolverName }}',
'{{ inboundEndpointName }}',
'{{ If-Match }}',
'{{ If-None-Match }}'
RETURNING
etag,
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
- name: inbound_endpoints
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the inbound_endpoints resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the inbound_endpoints resource.
    - name: dnsResolverName
      value: string
      description: Required parameter for the inbound_endpoints resource.
    - name: inboundEndpointName
      value: string
      description: Required parameter for the inbound_endpoints resource.
    - name: properties
      value: object
      description: |
        Properties of the inbound endpoint.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
    - name: If-Match
      value: string
      description: ETag of the resource. Omit this value to always overwrite the current resource. Specify the last-seen ETag value to prevent accidentally overwriting any concurrent changes.
    - name: If-None-Match
      value: string
      description: Set to '*' to allow a new resource to be created, but to prevent updating an existing resource. Other values will be ignored.
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

Updates an inbound endpoint for a DNS resolver.

```sql
UPDATE azure.dns_resolver.inbound_endpoints
SET 
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dnsResolverName = '{{ dnsResolverName }}' --required
AND inboundEndpointName = '{{ inboundEndpointName }}' --required
AND If-Match = '{{ If-Match}}'
RETURNING
etag,
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

Deletes an inbound endpoint for a DNS resolver. WARNING: This operation cannot be undone.

```sql
DELETE FROM azure.dns_resolver.inbound_endpoints
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dnsResolverName = '{{ dnsResolverName }}' --required
AND inboundEndpointName = '{{ inboundEndpointName }}' --required
AND If-Match = '{{ If-Match }}'
;
```
</TabItem>
</Tabs>
