--- 
title: integration_runtimes_outbound_network_dependencies_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - integration_runtimes_outbound_network_dependencies_endpoints
  - data_factory
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

Creates, updates, deletes, gets or lists an <code>integration_runtimes_outbound_network_dependencies_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>integration_runtimes_outbound_network_dependencies_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_factory.integration_runtimes_outbound_network_dependencies_endpoints" /></td></tr>
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

OK.

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
    <td><CopyableCode code="category" /></td>
    <td><code>string</code></td>
    <td>The category of outbound network dependency.</td>
</tr>
<tr>
    <td><CopyableCode code="endpoints" /></td>
    <td><code>array</code></td>
    <td>The endpoints for outbound network dependency.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-integrationRuntimeName"><code>integrationRuntimeName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets the list of outbound network dependencies for a given Azure-SSIS integration runtime.</td>
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
<tr id="parameter-factoryName">
    <td><CopyableCode code="factoryName" /></td>
    <td><code>string</code></td>
    <td>The factory name.</td>
</tr>
<tr id="parameter-integrationRuntimeName">
    <td><CopyableCode code="integrationRuntimeName" /></td>
    <td><code>string</code></td>
    <td>The integration runtime name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription identifier.</td>
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
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Gets the list of outbound network dependencies for a given Azure-SSIS integration runtime.

```sql
SELECT
category,
endpoints
FROM azure.data_factory.integration_runtimes_outbound_network_dependencies_endpoints
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND factoryName = '{{ factoryName }}' -- required
AND integrationRuntimeName = '{{ integrationRuntimeName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
