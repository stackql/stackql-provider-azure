--- 
title: integration_service_environment_managed_apis
hide_title: false
hide_table_of_contents: false
keywords:
  - integration_service_environment_managed_apis
  - logic_apps
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

Creates, updates, deletes, gets or lists an <code>integration_service_environment_managed_apis</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>integration_service_environment_managed_apis</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.logic_apps.integration_service_environment_managed_apis" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The resource id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets the resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The integration service environment managed api properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Gets the resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The resource id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets the resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The integration service environment managed api properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Gets the resource type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-integrationServiceEnvironmentName"><code>integrationServiceEnvironmentName</code></a>, <a href="#parameter-apiName"><code>apiName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets the integration service environment managed Api.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-integrationServiceEnvironmentName"><code>integrationServiceEnvironmentName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets the integration service environment managed Apis.</td>
</tr>
<tr>
    <td><a href="#put"><CopyableCode code="put" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-integrationServiceEnvironmentName"><code>integrationServiceEnvironmentName</code></a>, <a href="#parameter-apiName"><code>apiName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Puts the integration service environment managed Api.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroup"><code>resourceGroup</code></a>, <a href="#parameter-integrationServiceEnvironmentName"><code>integrationServiceEnvironmentName</code></a>, <a href="#parameter-apiName"><code>apiName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Deletes the integration service environment managed Api.</td>
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
<tr id="parameter-apiName">
    <td><CopyableCode code="apiName" /></td>
    <td><code>string</code></td>
    <td>The api name.</td>
</tr>
<tr id="parameter-integrationServiceEnvironmentName">
    <td><CopyableCode code="integrationServiceEnvironmentName" /></td>
    <td><code>string</code></td>
    <td>The integration service environment name.</td>
</tr>
<tr id="parameter-resourceGroup">
    <td><CopyableCode code="resourceGroup" /></td>
    <td><code>string</code></td>
    <td>The resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription id.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The API version.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets the integration service environment managed Api.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure.logic_apps.integration_service_environment_managed_apis
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroup = '{{ resourceGroup }}' -- required
AND integrationServiceEnvironmentName = '{{ integrationServiceEnvironmentName }}' -- required
AND apiName = '{{ apiName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Gets the integration service environment managed Apis.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure.logic_apps.integration_service_environment_managed_apis
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroup = '{{ resourceGroup }}' -- required
AND integrationServiceEnvironmentName = '{{ integrationServiceEnvironmentName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="put"
    values={[
        { label: 'put', value: 'put' }
    ]}
>
<TabItem value="put">

Puts the integration service environment managed Api.

```sql
REPLACE azure.logic_apps.integration_service_environment_managed_apis
SET 
data__properties = '{{ properties }}',
data__location = '{{ location }}',
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroup = '{{ resourceGroup }}' --required
AND integrationServiceEnvironmentName = '{{ integrationServiceEnvironmentName }}' --required
AND apiName = '{{ apiName }}' --required
AND api-version = '{{ api-version}}'
RETURNING
id,
name,
location,
properties,
tags,
type;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Deletes the integration service environment managed Api.

```sql
DELETE FROM azure.logic_apps.integration_service_environment_managed_apis
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroup = '{{ resourceGroup }}' --required
AND integrationServiceEnvironmentName = '{{ integrationServiceEnvironmentName }}' --required
AND apiName = '{{ apiName }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
