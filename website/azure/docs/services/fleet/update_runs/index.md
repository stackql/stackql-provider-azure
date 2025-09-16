--- 
title: update_runs
hide_title: false
hide_table_of_contents: false
keywords:
  - update_runs
  - fleet
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

Creates, updates, deletes, gets or lists a <code>update_runs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>update_runs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.fleet.update_runs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_fleet', value: 'list_by_fleet' }
    ]}
>
<TabItem value="get">

Azure operation completed successfully.

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
    <td><CopyableCode code="eTag" /></td>
    <td><code>string</code></td>
    <td>If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_fleet">

Azure operation completed successfully.

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
    <td><CopyableCode code="eTag" /></td>
    <td><code>string</code></td>
    <td>If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.</td>
</tr>
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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-fleetName"><code>fleetName</code></a>, <a href="#parameter-updateRunName"><code>updateRunName</code></a></td>
    <td></td>
    <td>Get a UpdateRun</td>
</tr>
<tr>
    <td><a href="#list_by_fleet"><CopyableCode code="list_by_fleet" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-fleetName"><code>fleetName</code></a></td>
    <td></td>
    <td>List UpdateRun resources by Fleet</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-fleetName"><code>fleetName</code></a>, <a href="#parameter-updateRunName"><code>updateRunName</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-If-None-Match"><code>If-None-Match</code></a></td>
    <td>Create a UpdateRun</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-fleetName"><code>fleetName</code></a>, <a href="#parameter-updateRunName"><code>updateRunName</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Delete a UpdateRun</td>
</tr>
<tr>
    <td><a href="#skip"><CopyableCode code="skip" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-fleetName"><code>fleetName</code></a>, <a href="#parameter-updateRunName"><code>updateRunName</code></a>, <a href="#parameter-targets"><code>targets</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Skips one or a combination of member/group/stage/afterStageWait(s) of an update run.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-fleetName"><code>fleetName</code></a>, <a href="#parameter-updateRunName"><code>updateRunName</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Starts an UpdateRun.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-fleetName"><code>fleetName</code></a>, <a href="#parameter-updateRunName"><code>updateRunName</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Stops an UpdateRun.</td>
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
<tr id="parameter-fleetName">
    <td><CopyableCode code="fleetName" /></td>
    <td><code>string</code></td>
    <td>The name of the Fleet resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-updateRunName">
    <td><CopyableCode code="updateRunName" /></td>
    <td><code>string</code></td>
    <td>The name of the UpdateRun resource.</td>
</tr>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>The request should only proceed if an entity matches this string.</td>
</tr>
<tr id="parameter-If-None-Match">
    <td><CopyableCode code="If-None-Match" /></td>
    <td><code>string</code></td>
    <td>The request should only proceed if no entity matches this string.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_fleet', value: 'list_by_fleet' }
    ]}
>
<TabItem value="get">

Get a UpdateRun

```sql
SELECT
eTag,
properties
FROM azure.fleet.update_runs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND fleetName = '{{ fleetName }}' -- required
AND updateRunName = '{{ updateRunName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_fleet">

List UpdateRun resources by Fleet

```sql
SELECT
eTag,
properties
FROM azure.fleet.update_runs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND fleetName = '{{ fleetName }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Create a UpdateRun

```sql
INSERT INTO azure.fleet.update_runs (
data__properties,
subscriptionId,
resourceGroupName,
fleetName,
updateRunName,
If-Match,
If-None-Match
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ fleetName }}',
'{{ updateRunName }}',
'{{ If-Match }}',
'{{ If-None-Match }}'
RETURNING
eTag,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: update_runs
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the update_runs resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the update_runs resource.
    - name: fleetName
      value: string
      description: Required parameter for the update_runs resource.
    - name: updateRunName
      value: string
      description: Required parameter for the update_runs resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
    - name: If-Match
      value: string
      description: The request should only proceed if an entity matches this string.
    - name: If-None-Match
      value: string
      description: The request should only proceed if no entity matches this string.
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

Delete a UpdateRun

```sql
DELETE FROM azure.fleet.update_runs
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND fleetName = '{{ fleetName }}' --required
AND updateRunName = '{{ updateRunName }}' --required
AND If-Match = '{{ If-Match }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="skip"
    values={[
        { label: 'skip', value: 'skip' },
        { label: 'start', value: 'start' },
        { label: 'stop', value: 'stop' }
    ]}
>
<TabItem value="skip">

Skips one or a combination of member/group/stage/afterStageWait(s) of an update run.

```sql
EXEC azure.fleet.update_runs.skip 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@fleetName='{{ fleetName }}' --required, 
@updateRunName='{{ updateRunName }}' --required, 
@If-Match='{{ If-Match }}' 
@@json=
'{
"targets": "{{ targets }}"
}'
;
```
</TabItem>
<TabItem value="start">

Starts an UpdateRun.

```sql
EXEC azure.fleet.update_runs.start 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@fleetName='{{ fleetName }}' --required, 
@updateRunName='{{ updateRunName }}' --required, 
@If-Match='{{ If-Match }}'
;
```
</TabItem>
<TabItem value="stop">

Stops an UpdateRun.

```sql
EXEC azure.fleet.update_runs.stop 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@fleetName='{{ fleetName }}' --required, 
@updateRunName='{{ updateRunName }}' --required, 
@If-Match='{{ If-Match }}'
;
```
</TabItem>
</Tabs>
