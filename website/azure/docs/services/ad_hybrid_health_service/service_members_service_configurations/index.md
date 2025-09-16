--- 
title: service_members_service_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - service_members_service_configurations
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

Creates, updates, deletes, gets or lists a <code>service_members_service_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>service_members_service_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.service_members_service_configurations" /></td></tr>
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

The service configuration.

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
    <td><CopyableCode code="serviceAccount" /></td>
    <td><code>string</code></td>
    <td>The service account.</td>
</tr>
<tr>
    <td><CopyableCode code="serviceType" /></td>
    <td><code>integer</code></td>
    <td>The service type of the server.</td>
</tr>
<tr>
    <td><CopyableCode code="sqlDatabaseName" /></td>
    <td><code>string</code></td>
    <td>The SQL database.</td>
</tr>
<tr>
    <td><CopyableCode code="sqlDatabaseSize" /></td>
    <td><code>integer</code></td>
    <td>The SQL database size.</td>
</tr>
<tr>
    <td><CopyableCode code="sqlEdition" /></td>
    <td><code>string</code></td>
    <td>The SQL edition</td>
</tr>
<tr>
    <td><CopyableCode code="sqlInstance" /></td>
    <td><code>string</code></td>
    <td>The SQL instance details.</td>
</tr>
<tr>
    <td><CopyableCode code="sqlServer" /></td>
    <td><code>string</code></td>
    <td>The SQL server information.</td>
</tr>
<tr>
    <td><CopyableCode code="sqlVersion" /></td>
    <td><code>string</code></td>
    <td>The SQL version.</td>
</tr>
<tr>
    <td><CopyableCode code="version" /></td>
    <td><code>string</code></td>
    <td>The version of the sync service.</td>
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
    <td><a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-serviceMemberId"><code>serviceMemberId</code></a></td>
    <td></td>
    <td>Gets the service configuration.</td>
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
<tr id="parameter-serviceMemberId">
    <td><CopyableCode code="serviceMemberId" /></td>
    <td><code>string</code></td>
    <td>The server Id.</td>
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
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Gets the service configuration.

```sql
SELECT
serviceAccount,
serviceType,
sqlDatabaseName,
sqlDatabaseSize,
sqlEdition,
sqlInstance,
sqlServer,
sqlVersion,
version
FROM azure.ad_hybrid_health_service.service_members_service_configurations
WHERE serviceName = '{{ serviceName }}' -- required
AND serviceMemberId = '{{ serviceMemberId }}' -- required
;
```
</TabItem>
</Tabs>
