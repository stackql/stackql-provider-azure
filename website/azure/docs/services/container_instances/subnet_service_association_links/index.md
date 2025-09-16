--- 
title: subnet_service_association_links
hide_title: false
hide_table_of_contents: false
keywords:
  - subnet_service_association_links
  - container_instances
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

Creates, updates, deletes, gets or lists a <code>subnet_service_association_links</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>subnet_service_association_links</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_instances.subnet_service_association_links" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkName"><code>virtualNetworkName</code></a>, <a href="#parameter-subnetName"><code>subnetName</code></a></td>
    <td></td>
    <td>Delete container group virtual network association links. The operation does not delete other resources provided by the user.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subnetName">
    <td><CopyableCode code="subnetName" /></td>
    <td><code>string</code></td>
    <td>The name of the subnet.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-virtualNetworkName">
    <td><CopyableCode code="virtualNetworkName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual network.</td>
</tr>
</tbody>
</table>

## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Delete container group virtual network association links. The operation does not delete other resources provided by the user.

```sql
DELETE FROM azure.container_instances.subnet_service_association_links
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND virtualNetworkName = '{{ virtualNetworkName }}' --required
AND subnetName = '{{ subnetName }}' --required
;
```
</TabItem>
</Tabs>
