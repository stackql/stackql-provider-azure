--- 
title: tenant_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - tenant_settings
  - api_management
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

Creates, updates, deletes, gets or lists a <code>tenant_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>tenant_settings</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.tenant_settings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_service', value: 'list_by_service' }
    ]}
>
<TabItem value="get">

Tenant Settings.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>TenantSettings entity contract properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_service">

Lists a collection of TenantSettings entities.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>TenantSettings entity contract properties.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-settingsType"><code>settingsType</code></a></td>
    <td></td>
    <td>Get tenant settings.</td>
</tr>
<tr>
    <td><a href="#list_by_service"><CopyableCode code="list_by_service" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Public settings.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the API Management service.</td>
</tr>
<tr id="parameter-settingsType">
    <td><CopyableCode code="settingsType" /></td>
    <td><code>string</code></td>
    <td>The identifier of the settings.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Not used</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_service', value: 'list_by_service' }
    ]}
>
<TabItem value="get">

Get tenant settings.

```sql
SELECT
properties
FROM azure.api_management.tenant_settings
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND settingsType = '{{ settingsType }}' -- required
;
```
</TabItem>
<TabItem value="list_by_service">

Public settings.

```sql
SELECT
properties
FROM azure.api_management.tenant_settings
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>
