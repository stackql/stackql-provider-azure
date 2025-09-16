--- 
title: smart_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - smart_groups
  - alerts_management
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

Creates, updates, deletes, gets or lists a <code>smart_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>smart_groups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.alerts_management.smart_groups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_id"
    values={[
        { label: 'get_by_id', value: 'get_by_id' },
        { label: 'get_all', value: 'get_all' }
    ]}
>
<TabItem value="get_by_id">

OK. Returns the group with the specified smart group Id.

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
    <td>Azure resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Azure resource name</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of smart group.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Azure resource type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_all">

OK. Returns list of all smartGroups.

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
    <td>Azure resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Azure resource name</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of smart group.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Azure resource type</td>
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
    <td><a href="#get_by_id"><CopyableCode code="get_by_id" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-smartGroupId"><code>smartGroupId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get information related to a specific Smart Group.</td>
</tr>
<tr>
    <td><a href="#get_all"><CopyableCode code="get_all" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-targetResource"><code>targetResource</code></a>, <a href="#parameter-targetResourceGroup"><code>targetResourceGroup</code></a>, <a href="#parameter-targetResourceType"><code>targetResourceType</code></a>, <a href="#parameter-monitorService"><code>monitorService</code></a>, <a href="#parameter-monitorCondition"><code>monitorCondition</code></a>, <a href="#parameter-severity"><code>severity</code></a>, <a href="#parameter-smartGroupState"><code>smartGroupState</code></a>, <a href="#parameter-timeRange"><code>timeRange</code></a>, <a href="#parameter-pageCount"><code>pageCount</code></a>, <a href="#parameter-sortBy"><code>sortBy</code></a>, <a href="#parameter-sortOrder"><code>sortOrder</code></a>, <a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>List all the Smart Groups within a specified subscription. </td>
</tr>
<tr>
    <td><a href="#change_state"><CopyableCode code="change_state" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-smartGroupId"><code>smartGroupId</code></a>, <a href="#parameter-newState"><code>newState</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Change the state of a Smart Group.</td>
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
<tr id="parameter-newState">
    <td><CopyableCode code="newState" /></td>
    <td><code>string</code></td>
    <td>New state of the alert.</td>
</tr>
<tr id="parameter-smartGroupId">
    <td><CopyableCode code="smartGroupId" /></td>
    <td><code>string</code></td>
    <td>Smart group unique id. </td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>client API version</td>
</tr>
<tr id="parameter-monitorCondition">
    <td><CopyableCode code="monitorCondition" /></td>
    <td><code>string</code></td>
    <td>Filter by monitor condition which is either 'Fired' or 'Resolved'. Default value is to select all.</td>
</tr>
<tr id="parameter-monitorService">
    <td><CopyableCode code="monitorService" /></td>
    <td><code>string</code></td>
    <td>Filter by monitor service which generates the alert instance. Default value is select all.</td>
</tr>
<tr id="parameter-pageCount">
    <td><CopyableCode code="pageCount" /></td>
    <td><code>integer (int64)</code></td>
    <td>Determines number of alerts returned per page in response. Permissible value is between 1 to 250. When the "includeContent"  filter is selected, maximum value allowed is 25. Default value is 25.</td>
</tr>
<tr id="parameter-severity">
    <td><CopyableCode code="severity" /></td>
    <td><code>string</code></td>
    <td>Filter by severity.  Default value is select all.</td>
</tr>
<tr id="parameter-smartGroupState">
    <td><CopyableCode code="smartGroupState" /></td>
    <td><code>string</code></td>
    <td>Filter by state of the smart group. Default value is to select all.</td>
</tr>
<tr id="parameter-sortBy">
    <td><CopyableCode code="sortBy" /></td>
    <td><code>string</code></td>
    <td>Sort the query results by input field. Default value is sort by 'lastModifiedDateTime'.</td>
</tr>
<tr id="parameter-sortOrder">
    <td><CopyableCode code="sortOrder" /></td>
    <td><code>string</code></td>
    <td>Sort the query results order in either ascending or descending.  Default value is 'desc' for time fields and 'asc' for others.</td>
</tr>
<tr id="parameter-targetResource">
    <td><CopyableCode code="targetResource" /></td>
    <td><code>string</code></td>
    <td>Filter by target resource( which is full ARM ID) Default value is select all.</td>
</tr>
<tr id="parameter-targetResourceGroup">
    <td><CopyableCode code="targetResourceGroup" /></td>
    <td><code>string</code></td>
    <td>Filter by target resource group name. Default value is select all.</td>
</tr>
<tr id="parameter-targetResourceType">
    <td><CopyableCode code="targetResourceType" /></td>
    <td><code>string</code></td>
    <td>Filter by target resource type. Default value is select all.</td>
</tr>
<tr id="parameter-timeRange">
    <td><CopyableCode code="timeRange" /></td>
    <td><code>string</code></td>
    <td>Filter by time range by below listed values. Default value is 1 day.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_id"
    values={[
        { label: 'get_by_id', value: 'get_by_id' },
        { label: 'get_all', value: 'get_all' }
    ]}
>
<TabItem value="get_by_id">

Get information related to a specific Smart Group.

```sql
SELECT
id,
name,
properties,
type
FROM azure.alerts_management.smart_groups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND smartGroupId = '{{ smartGroupId }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="get_all">

List all the Smart Groups within a specified subscription. 

```sql
SELECT
id,
name,
properties,
type
FROM azure.alerts_management.smart_groups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND targetResource = '{{ targetResource }}'
AND targetResourceGroup = '{{ targetResourceGroup }}'
AND targetResourceType = '{{ targetResourceType }}'
AND monitorService = '{{ monitorService }}'
AND monitorCondition = '{{ monitorCondition }}'
AND severity = '{{ severity }}'
AND smartGroupState = '{{ smartGroupState }}'
AND timeRange = '{{ timeRange }}'
AND pageCount = '{{ pageCount }}'
AND sortBy = '{{ sortBy }}'
AND sortOrder = '{{ sortOrder }}'
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="change_state"
    values={[
        { label: 'change_state', value: 'change_state' }
    ]}
>
<TabItem value="change_state">

Change the state of a Smart Group.

```sql
EXEC azure.alerts_management.smart_groups.change_state 
@subscriptionId='{{ subscriptionId }}' --required, 
@smartGroupId='{{ smartGroupId }}' --required, 
@newState='{{ newState }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
</Tabs>
