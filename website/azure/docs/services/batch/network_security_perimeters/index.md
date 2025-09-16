--- 
title: network_security_perimeters
hide_title: false
hide_table_of_contents: false
keywords:
  - network_security_perimeters
  - batch
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

Creates, updates, deletes, gets or lists a <code>network_security_perimeters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>network_security_perimeters</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.batch.network_security_perimeters" /></td></tr>
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
    <td><a href="#reconcile_configuration"><CopyableCode code="reconcile_configuration" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-networkSecurityPerimeterConfigurationName"><code>networkSecurityPerimeterConfigurationName</code></a></td>
    <td></td>
    <td>Reconciles the specified NSP configuration.</td>
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
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>The name of the Batch account.</td>
</tr>
<tr id="parameter-networkSecurityPerimeterConfigurationName">
    <td><CopyableCode code="networkSecurityPerimeterConfigurationName" /></td>
    <td><code>string</code></td>
    <td>The name for Network Security Perimeter configuration</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the Batch account.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000)</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="reconcile_configuration"
    values={[
        { label: 'reconcile_configuration', value: 'reconcile_configuration' }
    ]}
>
<TabItem value="reconcile_configuration">

Reconciles the specified NSP configuration.

```sql
EXEC azure.batch.network_security_perimeters.reconcile_configuration 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@networkSecurityPerimeterConfigurationName='{{ networkSecurityPerimeterConfigurationName }}' --required
;
```
</TabItem>
</Tabs>
