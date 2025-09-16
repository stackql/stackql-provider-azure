--- 
title: subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - subscriptions
  - service_bus
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

Creates, updates, deletes, gets or lists a <code>subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_bus.subscriptions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_topic', value: 'list_by_topic' }
    ]}
>
<TabItem value="get">

Successfully retrieved subscription description.

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
    <td>Properties of subscriptions resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_topic">

Successfully retrieved list of subscriptions.

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
    <td>Properties of subscriptions resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-namespaceName"><code>namespaceName</code></a>, <a href="#parameter-topicName"><code>topicName</code></a>, <a href="#parameter-subscriptionName"><code>subscriptionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns a subscription description for the specified topic.</td>
</tr>
<tr>
    <td><a href="#list_by_topic"><CopyableCode code="list_by_topic" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-namespaceName"><code>namespaceName</code></a>, <a href="#parameter-topicName"><code>topicName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$skip"><code>$skip</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>List all the subscriptions under a specified topic.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-namespaceName"><code>namespaceName</code></a>, <a href="#parameter-topicName"><code>topicName</code></a>, <a href="#parameter-subscriptionName"><code>subscriptionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates a topic subscription.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-namespaceName"><code>namespaceName</code></a>, <a href="#parameter-topicName"><code>topicName</code></a>, <a href="#parameter-subscriptionName"><code>subscriptionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes a subscription from the specified topic.</td>
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
<tr id="parameter-namespaceName">
    <td><CopyableCode code="namespaceName" /></td>
    <td><code>string</code></td>
    <td>The namespace name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-subscriptionName">
    <td><CopyableCode code="subscriptionName" /></td>
    <td><code>string</code></td>
    <td>The subscription name.</td>
</tr>
<tr id="parameter-topicName">
    <td><CopyableCode code="topicName" /></td>
    <td><code>string</code></td>
    <td>The topic name.</td>
</tr>
<tr id="parameter-$skip">
    <td><CopyableCode code="$skip" /></td>
    <td><code>integer</code></td>
    <td>Skip is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skip parameter that specifies a starting point to use for subsequent calls.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer</code></td>
    <td>May be used to limit the number of results to the most recent N usageDetails.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_topic', value: 'list_by_topic' }
    ]}
>
<TabItem value="get">

Returns a subscription description for the specified topic.

```sql
SELECT
properties,
systemData
FROM azure.service_bus.subscriptions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND namespaceName = '{{ namespaceName }}' -- required
AND topicName = '{{ topicName }}' -- required
AND subscriptionName = '{{ subscriptionName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_topic">

List all the subscriptions under a specified topic.

```sql
SELECT
properties,
systemData
FROM azure.service_bus.subscriptions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND namespaceName = '{{ namespaceName }}' -- required
AND topicName = '{{ topicName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $skip = '{{ $skip }}'
AND $top = '{{ $top }}'
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

Creates a topic subscription.

```sql
INSERT INTO azure.service_bus.subscriptions (
data__properties,
resourceGroupName,
namespaceName,
topicName,
subscriptionName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ namespaceName }}',
'{{ topicName }}',
'{{ subscriptionName }}',
'{{ subscriptionId }}'
RETURNING
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: subscriptions
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the subscriptions resource.
    - name: namespaceName
      value: string
      description: Required parameter for the subscriptions resource.
    - name: topicName
      value: string
      description: Required parameter for the subscriptions resource.
    - name: subscriptionName
      value: string
      description: Required parameter for the subscriptions resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the subscriptions resource.
    - name: properties
      value: object
      description: |
        Properties of subscriptions resource.
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

Deletes a subscription from the specified topic.

```sql
DELETE FROM azure.service_bus.subscriptions
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND namespaceName = '{{ namespaceName }}' --required
AND topicName = '{{ topicName }}' --required
AND subscriptionName = '{{ subscriptionName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
