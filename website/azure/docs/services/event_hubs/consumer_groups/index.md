--- 
title: consumer_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - consumer_groups
  - event_hubs
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

Creates, updates, deletes, gets or lists a <code>consumer_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>consumer_groups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.event_hubs.consumer_groups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_event_hub', value: 'list_by_event_hub' }
    ]}
>
<TabItem value="get">

Successfully retrieved the consumer group description.

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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code></code></td>
    <td>Single item in List or Get Consumer group operation</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_event_hub">

Successfully retrieved the list of consumer groups.

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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code></code></td>
    <td>Single item in List or Get Consumer group operation</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-namespaceName"><code>namespaceName</code></a>, <a href="#parameter-eventHubName"><code>eventHubName</code></a>, <a href="#parameter-consumerGroupName"><code>consumerGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a description for the specified consumer group.</td>
</tr>
<tr>
    <td><a href="#list_by_event_hub"><CopyableCode code="list_by_event_hub" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-namespaceName"><code>namespaceName</code></a>, <a href="#parameter-eventHubName"><code>eventHubName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$skip"><code>$skip</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>Gets all the consumer groups in a Namespace. An empty feed is returned if no consumer group exists in the Namespace.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-namespaceName"><code>namespaceName</code></a>, <a href="#parameter-eventHubName"><code>eventHubName</code></a>, <a href="#parameter-consumerGroupName"><code>consumerGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates an Event Hubs consumer group as a nested resource within a Namespace.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-namespaceName"><code>namespaceName</code></a>, <a href="#parameter-eventHubName"><code>eventHubName</code></a>, <a href="#parameter-consumerGroupName"><code>consumerGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes a consumer group from the specified Event Hub and resource group.</td>
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
<tr id="parameter-consumerGroupName">
    <td><CopyableCode code="consumerGroupName" /></td>
    <td><code>string</code></td>
    <td>The consumer group name</td>
</tr>
<tr id="parameter-eventHubName">
    <td><CopyableCode code="eventHubName" /></td>
    <td><code>string</code></td>
    <td>The Event Hub name</td>
</tr>
<tr id="parameter-namespaceName">
    <td><CopyableCode code="namespaceName" /></td>
    <td><code>string</code></td>
    <td>The Namespace name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group within the azure subscription.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
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
        { label: 'list_by_event_hub', value: 'list_by_event_hub' }
    ]}
>
<TabItem value="get">

Gets a description for the specified consumer group.

```sql
SELECT
id,
name,
location,
properties,
systemData,
type
FROM azure.event_hubs.consumer_groups
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND namespaceName = '{{ namespaceName }}' -- required
AND eventHubName = '{{ eventHubName }}' -- required
AND consumerGroupName = '{{ consumerGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_event_hub">

Gets all the consumer groups in a Namespace. An empty feed is returned if no consumer group exists in the Namespace.

```sql
SELECT
id,
name,
location,
properties,
systemData,
type
FROM azure.event_hubs.consumer_groups
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND namespaceName = '{{ namespaceName }}' -- required
AND eventHubName = '{{ eventHubName }}' -- required
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

Creates or updates an Event Hubs consumer group as a nested resource within a Namespace.

```sql
INSERT INTO azure.event_hubs.consumer_groups (
data__properties,
resourceGroupName,
namespaceName,
eventHubName,
consumerGroupName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ namespaceName }}',
'{{ eventHubName }}',
'{{ consumerGroupName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
location,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: consumer_groups
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the consumer_groups resource.
    - name: namespaceName
      value: string
      description: Required parameter for the consumer_groups resource.
    - name: eventHubName
      value: string
      description: Required parameter for the consumer_groups resource.
    - name: consumerGroupName
      value: string
      description: Required parameter for the consumer_groups resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the consumer_groups resource.
    - name: properties
      value: string
      description: |
        Single item in List or Get Consumer group operation
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

Deletes a consumer group from the specified Event Hub and resource group.

```sql
DELETE FROM azure.event_hubs.consumer_groups
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND namespaceName = '{{ namespaceName }}' --required
AND eventHubName = '{{ eventHubName }}' --required
AND consumerGroupName = '{{ consumerGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
