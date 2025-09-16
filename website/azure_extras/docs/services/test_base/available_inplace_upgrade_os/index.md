--- 
title: available_inplace_upgrade_os
hide_title: false
hide_table_of_contents: false
keywords:
  - available_inplace_upgrade_os
  - test_base
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>available_inplace_upgrade_os</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>available_inplace_upgrade_os</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.available_inplace_upgrade_os" /></td></tr>
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

The operation is completed.

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
    <td>Available In-place Upgrade OS Map properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

The operation is completed.

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
    <td>Available In-place Upgrade OS Map properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-availableInplaceUpgradeOSResourceName"><code>availableInplaceUpgradeOSResourceName</code></a></td>
    <td></td>
    <td>Gets an available In-place Upgrade OS to run a package under a Test Base Account.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-osUpdateType"><code>osUpdateType</code></a></td>
    <td></td>
    <td>Lists all the available In-place Upgrade OSs to a package under a Test Base Account.</td>
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
<tr id="parameter-availableInplaceUpgradeOSResourceName">
    <td><CopyableCode code="availableInplaceUpgradeOSResourceName" /></td>
    <td><code>string</code></td>
    <td>The resource name of an Available In-place Upgrade OS.</td>
</tr>
<tr id="parameter-osUpdateType">
    <td><CopyableCode code="osUpdateType" /></td>
    <td><code>string</code></td>
    <td>The type of the OS Update.</td>
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
<tr id="parameter-testBaseAccountName">
    <td><CopyableCode code="testBaseAccountName" /></td>
    <td><code>string</code></td>
    <td>The resource name of the Test Base Account.</td>
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

Gets an available In-place Upgrade OS to run a package under a Test Base Account.

```sql
SELECT
properties
FROM azure_extras.test_base.available_inplace_upgrade_os
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND testBaseAccountName = '{{ testBaseAccountName }}' -- required
AND availableInplaceUpgradeOSResourceName = '{{ availableInplaceUpgradeOSResourceName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all the available In-place Upgrade OSs to a package under a Test Base Account.

```sql
SELECT
properties
FROM azure_extras.test_base.available_inplace_upgrade_os
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND testBaseAccountName = '{{ testBaseAccountName }}' -- required
AND osUpdateType = '{{ osUpdateType }}' -- required
;
```
</TabItem>
</Tabs>
