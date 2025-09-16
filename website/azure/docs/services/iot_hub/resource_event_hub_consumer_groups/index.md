--- 
title: resource_event_hub_consumer_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - resource_event_hub_consumer_groups
  - iot_hub
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

Creates, updates, deletes, gets or lists a <code>resource_event_hub_consumer_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>resource_event_hub_consumer_groups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_hub.resource_event_hub_consumer_groups" /></td></tr>
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

This is a synchronous operation. The body contains a JSON-serialized consumer group.

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
    <td>The Event Hub-compatible consumer group identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The Event Hub-compatible consumer group name.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>The etag.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>the resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

This is a synchronous operation. The body contains a JSON-serialized list of the consumer groups in the Event Hub-compatible endpoint in this IoT hub

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
    <td>The Event Hub-compatible consumer group identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The Event Hub-compatible consumer group name.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>The etag.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>the resource type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-eventHubEndpointName"><code>eventHubEndpointName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get a consumer group from the Event Hub-compatible device-to-cloud endpoint for an IoT hub.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-eventHubEndpointName"><code>eventHubEndpointName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get a list of the consumer groups in the Event Hub-compatible device-to-cloud endpoint in an IoT hub.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-eventHubEndpointName"><code>eventHubEndpointName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Add a consumer group to an Event Hub-compatible endpoint in an IoT hub.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-eventHubEndpointName"><code>eventHubEndpointName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Delete a consumer group from an Event Hub-compatible endpoint in an IoT hub.</td>
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
<tr id="parameter-eventHubEndpointName">
    <td><CopyableCode code="eventHubEndpointName" /></td>
    <td><code>string</code></td>
    <td>The name of the Event Hub-compatible endpoint in the IoT hub.</td>
</tr>
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the consumer group to delete.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the IoT hub.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the IoT hub.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription identifier.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The version of the API.</td>
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

Get a consumer group from the Event Hub-compatible device-to-cloud endpoint for an IoT hub.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.iot_hub.resource_event_hub_consumer_groups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND eventHubEndpointName = '{{ eventHubEndpointName }}' -- required
AND name = '{{ name }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Get a list of the consumer groups in the Event Hub-compatible device-to-cloud endpoint in an IoT hub.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.iot_hub.resource_event_hub_consumer_groups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND eventHubEndpointName = '{{ eventHubEndpointName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Add a consumer group to an Event Hub-compatible endpoint in an IoT hub.

```sql
INSERT INTO azure.iot_hub.resource_event_hub_consumer_groups (
data__properties,
subscriptionId,
resourceGroupName,
resourceName,
eventHubEndpointName,
name,
api-version
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ resourceName }}',
'{{ eventHubEndpointName }}',
'{{ name }}',
'{{ api-version }}'
RETURNING
id,
name,
etag,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: resource_event_hub_consumer_groups
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the resource_event_hub_consumer_groups resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the resource_event_hub_consumer_groups resource.
    - name: resourceName
      value: string
      description: Required parameter for the resource_event_hub_consumer_groups resource.
    - name: eventHubEndpointName
      value: string
      description: Required parameter for the resource_event_hub_consumer_groups resource.
    - name: name
      value: string
      description: Required parameter for the resource_event_hub_consumer_groups resource.
    - name: properties
      value: object
      description: |
        The EventHub consumer group name.
    - name: api-version
      value: string
      description: The version of the API.
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

Delete a consumer group from an Event Hub-compatible endpoint in an IoT hub.

```sql
DELETE FROM azure.iot_hub.resource_event_hub_consumer_groups
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND resourceName = '{{ resourceName }}' --required
AND eventHubEndpointName = '{{ eventHubEndpointName }}' --required
AND name = '{{ name }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
