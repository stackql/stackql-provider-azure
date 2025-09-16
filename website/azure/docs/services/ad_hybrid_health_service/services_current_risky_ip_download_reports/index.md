--- 
title: services_current_risky_ip_download_reports
hide_title: false
hide_table_of_contents: false
keywords:
  - services_current_risky_ip_download_reports
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

Creates, updates, deletes, gets or lists a <code>services_current_risky_ip_download_reports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>services_current_risky_ip_download_reports</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.services_current_risky_ip_download_reports" /></td></tr>
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

The URI of the Risky IP report that was requested.

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
    <td><CopyableCode code="blobCreateDateTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Time at which the new Risky IP report was requested.</td>
</tr>
<tr>
    <td><CopyableCode code="jobCompletionTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Time at which the blob creation job for the new Risky IP report was completed.</td>
</tr>
<tr>
    <td><CopyableCode code="resultSasUri" /></td>
    <td><code>string</code></td>
    <td>The blob uri for the report.</td>
</tr>
<tr>
    <td><CopyableCode code="serviceId" /></td>
    <td><code>string</code></td>
    <td>The service id for whom the report belongs to.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the Risky IP report generation.</td>
</tr>
<tr>
    <td><CopyableCode code="tenantId" /></td>
    <td><code>string</code></td>
    <td>The tenant id for whom the report belongs to.</td>
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
    <td></td>
    <td>Initiate the generation of a new Risky IP report. Returns the URI for the new one.</td>
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
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Initiate the generation of a new Risky IP report. Returns the URI for the new one.

```sql
SELECT
blobCreateDateTime,
jobCompletionTime,
resultSasUri,
serviceId,
status,
tenantId
FROM azure.ad_hybrid_health_service.services_current_risky_ip_download_reports
WHERE serviceName = '{{ serviceName }}' -- required
;
```
</TabItem>
</Tabs>
