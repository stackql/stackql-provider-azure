--- 
title: revisions
hide_title: false
hide_table_of_contents: false
keywords:
  - revisions
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

Creates, updates, deletes, gets or lists a <code>revisions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>revisions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_apps.revisions" /></td></tr>
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Revision resource specific properties</td>
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Revision resource specific properties</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a>, <a href="#parameter-revisionName"><code>revisionName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td></td>
</tr>
<tr>
    <td><a href="#activate_revision"><CopyableCode code="activate_revision" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a>, <a href="#parameter-revisionName"><code>revisionName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#deactivate_revision"><CopyableCode code="deactivate_revision" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a>, <a href="#parameter-revisionName"><code>revisionName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#restart_revision"><CopyableCode code="restart_revision" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a>, <a href="#parameter-revisionName"><code>revisionName</code></a></td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-revisionName">
    <td><CopyableCode code="revisionName" /></td>
    <td><code>string</code></td>
    <td>Name of the Container App Revision.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation.</td>
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

OK

```sql
SELECT
properties
FROM azure.container_apps.revisions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND containerAppName = '{{ containerAppName }}' -- required
AND revisionName = '{{ revisionName }}' -- required
;
```
</TabItem>
<TabItem value="list">

OK

```sql
SELECT
properties
FROM azure.container_apps.revisions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND containerAppName = '{{ containerAppName }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_revision"
    values={[
        { label: 'activate_revision', value: 'activate_revision' },
        { label: 'deactivate_revision', value: 'deactivate_revision' },
        { label: 'restart_revision', value: 'restart_revision' }
    ]}
>
<TabItem value="activate_revision">

Container App revision was activated

```sql
EXEC azure.container_apps.revisions.activate_revision 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@containerAppName='{{ containerAppName }}' --required, 
@revisionName='{{ revisionName }}' --required
;
```
</TabItem>
<TabItem value="deactivate_revision">

Container App revision was deactivated

```sql
EXEC azure.container_apps.revisions.deactivate_revision 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@containerAppName='{{ containerAppName }}' --required, 
@revisionName='{{ revisionName }}' --required
;
```
</TabItem>
<TabItem value="restart_revision">

Container App revision was restarted

```sql
EXEC azure.container_apps.revisions.restart_revision 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@containerAppName='{{ containerAppName }}' --required, 
@revisionName='{{ revisionName }}' --required
;
```
</TabItem>
</Tabs>
