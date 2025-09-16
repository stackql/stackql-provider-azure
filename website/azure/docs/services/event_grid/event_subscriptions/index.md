--- 
title: event_subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - event_subscriptions
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

Creates, updates, deletes, gets or lists an <code>event_subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>event_subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.event_grid.event_subscriptions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_resource"
    values={[
        { label: 'list_by_resource', value: 'list_by_resource' },
        { label: 'list_by_domain_topic', value: 'list_by_domain_topic' },
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="list_by_resource">

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
<TabItem value="list_by_domain_topic">

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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-providerNamespace"><code>providerNamespace</code></a>, <a href="#parameter-resourceTypeName"><code>resourceTypeName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>List all event subscriptions that have been created for a specific resource.</td>
</tr>
<tr>
    <td><a href="#list_by_domain_topic"><CopyableCode code="list_by_domain_topic" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-domainName"><code>domainName</code></a>, <a href="#parameter-topicName"><code>topicName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>List all event subscriptions that have been created for a specific domain topic.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-eventSubscriptionName"><code>eventSubscriptionName</code></a></td>
    <td></td>
    <td>Get properties of an event subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-eventSubscriptionName"><code>eventSubscriptionName</code></a></td>
    <td></td>
    <td>Asynchronously creates a new event subscription or updates an existing event subscription based on the specified scope.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-eventSubscriptionName"><code>eventSubscriptionName</code></a></td>
    <td></td>
    <td>Asynchronously updates an existing event subscription.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-eventSubscriptionName"><code>eventSubscriptionName</code></a></td>
    <td></td>
    <td>Delete an existing event subscription.</td>
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
<tr id="parameter-providerNamespace">
    <td><CopyableCode code="providerNamespace" /></td>
    <td><code>string</code></td>
    <td>Namespace of the provider of the topic.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group within the user's subscription.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource.</td>
</tr>
<tr id="parameter-resourceTypeName">
    <td><CopyableCode code="resourceTypeName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource type.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope of the event subscription. The scope can be a subscription, or a resource group, or a top level resource belonging to a resource provider namespace, or an EventGrid topic. For example, use '/subscriptions/&#123;subscriptionId&#125;/' for a subscription, '/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;' for a resource group, and '/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;' for a resource, and '/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/Microsoft.EventGrid/topics/&#123;topicName&#125;' for an EventGrid topic.</td>
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
    defaultValue="list_by_resource"
    values={[
        { label: 'list_by_resource', value: 'list_by_resource' },
        { label: 'list_by_domain_topic', value: 'list_by_domain_topic' },
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="list_by_resource">

List all event subscriptions that have been created for a specific resource.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.event_grid.event_subscriptions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND providerNamespace = '{{ providerNamespace }}' -- required
AND resourceTypeName = '{{ resourceTypeName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
;
```
</TabItem>
<TabItem value="list_by_domain_topic">

List all event subscriptions that have been created for a specific domain topic.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.event_grid.event_subscriptions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND domainName = '{{ domainName }}' -- required
AND topicName = '{{ topicName }}' -- required
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
;
```
</TabItem>
<TabItem value="get">

Get properties of an event subscription.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.event_grid.event_subscriptions
WHERE scope = '{{ scope }}' -- required
AND eventSubscriptionName = '{{ eventSubscriptionName }}' -- required
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

Asynchronously creates a new event subscription or updates an existing event subscription based on the specified scope.

```sql
INSERT INTO azure.event_grid.event_subscriptions (
data__properties,
scope,
eventSubscriptionName
)
SELECT 
'{{ properties }}',
'{{ scope }}',
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
- name: event_subscriptions
  props:
    - name: scope
      value: string
      description: Required parameter for the event_subscriptions resource.
    - name: eventSubscriptionName
      value: string
      description: Required parameter for the event_subscriptions resource.
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

Asynchronously updates an existing event subscription.

```sql
UPDATE azure.event_grid.event_subscriptions
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
scope = '{{ scope }}' --required
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

Delete an existing event subscription.

```sql
DELETE FROM azure.event_grid.event_subscriptions
WHERE scope = '{{ scope }}' --required
AND eventSubscriptionName = '{{ eventSubscriptionName }}' --required
;
```
</TabItem>
</Tabs>
