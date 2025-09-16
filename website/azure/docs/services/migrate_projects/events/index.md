--- 
title: events
hide_title: false
hide_table_of_contents: false
keywords:
  - events
  - migrate_projects
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

Creates, updates, deletes, gets or lists an <code>events</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>events</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate_projects.events" /></td></tr>
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
    <td><a href="#enumerate_events"><CopyableCode code="enumerate_events" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-migrateProjectName"><code>migrateProjectName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-continuationToken"><code>continuationToken</code></a>, <a href="#parameter-pageSize"><code>pageSize</code></a>, <a href="#parameter-Accept-Language"><code>Accept-Language</code></a></td>
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
<tr id="parameter-migrateProjectName">
    <td><CopyableCode code="migrateProjectName" /></td>
    <td><code>string</code></td>
    <td>Name of the Azure Migrate project.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the Azure Resource Group that migrate project is part of.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure Subscription Id in which migrate project was created.</td>
</tr>
<tr id="parameter-Accept-Language">
    <td><CopyableCode code="Accept-Language" /></td>
    <td><code>string</code></td>
    <td>Standard request header. Used by service to respond to client in appropriate language.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Standard request header. Used by service to identify API version used by client.</td>
</tr>
<tr id="parameter-continuationToken">
    <td><CopyableCode code="continuationToken" /></td>
    <td><code>string</code></td>
    <td>The continuation token.</td>
</tr>
<tr id="parameter-pageSize">
    <td><CopyableCode code="pageSize" /></td>
    <td><code>integer</code></td>
    <td>The number of items to be returned in a single page. This value is honored only if it is less than the 100.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="enumerate_events"
    values={[
        { label: 'enumerate_events', value: 'enumerate_events' }
    ]}
>
<TabItem value="enumerate_events">

OK

```sql
EXEC azure.migrate_projects.events.enumerate_events 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@migrateProjectName='{{ migrateProjectName }}' --required, 
@api-version='{{ api-version }}', 
@continuationToken='{{ continuationToken }}', 
@pageSize='{{ pageSize }}', 
@Accept-Language='{{ Accept-Language }}'
;
```
</TabItem>
</Tabs>
