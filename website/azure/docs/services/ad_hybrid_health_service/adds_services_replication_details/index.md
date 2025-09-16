--- 
title: adds_services_replication_details
hide_title: false
hide_table_of_contents: false
keywords:
  - adds_services_replication_details
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

Creates, updates, deletes, gets or lists an <code>adds_services_replication_details</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>adds_services_replication_details</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.adds_services_replication_details" /></td></tr>
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

The list of replication details for a service. 

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
    <td><a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-withDetails"><code>withDetails</code></a></td>
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
<tr id="parameter-withDetails">
    <td><CopyableCode code="withDetails" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if InboundReplicationNeighbor details are required or not.</td>
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
FROM azure.ad_hybrid_health_service.adds_services_replication_details
WHERE serviceName = '{{ serviceName }}' -- required
AND $filter = '{{ $filter }}'
AND withDetails = '{{ withDetails }}'
;
```
</TabItem>
</Tabs>
