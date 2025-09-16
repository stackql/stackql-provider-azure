--- 
title: domain_topic_event_subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - domain_topic_event_subscriptions
  - event_grid
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

Creates, updates, deletes, gets or lists a <code>domain_topic_event_subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>domain_topic_event_subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.event_grid.domain_topic_event_subscriptions" /></td></tr>
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Fully qualified identifier of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the event subscription.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system metadata relating to Event Subscription resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the resource.</td>
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Fully qualified identifier of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the event subscription.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system metadata relating to Event Subscription resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-domainName"><code>domainName</code></a>, <a href="#parameter-topicName"><code>topicName</code></a>, <a href="#parameter-eventSubscriptionName"><code>eventSubscriptionName</code></a></td>
    <td></td>
    <td>Get properties of a nested event subscription for a domain topic.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-domainName"><code>domainName</code></a>, <a href="#parameter-topicName"><code>topicName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>List all event subscriptions that have been created for a specific domain topic.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-domainName"><code>domainName</code></a>, <a href="#parameter-topicName"><code>topicName</code></a>, <a href="#parameter-eventSubscriptionName"><code>eventSubscriptionName</code></a></td>
    <td></td>
    <td>Asynchronously creates a new event subscription or updates an existing event subscription.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-domainName"><code>domainName</code></a>, <a href="#parameter-topicName"><code>topicName</code></a>, <a href="#parameter-eventSubscriptionName"><code>eventSubscriptionName</code></a></td>
    <td></td>
    <td>Update an existing event subscription for a domain topic.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-domainName"><code>domainName</code></a>, <a href="#parameter-topicName"><code>topicName</code></a>, <a href="#parameter-eventSubscriptionName"><code>eventSubscriptionName</code></a></td>
    <td></td>
    <td>Delete a nested existing event subscription for a domain topic.</td>
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
<tr id="parameter-domainName">
    <td><CopyableCode code="domainName" /></td>
    <td><code>string</code></td>
    <td>Name of the top level domain.</td>
</tr>
<tr id="parameter-eventSubscriptionName">
    <td><CopyableCode code="eventSubscriptionName" /></td>
    <td><code>string</code></td>
    <td>Name of the event subscription to be deleted.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group within the user's subscription.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-topicName">
    <td><CopyableCode code="topicName" /></td>
    <td><code>string</code></td>
    <td>Name of the domain topic.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The query used to filter the search results using OData syntax. Filtering is permitted on the 'name' property only and with limited number of OData operations. These operations are: the 'contains' function as well as the following logical operations: not, and, or, eq (for equal), and ne (for not equal). No arithmetic operations are supported. The following is a valid filter example: $filter=contains(namE, 'PATTERN') and name ne 'PATTERN-1'. The following is not a valid filter example: $filter=location eq 'westus'.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of results to return per page for the list operation. Valid range for top parameter is 1 to 100. If not specified, the default number of results to be returned is 20 items per page.</td>
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

Get properties of a nested event subscription for a domain topic.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.event_grid.domain_topic_event_subscriptions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND domainName = '{{ domainName }}' -- required
AND topicName = '{{ topicName }}' -- required
AND eventSubscriptionName = '{{ eventSubscriptionName }}' -- required
;
```
</TabItem>
<TabItem value="list">

List all event subscriptions that have been created for a specific domain topic.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.event_grid.domain_topic_event_subscriptions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND domainName = '{{ domainName }}' -- required
AND topicName = '{{ topicName }}' -- required
AND $filter = '{{ $filter }}'
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

Asynchronously creates a new event subscription or updates an existing event subscription.

```sql
INSERT INTO azure.event_grid.domain_topic_event_subscriptions (
data__properties,
subscriptionId,
resourceGroupName,
domainName,
topicName,
eventSubscriptionName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ domainName }}',
'{{ topicName }}',
'{{ eventSubscriptionName }}'
RETURNING
id,
name,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: domain_topic_event_subscriptions
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the domain_topic_event_subscriptions resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the domain_topic_event_subscriptions resource.
    - name: domainName
      value: string
      description: Required parameter for the domain_topic_event_subscriptions resource.
    - name: topicName
      value: string
      description: Required parameter for the domain_topic_event_subscriptions resource.
    - name: eventSubscriptionName
      value: string
      description: Required parameter for the domain_topic_event_subscriptions resource.
    - name: properties
      value: object
      description: |
        Properties of the event subscription.
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

Update an existing event subscription for a domain topic.

```sql
UPDATE azure.event_grid.domain_topic_event_subscriptions
SET 
data__destination = '{{ destination }}',
data__deliveryWithResourceIdentity = '{{ deliveryWithResourceIdentity }}',
data__filter = '{{ filter }}',
data__labels = '{{ labels }}',
data__expirationTimeUtc = '{{ expirationTimeUtc }}',
data__eventDeliverySchema = '{{ eventDeliverySchema }}',
data__retryPolicy = '{{ retryPolicy }}',
data__deadLetterDestination = '{{ deadLetterDestination }}',
data__deadLetterWithResourceIdentity = '{{ deadLetterWithResourceIdentity }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND domainName = '{{ domainName }}' --required
AND topicName = '{{ topicName }}' --required
AND eventSubscriptionName = '{{ eventSubscriptionName }}' --required
RETURNING
id,
name,
properties,
systemData,
type;
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

Delete a nested existing event subscription for a domain topic.

```sql
DELETE FROM azure.event_grid.domain_topic_event_subscriptions
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND domainName = '{{ domainName }}' --required
AND topicName = '{{ topicName }}' --required
AND eventSubscriptionName = '{{ eventSubscriptionName }}' --required
;
```
</TabItem>
</Tabs>
