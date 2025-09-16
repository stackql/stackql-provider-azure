--- 
title: adds_services_forest_summaries
hide_title: false
hide_table_of_contents: false
keywords:
  - adds_services_forest_summaries
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

Creates, updates, deletes, gets or lists an <code>adds_services_forest_summaries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>adds_services_forest_summaries</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.adds_services_forest_summaries" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

The list of forest summary for the service. 

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
    <td><CopyableCode code="domainCount" /></td>
    <td><code>integer</code></td>
    <td>The domain count.</td>
</tr>
<tr>
    <td><CopyableCode code="domains" /></td>
    <td><code>array</code></td>
    <td>The list of domain controller names.</td>
</tr>
<tr>
    <td><CopyableCode code="forestName" /></td>
    <td><code>string</code></td>
    <td>The forest name.</td>
</tr>
<tr>
    <td><CopyableCode code="monitoredDcCount" /></td>
    <td><code>integer</code></td>
    <td>The number of domain controllers that are monitored by Azure Active Directory Connect Health.</td>
</tr>
<tr>
    <td><CopyableCode code="siteCount" /></td>
    <td><code>integer</code></td>
    <td>The site count.</td>
</tr>
<tr>
    <td><CopyableCode code="sites" /></td>
    <td><code>array</code></td>
    <td>The list of site names.</td>
</tr>
<tr>
    <td><CopyableCode code="totalDcCount" /></td>
    <td><code>integer</code></td>
    <td>The total domain controllers.</td>
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
    <td><a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td></td>
    <td>Gets the forest summary for a given Active Directory Domain Service, that is onboarded to Azure Active Directory Connect Health.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Gets the forest summary for a given Active Directory Domain Service, that is onboarded to Azure Active Directory Connect Health.

```sql
SELECT
domainCount,
domains,
forestName,
monitoredDcCount,
siteCount,
sites,
totalDcCount
FROM azure.ad_hybrid_health_service.adds_services_forest_summaries
WHERE serviceName = '{{ serviceName }}' -- required
;
```
</TabItem>
</Tabs>
