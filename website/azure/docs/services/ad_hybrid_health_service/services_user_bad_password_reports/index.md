--- 
title: services_user_bad_password_reports
hide_title: false
hide_table_of_contents: false
keywords:
  - services_user_bad_password_reports
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

Creates, updates, deletes, gets or lists a <code>services_user_bad_password_reports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>services_user_bad_password_reports</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.services_user_bad_password_reports" /></td></tr>
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

The list of bad password login attempts.

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
    <td><CopyableCode code="ipAddress" /></td>
    <td><code>string</code></td>
    <td>The IP address corresponding to the last error event.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time when the last error event was logged.</td>
</tr>
<tr>
    <td><CopyableCode code="totalErrorAttempts" /></td>
    <td><code>integer</code></td>
    <td>The total count of specific error events.</td>
</tr>
<tr>
    <td><CopyableCode code="uniqueIpAddresses" /></td>
    <td><code>string</code></td>
    <td>The list of unique IP addresses.</td>
</tr>
<tr>
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>The user ID value.</td>
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
    <td><a href="#parameter-dataSource"><code>dataSource</code></a></td>
    <td>Gets the bad password login attempt report for an user</td>
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
<tr id="parameter-dataSource">
    <td><CopyableCode code="dataSource" /></td>
    <td><code>string</code></td>
    <td>The source of data, if its test data or customer data.</td>
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

Gets the bad password login attempt report for an user

```sql
SELECT
ipAddress,
lastUpdated,
totalErrorAttempts,
uniqueIpAddresses,
userId
FROM azure.ad_hybrid_health_service.services_user_bad_password_reports
WHERE serviceName = '{{ serviceName }}' -- required
AND dataSource = '{{ dataSource }}'
;
```
</TabItem>
</Tabs>
