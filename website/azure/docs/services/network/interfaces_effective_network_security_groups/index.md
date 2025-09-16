--- 
title: interfaces_effective_network_security_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - interfaces_effective_network_security_groups
  - network
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

Creates, updates, deletes, gets or lists an <code>interfaces_effective_network_security_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>interfaces_effective_network_security_groups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.interfaces_effective_network_security_groups" /></td></tr>
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

Request successful. The operation returns a list of NetworkSecurityGroup resources.

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
    <td><CopyableCode code="association" /></td>
    <td><code>object</code></td>
    <td>Associated resources.</td>
</tr>
<tr>
    <td><CopyableCode code="effectiveSecurityRules" /></td>
    <td><code>array</code></td>
    <td>A collection of effective security rules.</td>
</tr>
<tr>
    <td><CopyableCode code="networkSecurityGroup" /></td>
    <td><code>object</code></td>
    <td>Reference to another subresource.</td>
</tr>
<tr>
    <td><CopyableCode code="tagMap" /></td>
    <td><code>string</code></td>
    <td>Mapping of tags to list of IP Addresses included within the tag.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkInterfaceName"><code>networkInterfaceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all network security groups applied to a network interface.</td>
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
<tr id="parameter-networkInterfaceName">
    <td><CopyableCode code="networkInterfaceName" /></td>
    <td><code>string</code></td>
    <td>The name of the network interface.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
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

Gets all network security groups applied to a network interface.

```sql
SELECT
association,
effectiveSecurityRules,
networkSecurityGroup,
tagMap
FROM azure.network.interfaces_effective_network_security_groups
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND networkInterfaceName = '{{ networkInterfaceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
