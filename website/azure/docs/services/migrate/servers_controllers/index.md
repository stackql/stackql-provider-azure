--- 
title: servers_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - servers_controllers
  - migrate
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

Creates, updates, deletes, gets or lists a <code>servers_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>servers_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.servers_controllers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_server_site_resource"
    values={[
        { label: 'list_by_server_site_resource', value: 'list_by_server_site_resource' }
    ]}
>
<TabItem value="list_by_server_site_resource">

ARM operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#list_by_server_site_resource"><CopyableCode code="list_by_server_site_resource" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-continuationToken"><code>continuationToken</code></a>, <a href="#parameter-totalRecordCount"><code>totalRecordCount</code></a></td>
    <td>Get all machines in a site.</td>
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
<tr id="parameter-siteName">
    <td><CopyableCode code="siteName" /></td>
    <td><code>string</code></td>
    <td>Site name</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-continuationToken">
    <td><CopyableCode code="continuationToken" /></td>
    <td><code>string</code></td>
    <td>Optional parameter for continuation token.</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>filter query</td>
</tr>
<tr id="parameter-top">
    <td><CopyableCode code="top" /></td>
    <td><code>string</code></td>
    <td>page size  query</td>
</tr>
<tr id="parameter-totalRecordCount">
    <td><CopyableCode code="totalRecordCount" /></td>
    <td><code>integer (int32)</code></td>
    <td>Total count of machines in the given site.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_server_site_resource"
    values={[
        { label: 'list_by_server_site_resource', value: 'list_by_server_site_resource' }
    ]}
>
<TabItem value="list_by_server_site_resource">

Get all machines in a site.

```sql
SELECT
properties
FROM azure.migrate.servers_controllers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND siteName = '{{ siteName }}' -- required
AND filter = '{{ filter }}'
AND top = '{{ top }}'
AND continuationToken = '{{ continuationToken }}'
AND totalRecordCount = '{{ totalRecordCount }}'
;
```
</TabItem>
</Tabs>
