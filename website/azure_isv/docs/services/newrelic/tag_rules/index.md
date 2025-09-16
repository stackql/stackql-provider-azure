--- 
title: tag_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - tag_rules
  - newrelic
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>tag_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>tag_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.newrelic.tag_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_new_relic_monitor_resource', value: 'list_by_new_relic_monitor_resource' }
    ]}
>
<TabItem value="get">

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
<TabItem value="list_by_new_relic_monitor_resource">

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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-monitorName"><code>monitorName</code></a>, <a href="#parameter-ruleSetName"><code>ruleSetName</code></a></td>
    <td></td>
    <td>Get a TagRule</td>
</tr>
<tr>
    <td><a href="#list_by_new_relic_monitor_resource"><CopyableCode code="list_by_new_relic_monitor_resource" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-monitorName"><code>monitorName</code></a></td>
    <td></td>
    <td>List TagRule resources by NewRelicMonitorResource</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-monitorName"><code>monitorName</code></a>, <a href="#parameter-ruleSetName"><code>ruleSetName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create a TagRule</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-monitorName"><code>monitorName</code></a>, <a href="#parameter-ruleSetName"><code>ruleSetName</code></a></td>
    <td></td>
    <td>Update a TagRule</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-monitorName"><code>monitorName</code></a>, <a href="#parameter-ruleSetName"><code>ruleSetName</code></a></td>
    <td></td>
    <td>Delete a TagRule</td>
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
<tr id="parameter-monitorName">
    <td><CopyableCode code="monitorName" /></td>
    <td><code>string</code></td>
    <td>Name of the Monitors resource</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-ruleSetName">
    <td><CopyableCode code="ruleSetName" /></td>
    <td><code>string</code></td>
    <td>Name of the TagRule</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_new_relic_monitor_resource', value: 'list_by_new_relic_monitor_resource' }
    ]}
>
<TabItem value="get">

Get a TagRule

```sql
SELECT
properties
FROM azure_isv.newrelic.tag_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND monitorName = '{{ monitorName }}' -- required
AND ruleSetName = '{{ ruleSetName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_new_relic_monitor_resource">

List TagRule resources by NewRelicMonitorResource

```sql
SELECT
properties
FROM azure_isv.newrelic.tag_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND monitorName = '{{ monitorName }}' -- required
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

Create a TagRule

```sql
INSERT INTO azure_isv.newrelic.tag_rules (
data__properties,
subscriptionId,
resourceGroupName,
monitorName,
ruleSetName
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ monitorName }}',
'{{ ruleSetName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: tag_rules
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the tag_rules resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the tag_rules resource.
    - name: monitorName
      value: string
      description: Required parameter for the tag_rules resource.
    - name: ruleSetName
      value: string
      description: Required parameter for the tag_rules resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
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

Update a TagRule

```sql
UPDATE azure_isv.newrelic.tag_rules
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND monitorName = '{{ monitorName }}' --required
AND ruleSetName = '{{ ruleSetName }}' --required
RETURNING
properties;
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

Delete a TagRule

```sql
DELETE FROM azure_isv.newrelic.tag_rules
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND monitorName = '{{ monitorName }}' --required
AND ruleSetName = '{{ ruleSetName }}' --required
;
```
</TabItem>
</Tabs>
