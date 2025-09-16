--- 
title: alert_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - alert_configurations
  - authorization
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

Creates, updates, deletes, gets or lists an <code>alert_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>alert_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.alert_configurations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_for_scope', value: 'list_for_scope' }
    ]}
>
<TabItem value="get">

OK - Returns information about the alert configuration.

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
    <td>The alert configuration ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The alert configuration name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Alert configuration properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The alert configuration type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_for_scope">

OK - Returns an array of alert configurations.

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
    <td>The alert configuration ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The alert configuration name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Alert configuration properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The alert configuration type.</td>
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
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-alertId"><code>alertId</code></a></td>
    <td></td>
    <td>Get the specified alert configuration.</td>
</tr>
<tr>
    <td><a href="#list_for_scope"><CopyableCode code="list_for_scope" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a></td>
    <td></td>
    <td>Gets alert configurations for a resource scope.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-alertId"><code>alertId</code></a></td>
    <td></td>
    <td>Update an alert configuration.</td>
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
<tr id="parameter-alertId">
    <td><CopyableCode code="alertId" /></td>
    <td><code>string</code></td>
    <td>The name of the alert configuration to update.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope of the alert configuration.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_for_scope', value: 'list_for_scope' }
    ]}
>
<TabItem value="get">

Get the specified alert configuration.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.alert_configurations
WHERE scope = '{{ scope }}' -- required
AND alertId = '{{ alertId }}' -- required
;
```
</TabItem>
<TabItem value="list_for_scope">

Gets alert configurations for a resource scope.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.alert_configurations
WHERE scope = '{{ scope }}' -- required
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Update an alert configuration.

```sql
UPDATE azure.authorization.alert_configurations
SET 
data__properties = '{{ properties }}'
WHERE 
scope = '{{ scope }}' --required
AND alertId = '{{ alertId }}' --required;
```
</TabItem>
</Tabs>
