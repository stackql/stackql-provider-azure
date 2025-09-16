--- 
title: alerts_externals
hide_title: false
hide_table_of_contents: false
keywords:
  - alerts_externals
  - cost_management
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

Creates, updates, deletes, gets or lists an <code>alerts_externals</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>alerts_externals</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cost_management.alerts_externals" /></td></tr>
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

OK. The request has succeeded.

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
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="eTag" /></td>
    <td><code>string</code></td>
    <td>eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Alert properties. (title: Alert properties)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
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
    <td><a href="#parameter-externalCloudProviderType"><code>externalCloudProviderType</code></a>, <a href="#parameter-externalCloudProviderId"><code>externalCloudProviderId</code></a></td>
    <td></td>
    <td>Lists the Alerts for external cloud provider type defined.</td>
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
<tr id="parameter-externalCloudProviderId">
    <td><CopyableCode code="externalCloudProviderId" /></td>
    <td><code>string</code></td>
    <td>This can be '&#123;externalSubscriptionId&#125;' for linked account or '&#123;externalBillingAccountId&#125;' for consolidated account used with dimension/query operations.</td>
</tr>
<tr id="parameter-externalCloudProviderType">
    <td><CopyableCode code="externalCloudProviderType" /></td>
    <td><code>string</code></td>
    <td>The external cloud provider type associated with dimension/query operations. This includes 'externalSubscriptions' for linked account and 'externalBillingAccounts' for consolidated account.</td>
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

Lists the Alerts for external cloud provider type defined.

```sql
SELECT
id,
name,
eTag,
properties,
type
FROM azure.cost_management.alerts_externals
WHERE externalCloudProviderType = '{{ externalCloudProviderType }}' -- required
AND externalCloudProviderId = '{{ externalCloudProviderId }}' -- required
;
```
</TabItem>
</Tabs>
