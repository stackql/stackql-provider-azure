--- 
title: dimensions_adds_dimensions
hide_title: false
hide_table_of_contents: false
keywords:
  - dimensions_adds_dimensions
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

Creates, updates, deletes, gets or lists a <code>dimensions_adds_dimensions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>dimensions_adds_dimensions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.dimensions_adds_dimensions" /></td></tr>
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

The list of dimensions for a server. 

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
    <td><CopyableCode code="activeAlerts" /></td>
    <td><code>integer</code></td>
    <td>The count of alerts that are currently active for the service.</td>
</tr>
<tr>
    <td><CopyableCode code="additionalInformation" /></td>
    <td><code>string</code></td>
    <td>The additional information related to the service.</td>
</tr>
<tr>
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>The display name of the service.</td>
</tr>
<tr>
    <td><CopyableCode code="health" /></td>
    <td><code>string</code></td>
    <td>The health status for the domain controller.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date or time , in UTC, when the service properties were last updated.</td>
</tr>
<tr>
    <td><CopyableCode code="resolvedAlerts" /></td>
    <td><code>integer</code></td>
    <td>The total count of alerts that has been resolved for the service.</td>
</tr>
<tr>
    <td><CopyableCode code="signature" /></td>
    <td><code>string</code></td>
    <td>The signature of the service.</td>
</tr>
<tr>
    <td><CopyableCode code="simpleProperties" /></td>
    <td><code>object</code></td>
    <td>List of service specific configuration properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The service type for the services onboarded to Azure Active Directory Connect Health. Depending on whether the service is monitoring, ADFS, Sync or ADDS roles, the service type can either be AdFederationService or AadSyncService or AdDomainService.</td>
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
    <td><a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-dimension"><code>dimension</code></a></td>
    <td></td>
    <td>Gets the dimensions for a given dimension type in a server.</td>
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
<tr id="parameter-dimension">
    <td><CopyableCode code="dimension" /></td>
    <td><code>string</code></td>
    <td>The dimension type.</td>
</tr>
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

Gets the dimensions for a given dimension type in a server.

```sql
SELECT
activeAlerts,
additionalInformation,
displayName,
health,
lastUpdated,
resolvedAlerts,
signature,
simpleProperties,
type
FROM azure.ad_hybrid_health_service.dimensions_adds_dimensions
WHERE serviceName = '{{ serviceName }}' -- required
AND dimension = '{{ dimension }}' -- required
;
```
</TabItem>
</Tabs>
