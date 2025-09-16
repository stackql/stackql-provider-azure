--- 
title: functions_extensions
hide_title: false
hide_table_of_contents: false
keywords:
  - functions_extensions
  - container_apps
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

Creates, updates, deletes, gets or lists a <code>functions_extensions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>functions_extensions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_apps.functions_extensions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#invoke_functions_host"><CopyableCode code="invoke_functions_host" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a>, <a href="#parameter-revisionName"><code>revisionName</code></a>, <a href="#parameter-functionAppName"><code>functionAppName</code></a></td>
    <td></td>
    <td></td>
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
<tr id="parameter-containerAppName">
    <td><CopyableCode code="containerAppName" /></td>
    <td><code>string</code></td>
    <td>Name of the Container App.</td>
</tr>
<tr id="parameter-functionAppName">
    <td><CopyableCode code="functionAppName" /></td>
    <td><code>string</code></td>
    <td>Name of the Function App, the extension resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-revisionName">
    <td><CopyableCode code="revisionName" /></td>
    <td><code>string</code></td>
    <td>Name of the Container App Revision, the parent resource.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="invoke_functions_host"
    values={[
        { label: 'invoke_functions_host', value: 'invoke_functions_host' }
    ]}
>
<TabItem value="invoke_functions_host">

Functions host call response.

```sql
EXEC azure.container_apps.functions_extensions.invoke_functions_host 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@containerAppName='{{ containerAppName }}' --required, 
@revisionName='{{ revisionName }}' --required, 
@functionAppName='{{ functionAppName }}' --required
;
```
</TabItem>
</Tabs>
