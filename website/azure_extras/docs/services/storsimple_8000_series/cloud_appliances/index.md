--- 
title: cloud_appliances
hide_title: false
hide_table_of_contents: false
keywords:
  - cloud_appliances
  - storsimple_8000_series
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

Creates, updates, deletes, gets or lists a <code>cloud_appliances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>cloud_appliances</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_8000_series.cloud_appliances" /></td></tr>
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
    <td><a href="#provision"><CopyableCode code="provision" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managerName"><code>managerName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-vnetRegion"><code>vnetRegion</code></a></td>
    <td></td>
    <td>Provisions cloud appliance.</td>
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
<tr id="parameter-managerName">
    <td><CopyableCode code="managerName" /></td>
    <td><code>string</code></td>
    <td>The manager name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription id</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="provision"
    values={[
        { label: 'provision', value: 'provision' }
    ]}
>
<TabItem value="provision">

Provisions cloud appliance.

```sql
EXEC azure_extras.storsimple_8000_series.cloud_appliances.provision 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@managerName='{{ managerName }}' --required 
@@json=
'{
"name": "{{ name }}", 
"vnetName": "{{ vnetName }}", 
"vnetRegion": "{{ vnetRegion }}", 
"isVnetDnsConfigured": {{ isVnetDnsConfigured }}, 
"isVnetExpressConfigured": {{ isVnetExpressConfigured }}, 
"subnetName": "{{ subnetName }}", 
"storageAccountName": "{{ storageAccountName }}", 
"storageAccountType": "{{ storageAccountType }}", 
"vmType": "{{ vmType }}", 
"vmImageName": "{{ vmImageName }}", 
"modelNumber": "{{ modelNumber }}"
}'
;
```
</TabItem>
</Tabs>
