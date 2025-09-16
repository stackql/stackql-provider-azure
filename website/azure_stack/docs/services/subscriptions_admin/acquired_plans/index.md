--- 
title: acquired_plans
hide_title: false
hide_table_of_contents: false
keywords:
  - acquired_plans
  - subscriptions_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>acquired_plans</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>acquired_plans</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.subscriptions_admin.acquired_plans" /></td></tr>
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
    <td>Identifier in the tenant subscription context.</td>
</tr>
<tr>
    <td><CopyableCode code="acquisitionId" /></td>
    <td><code>string</code></td>
    <td>Acquisition identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="acquisitionTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Acquisition time.</td>
</tr>
<tr>
    <td><CopyableCode code="externalReferenceId" /></td>
    <td><code>string</code></td>
    <td>External reference identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="planId" /></td>
    <td><code>string</code></td>
    <td>Plan identifier in the tenant subscription context.</td>
</tr>
<tr>
    <td><CopyableCode code="provisioningState" /></td>
    <td><code>string</code></td>
    <td>State of the provisioning.</td>
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
    <td>Identifier in the tenant subscription context.</td>
</tr>
<tr>
    <td><CopyableCode code="acquisitionId" /></td>
    <td><code>string</code></td>
    <td>Acquisition identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="acquisitionTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Acquisition time.</td>
</tr>
<tr>
    <td><CopyableCode code="externalReferenceId" /></td>
    <td><code>string</code></td>
    <td>External reference identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="planId" /></td>
    <td><code>string</code></td>
    <td>Plan identifier in the tenant subscription context.</td>
</tr>
<tr>
    <td><CopyableCode code="provisioningState" /></td>
    <td><code>string</code></td>
    <td>State of the provisioning.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-targetSubscriptionId"><code>targetSubscriptionId</code></a>, <a href="#parameter-planAcquisitionId"><code>planAcquisitionId</code></a></td>
    <td></td>
    <td>Gets the specified plan acquired by a subscription consuming the offer.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-targetSubscriptionId"><code>targetSubscriptionId</code></a></td>
    <td></td>
    <td>Get a collection of all acquired plans that subscription has access to.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-targetSubscriptionId"><code>targetSubscriptionId</code></a>, <a href="#parameter-planAcquisitionId"><code>planAcquisitionId</code></a></td>
    <td></td>
    <td>Creates an acquired plan.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-targetSubscriptionId"><code>targetSubscriptionId</code></a>, <a href="#parameter-planAcquisitionId"><code>planAcquisitionId</code></a></td>
    <td></td>
    <td>Deletes an acquired plan.</td>
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
<tr id="parameter-planAcquisitionId">
    <td><CopyableCode code="planAcquisitionId" /></td>
    <td><code>string</code></td>
    <td>The plan acquisition Identifier</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription.The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-targetSubscriptionId">
    <td><CopyableCode code="targetSubscriptionId" /></td>
    <td><code>string</code></td>
    <td>The target subscription ID.</td>
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

Gets the specified plan acquired by a subscription consuming the offer.

```sql
SELECT
id,
acquisitionId,
acquisitionTime,
externalReferenceId,
planId,
provisioningState
FROM azure_stack.subscriptions_admin.acquired_plans
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND targetSubscriptionId = '{{ targetSubscriptionId }}' -- required
AND planAcquisitionId = '{{ planAcquisitionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get a collection of all acquired plans that subscription has access to.

```sql
SELECT
id,
acquisitionId,
acquisitionTime,
externalReferenceId,
planId,
provisioningState
FROM azure_stack.subscriptions_admin.acquired_plans
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND targetSubscriptionId = '{{ targetSubscriptionId }}' -- required
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

Creates an acquired plan.

```sql
INSERT INTO azure_stack.subscriptions_admin.acquired_plans (
data__acquisitionId,
data__id,
data__planId,
data__externalReferenceId,
data__provisioningState,
data__acquisitionTime,
subscriptionId,
targetSubscriptionId,
planAcquisitionId
)
SELECT 
'{{ acquisitionId }}',
'{{ id }}',
'{{ planId }}',
'{{ externalReferenceId }}',
'{{ provisioningState }}',
'{{ acquisitionTime }}',
'{{ subscriptionId }}',
'{{ targetSubscriptionId }}',
'{{ planAcquisitionId }}'
RETURNING
id,
acquisitionId,
acquisitionTime,
externalReferenceId,
planId,
provisioningState
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: acquired_plans
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the acquired_plans resource.
    - name: targetSubscriptionId
      value: string
      description: Required parameter for the acquired_plans resource.
    - name: planAcquisitionId
      value: string
      description: Required parameter for the acquired_plans resource.
    - name: acquisitionId
      value: string
      description: |
        Acquisition identifier.
    - name: id
      value: string
      description: |
        Identifier in the tenant subscription context.
    - name: planId
      value: string
      description: |
        Plan identifier in the tenant subscription context.
    - name: externalReferenceId
      value: string
      description: |
        External reference identifier.
    - name: provisioningState
      value: string
      description: |
        State of the provisioning.
      valid_values: ['NotSpecified', 'Accepted', 'Failed', 'Succeeded']
    - name: acquisitionTime
      value: string
      description: |
        Acquisition time.
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

Deletes an acquired plan.

```sql
DELETE FROM azure_stack.subscriptions_admin.acquired_plans
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND targetSubscriptionId = '{{ targetSubscriptionId }}' --required
AND planAcquisitionId = '{{ planAcquisitionId }}' --required
;
```
</TabItem>
</Tabs>
