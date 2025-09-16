--- 
title: alert_rule_recommendations
hide_title: false
hide_table_of_contents: false
keywords:
  - alert_rule_recommendations
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

Creates, updates, deletes, gets or lists an <code>alert_rule_recommendations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>alert_rule_recommendations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.alerts_management.alert_rule_recommendations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_resource"
    values={[
        { label: 'list_by_resource', value: 'list_by_resource' },
        { label: 'list_by_target_type', value: 'list_by_target_type' }
    ]}
>
<TabItem value="list_by_resource">

Successful request for a list of alert rule recommendations

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
    <td>recommendation properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_target_type">

Successful request for a list of alert rule recommendations

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
    <td>recommendation properties.</td>
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
    <td><a href="#list_by_resource"><CopyableCode code="list_by_resource" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td>Retrieve alert rule recommendations for a resource.</td>
</tr>
<tr>
    <td><a href="#list_by_target_type"><CopyableCode code="list_by_target_type" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-targetType"><code>targetType</code></a></td>
    <td></td>
    <td>Retrieve alert rule recommendations for a target type.</td>
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
<tr id="parameter-resourceUri">
    <td><CopyableCode code="resourceUri" /></td>
    <td><code>string</code></td>
    <td>The identifier of the resource.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-targetType">
    <td><CopyableCode code="targetType" /></td>
    <td><code>string</code></td>
    <td>The recommendations target type.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_resource"
    values={[
        { label: 'list_by_resource', value: 'list_by_resource' },
        { label: 'list_by_target_type', value: 'list_by_target_type' }
    ]}
>
<TabItem value="list_by_resource">

Retrieve alert rule recommendations for a resource.

```sql
SELECT
properties
FROM azure.alerts_management.alert_rule_recommendations
WHERE resourceUri = '{{ resourceUri }}' -- required
;
```
</TabItem>
<TabItem value="list_by_target_type">

Retrieve alert rule recommendations for a target type.

```sql
SELECT
properties
FROM azure.alerts_management.alert_rule_recommendations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND targetType = '{{ targetType }}' -- required
;
```
</TabItem>
</Tabs>
