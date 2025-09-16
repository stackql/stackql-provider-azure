--- 
title: code_package_container_logs
hide_title: false
hide_table_of_contents: false
keywords:
  - code_package_container_logs
  - service_fabric_mesh
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

Creates, updates, deletes, gets or lists a <code>code_package_container_logs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>code_package_container_logs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_fabric_mesh.code_package_container_logs" /></td></tr>
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
    <td><CopyableCode code="content" /></td>
    <td><code>string</code></td>
    <td>Container logs.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationResourceName"><code>applicationResourceName</code></a>, <a href="#parameter-serviceResourceName"><code>serviceResourceName</code></a>, <a href="#parameter-replicaName"><code>replicaName</code></a>, <a href="#parameter-codePackageName"><code>codePackageName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-tail"><code>tail</code></a></td>
    <td>Gets the logs for the container of the specified code package of the service replica.</td>
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
<tr id="parameter-applicationResourceName">
    <td><CopyableCode code="applicationResourceName" /></td>
    <td><code>string</code></td>
    <td>The identity of the application.</td>
</tr>
<tr id="parameter-codePackageName">
    <td><CopyableCode code="codePackageName" /></td>
    <td><code>string</code></td>
    <td>The name of code package of the service.</td>
</tr>
<tr id="parameter-replicaName">
    <td><CopyableCode code="replicaName" /></td>
    <td><code>string</code></td>
    <td>Service Fabric replica name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Azure resource group name</td>
</tr>
<tr id="parameter-serviceResourceName">
    <td><CopyableCode code="serviceResourceName" /></td>
    <td><code>string</code></td>
    <td>The identity of the service.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The customer subscription identifier</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The version of the API. This parameter is required and its value must be `2018-09-01-preview`.</td>
</tr>
<tr id="parameter-tail">
    <td><CopyableCode code="tail" /></td>
    <td><code>integer</code></td>
    <td>Number of lines to show from the end of the logs. Default is 100.</td>
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

Gets the logs for the container of the specified code package of the service replica.

```sql
SELECT
content
FROM azure.service_fabric_mesh.code_package_container_logs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND applicationResourceName = '{{ applicationResourceName }}' -- required
AND serviceResourceName = '{{ serviceResourceName }}' -- required
AND replicaName = '{{ replicaName }}' -- required
AND codePackageName = '{{ codePackageName }}' -- required
AND api-version = '{{ api-version }}'
AND tail = '{{ tail }}'
;
```
</TabItem>
</Tabs>
