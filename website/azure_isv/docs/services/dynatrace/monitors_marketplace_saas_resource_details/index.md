--- 
title: monitors_marketplace_saas_resource_details
hide_title: false
hide_table_of_contents: false
keywords:
  - monitors_marketplace_saas_resource_details
  - dynatrace
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

Creates, updates, deletes, gets or lists a <code>monitors_marketplace_saas_resource_details</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>monitors_marketplace_saas_resource_details</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.dynatrace.monitors_marketplace_saas_resource_details" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
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
    <td><CopyableCode code="marketplaceSaaSResourceId" /></td>
    <td><code>string</code></td>
    <td>Id of the Marketplace SaaS Resource</td>
</tr>
<tr>
    <td><CopyableCode code="marketplaceSubscriptionStatus" /></td>
    <td><code>string</code></td>
    <td>Marketplace subscription status</td>
</tr>
<tr>
    <td><CopyableCode code="planId" /></td>
    <td><code>string</code></td>
    <td>Id of the plan</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get Marketplace SaaS resource details of a tenant under a specific subscription</td>
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
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Get Marketplace SaaS resource details of a tenant under a specific subscription

```sql
SELECT
marketplaceSaaSResourceId,
marketplaceSubscriptionStatus,
planId
FROM azure_isv.dynatrace.monitors_marketplace_saas_resource_details
WHERE subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
