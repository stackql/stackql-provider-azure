--- 
title: admin_keys
hide_title: false
hide_table_of_contents: false
keywords:
  - admin_keys
  - search
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

Creates, updates, deletes, gets or lists an <code>admin_keys</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>admin_keys</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.search.admin_keys" /></td></tr>
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

The admin keys were successfully retrieved and are in the response. You can use either the primary or secondary key as the value of the 'api-key' parameter in the Azure AI Search service REST API or SDK to perform any operations on your search service, including privileged operations. Privileged operations include managing resources like indexes and data sources as well as uploading, modifying, or deleting data in your indexes.

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
    <td><CopyableCode code="primaryKey" /></td>
    <td><code>string</code></td>
    <td>The primary admin API key of the search service.</td>
</tr>
<tr>
    <td><CopyableCode code="secondaryKey" /></td>
    <td><code>string</code></td>
    <td>The secondary admin API key of the search service.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-searchServiceName"><code>searchServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-x-ms-client-request-id"><code>x-ms-client-request-id</code></a></td>
    <td>Gets the primary and secondary admin API keys for the specified Azure AI Search service.</td>
</tr>
<tr>
    <td><a href="#regenerate"><CopyableCode code="regenerate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-searchServiceName"><code>searchServiceName</code></a>, <a href="#parameter-keyKind"><code>keyKind</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-x-ms-client-request-id"><code>x-ms-client-request-id</code></a></td>
    <td>Regenerates either the primary or secondary admin API key. You can only regenerate one key at a time.</td>
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
<tr id="parameter-keyKind">
    <td><CopyableCode code="keyKind" /></td>
    <td><code>string</code></td>
    <td>Specifies which key to regenerate. Valid values include 'primary' and 'secondary'.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-searchServiceName">
    <td><CopyableCode code="searchServiceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Azure AI Search service associated with the specified resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The unique identifier for a Microsoft Azure subscription. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-x-ms-client-request-id">
    <td><CopyableCode code="x-ms-client-request-id" /></td>
    <td><code>string (uuid)</code></td>
    <td>A client-generated GUID value that identifies this request. If specified, this will be included in response information as a way to track the request.</td>
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

Gets the primary and secondary admin API keys for the specified Azure AI Search service.

```sql
SELECT
primaryKey,
secondaryKey
FROM azure.search.admin_keys
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND searchServiceName = '{{ searchServiceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND x-ms-client-request-id = '{{ x-ms-client-request-id }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="regenerate"
    values={[
        { label: 'regenerate', value: 'regenerate' }
    ]}
>
<TabItem value="regenerate">

Regenerates either the primary or secondary admin API key. You can only regenerate one key at a time.

```sql
EXEC azure.search.admin_keys.regenerate 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@searchServiceName='{{ searchServiceName }}' --required, 
@keyKind='{{ keyKind }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@x-ms-client-request-id='{{ x-ms-client-request-id }}'
;
```
</TabItem>
</Tabs>
