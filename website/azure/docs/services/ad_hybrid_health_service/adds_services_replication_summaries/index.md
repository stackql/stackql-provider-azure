--- 
title: adds_services_replication_summaries
hide_title: false
hide_table_of_contents: false
keywords:
  - adds_services_replication_summaries
  - ad_hybrid_health_service
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

Creates, updates, deletes, gets or lists an <code>adds_services_replication_summaries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>adds_services_replication_summaries</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.adds_services_replication_summaries" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

The list of replication summary for a service. 

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
    <td><CopyableCode code="domain" /></td>
    <td><code>string</code></td>
    <td>The domain name for a given domain controller.</td>
</tr>
<tr>
    <td><CopyableCode code="inboundNeighborCollection" /></td>
    <td><code>array</code></td>
    <td>List of individual domain controller neighbor's inbound replication status.</td>
</tr>
<tr>
    <td><CopyableCode code="lastAttemptedSync" /></td>
    <td><code>string (date-time)</code></td>
    <td>The last time when a sync was attempted for a given domain controller.</td>
</tr>
<tr>
    <td><CopyableCode code="lastSuccessfulSync" /></td>
    <td><code>string (date-time)</code></td>
    <td>The time when the last successful sync happened for a given domain controller.</td>
</tr>
<tr>
    <td><CopyableCode code="site" /></td>
    <td><code>string</code></td>
    <td>The site name for a given domain controller.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>integer</code></td>
    <td>The health status for a domain controller.</td>
</tr>
<tr>
    <td><CopyableCode code="targetServer" /></td>
    <td><code>string</code></td>
    <td>The domain controller name.</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-isGroupbySite"><code>isGroupbySite</code></a>, <a href="#parameter-query"><code>query</code></a>, <a href="#parameter-nextPartitionKey"><code>nextPartitionKey</code></a>, <a href="#parameter-nextRowKey"><code>nextRowKey</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-takeCount"><code>takeCount</code></a></td>
    <td>Gets complete domain controller list along with replication details for a given Active Directory Domain Service, that is onboarded to Azure Active Directory Connect Health.</td>
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
<tr id="parameter-isGroupbySite">
    <td><CopyableCode code="isGroupbySite" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the result should be grouped by site or not.</td>
</tr>
<tr id="parameter-nextPartitionKey">
    <td><CopyableCode code="nextPartitionKey" /></td>
    <td><code>string</code></td>
    <td>The next partition key to query for.</td>
</tr>
<tr id="parameter-nextRowKey">
    <td><CopyableCode code="nextRowKey" /></td>
    <td><code>string</code></td>
    <td>The next row key to query for.</td>
</tr>
<tr id="parameter-query">
    <td><CopyableCode code="query" /></td>
    <td><code>string</code></td>
    <td>The custom query.</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the service.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The server property filter to apply.</td>
</tr>
<tr id="parameter-takeCount">
    <td><CopyableCode code="takeCount" /></td>
    <td><code>integer</code></td>
    <td>The take count , which specifies the number of elements that can be returned from a sequence.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Gets complete domain controller list along with replication details for a given Active Directory Domain Service, that is onboarded to Azure Active Directory Connect Health.

```sql
SELECT
domain,
inboundNeighborCollection,
lastAttemptedSync,
lastSuccessfulSync,
site,
status,
targetServer
FROM azure.ad_hybrid_health_service.adds_services_replication_summaries
WHERE serviceName = '{{ serviceName }}' -- required
AND isGroupbySite = '{{ isGroupbySite }}' -- required
AND query = '{{ query }}' -- required
AND nextPartitionKey = '{{ nextPartitionKey }}' -- required
AND nextRowKey = '{{ nextRowKey }}' -- required
AND $filter = '{{ $filter }}'
AND takeCount = '{{ takeCount }}'
;
```
</TabItem>
</Tabs>
