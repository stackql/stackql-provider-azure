--- 
title: firewalls_support_info
hide_title: false
hide_table_of_contents: false
keywords:
  - firewalls_support_info
  - paloalto
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

Creates, updates, deletes, gets or lists a <code>firewalls_support_info</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>firewalls_support_info</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.paloalto.firewalls_support_info" /></td></tr>
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

The request has succeeded.

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
    <td><CopyableCode code="accountId" /></td>
    <td><code>string</code></td>
    <td>Support account associated with given resource</td>
</tr>
<tr>
    <td><CopyableCode code="accountRegistered" /></td>
    <td><code>string</code></td>
    <td>account registered in Customer Support Portal</td>
</tr>
<tr>
    <td><CopyableCode code="freeTrial" /></td>
    <td><code>string</code></td>
    <td>Product usage is in free trial period</td>
</tr>
<tr>
    <td><CopyableCode code="freeTrialCreditLeft" /></td>
    <td><code>integer (int32)</code></td>
    <td>Free trial credit remaining</td>
</tr>
<tr>
    <td><CopyableCode code="freeTrialDaysLeft" /></td>
    <td><code>integer (int32)</code></td>
    <td>Free trial days remaining</td>
</tr>
<tr>
    <td><CopyableCode code="helpURL" /></td>
    <td><code>string</code></td>
    <td>URL for paloaltonetworks live community</td>
</tr>
<tr>
    <td><CopyableCode code="productSerial" /></td>
    <td><code>string</code></td>
    <td>product Serial associated with given resource</td>
</tr>
<tr>
    <td><CopyableCode code="productSku" /></td>
    <td><code>string</code></td>
    <td>product SKU associated with given resource</td>
</tr>
<tr>
    <td><CopyableCode code="registerURL" /></td>
    <td><code>string</code></td>
    <td>URL for registering product in paloaltonetworks Customer Service Portal</td>
</tr>
<tr>
    <td><CopyableCode code="supportURL" /></td>
    <td><code>string</code></td>
    <td>URL for paloaltonetworks Customer Service Portal</td>
</tr>
<tr>
    <td><CopyableCode code="userDomainSupported" /></td>
    <td><code>string</code></td>
    <td>user domain is supported in Customer Support Portal</td>
</tr>
<tr>
    <td><CopyableCode code="userRegistered" /></td>
    <td><code>string</code></td>
    <td>user registered in Customer Support Portal</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-firewallName"><code>firewallName</code></a></td>
    <td><a href="#parameter-email"><code>email</code></a></td>
    <td>support info for firewall.</td>
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
<tr id="parameter-firewallName">
    <td><CopyableCode code="firewallName" /></td>
    <td><code>string</code></td>
    <td>Firewall resource name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-email">
    <td><CopyableCode code="email" /></td>
    <td><code>string</code></td>
    <td>email address on behalf of which this API called</td>
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

support info for firewall.

```sql
SELECT
accountId,
accountRegistered,
freeTrial,
freeTrialCreditLeft,
freeTrialDaysLeft,
helpURL,
productSerial,
productSku,
registerURL,
supportURL,
userDomainSupported,
userRegistered
FROM azure_isv.paloalto.firewalls_support_info
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND firewallName = '{{ firewallName }}' -- required
AND email = '{{ email }}'
;
```
</TabItem>
</Tabs>
