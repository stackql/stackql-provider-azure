--- 
title: build_service_build_result_logs
hide_title: false
hide_table_of_contents: false
keywords:
  - build_service_build_result_logs
  - spring_apps
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

Creates, updates, deletes, gets or lists a <code>build_service_build_result_logs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>build_service_build_result_logs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.build_service_build_result_logs" /></td></tr>
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

Success. Build result log exists and can be downloaded.

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
    <td><CopyableCode code="blobUrl" /></td>
    <td><code>string</code></td>
    <td>The public download URL of this build result log</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-buildServiceName"><code>buildServiceName</code></a>, <a href="#parameter-buildName"><code>buildName</code></a>, <a href="#parameter-buildResultName"><code>buildResultName</code></a></td>
    <td></td>
    <td>Get a KPack build result log download URL.</td>
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
<tr id="parameter-buildName">
    <td><CopyableCode code="buildName" /></td>
    <td><code>string</code></td>
    <td>The name of the build resource.</td>
</tr>
<tr id="parameter-buildResultName">
    <td><CopyableCode code="buildResultName" /></td>
    <td><code>string</code></td>
    <td>The name of the build result resource.</td>
</tr>
<tr id="parameter-buildServiceName">
    <td><CopyableCode code="buildServiceName" /></td>
    <td><code>string</code></td>
    <td>The name of the build service resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Service resource.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Gets subscription ID which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
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

Get a KPack build result log download URL.

```sql
SELECT
blobUrl
FROM azure.spring_apps.build_service_build_result_logs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND buildServiceName = '{{ buildServiceName }}' -- required
AND buildName = '{{ buildName }}' -- required
AND buildResultName = '{{ buildResultName }}' -- required
;
```
</TabItem>
</Tabs>
