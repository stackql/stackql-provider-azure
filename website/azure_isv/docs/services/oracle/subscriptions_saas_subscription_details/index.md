--- 
title: subscriptions_saas_subscription_details
hide_title: false
hide_table_of_contents: false
keywords:
  - subscriptions_saas_subscription_details
  - oracle
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

Creates, updates, deletes, gets or lists a <code>subscriptions_saas_subscription_details</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>subscriptions_saas_subscription_details</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.oracle.subscriptions_saas_subscription_details" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Purchased SaaS subscription ID</td>
</tr>
<tr>
    <td><CopyableCode code="isAutoRenew" /></td>
    <td><code>boolean</code></td>
    <td>AutoRenew flag</td>
</tr>
<tr>
    <td><CopyableCode code="isFreeTrial" /></td>
    <td><code>boolean</code></td>
    <td>FreeTrial flag</td>
</tr>
<tr>
    <td><CopyableCode code="offerId" /></td>
    <td><code>string</code></td>
    <td>Purchased offer ID</td>
</tr>
<tr>
    <td><CopyableCode code="planId" /></td>
    <td><code>string</code></td>
    <td>Purchased offer's plan ID</td>
</tr>
<tr>
    <td><CopyableCode code="publisherId" /></td>
    <td><code>string</code></td>
    <td>Publisher ID</td>
</tr>
<tr>
    <td><CopyableCode code="purchaserEmailId" /></td>
    <td><code>string</code></td>
    <td>Purchaser Email ID</td>
</tr>
<tr>
    <td><CopyableCode code="purchaserTenantId" /></td>
    <td><code>string</code></td>
    <td>Purchaser Tenant ID</td>
</tr>
<tr>
    <td><CopyableCode code="saasSubscriptionStatus" /></td>
    <td><code>string</code></td>
    <td>Indicates the status of the Subscription.</td>
</tr>
<tr>
    <td><CopyableCode code="subscriptionName" /></td>
    <td><code>string</code></td>
    <td>SaaS subscription name</td>
</tr>
<tr>
    <td><CopyableCode code="termUnit" /></td>
    <td><code>string</code></td>
    <td>Purchase Term Unit</td>
</tr>
<tr>
    <td><CopyableCode code="timeCreated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Creation Date and Time</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>List Saas Subscription Details</td>
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
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

List Saas Subscription Details

```sql
SELECT
id,
isAutoRenew,
isFreeTrial,
offerId,
planId,
publisherId,
purchaserEmailId,
purchaserTenantId,
saasSubscriptionStatus,
subscriptionName,
termUnit,
timeCreated
FROM azure_isv.oracle.subscriptions_saas_subscription_details
WHERE subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
