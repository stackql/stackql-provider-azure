--- 
title: services
hide_title: false
hide_table_of_contents: false
keywords:
  - services
  - data_box
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

Creates, updates, deletes, gets or lists a <code>services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>services</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_box.services" /></td></tr>
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
    <td><a href="#validate_address"><CopyableCode code="validate_address" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-shippingAddress"><code>shippingAddress</code></a>, <a href="#parameter-deviceType"><code>deviceType</code></a>, <a href="#parameter-validationType"><code>validationType</code></a></td>
    <td></td>
    <td>[DEPRECATED NOTICE: This operation will soon be removed]. This method validates the customer shipping address and provide alternate addresses if any.</td>
</tr>
<tr>
    <td><a href="#validate_inputs_by_resource_group"><CopyableCode code="validate_inputs_by_resource_group" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-validationCategory"><code>validationCategory</code></a>, <a href="#parameter-individualRequestDetails"><code>individualRequestDetails</code></a></td>
    <td></td>
    <td>This method does all necessary pre-job creation validation under resource group.</td>
</tr>
<tr>
    <td><a href="#validate_inputs"><CopyableCode code="validate_inputs" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-validationCategory"><code>validationCategory</code></a>, <a href="#parameter-individualRequestDetails"><code>individualRequestDetails</code></a></td>
    <td></td>
    <td>This method does all necessary pre-job creation validation under subscription.</td>
</tr>
<tr>
    <td><a href="#region_configuration"><CopyableCode code="region_configuration" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td></td>
    <td>This API provides configuration details specific to given region/location at Subscription level.</td>
</tr>
<tr>
    <td><a href="#region_configuration_by_resource_group"><CopyableCode code="region_configuration_by_resource_group" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td></td>
    <td>This API provides configuration details specific to given region/location at Resource group level.</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location of the resource</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The Resource Group Name</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Subscription Id</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="validate_address"
    values={[
        { label: 'validate_address', value: 'validate_address' },
        { label: 'validate_inputs_by_resource_group', value: 'validate_inputs_by_resource_group' },
        { label: 'validate_inputs', value: 'validate_inputs' },
        { label: 'region_configuration', value: 'region_configuration' },
        { label: 'region_configuration_by_resource_group', value: 'region_configuration_by_resource_group' }
    ]}
>
<TabItem value="validate_address">

[DEPRECATED NOTICE: This operation will soon be removed]. This method validates the customer shipping address and provide alternate addresses if any.

```sql
EXEC azure.data_box.services.validate_address 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"validationType": "{{ validationType }}", 
"shippingAddress": "{{ shippingAddress }}", 
"deviceType": "{{ deviceType }}", 
"transportPreferences": "{{ transportPreferences }}"
}'
;
```
</TabItem>
<TabItem value="validate_inputs_by_resource_group">

This method does all necessary pre-job creation validation under resource group.

```sql
EXEC azure.data_box.services.validate_inputs_by_resource_group 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"validationCategory": "{{ validationCategory }}", 
"individualRequestDetails": "{{ individualRequestDetails }}"
}'
;
```
</TabItem>
<TabItem value="validate_inputs">

This method does all necessary pre-job creation validation under subscription.

```sql
EXEC azure.data_box.services.validate_inputs 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"validationCategory": "{{ validationCategory }}", 
"individualRequestDetails": "{{ individualRequestDetails }}"
}'
;
```
</TabItem>
<TabItem value="region_configuration">

This API provides configuration details specific to given region/location at Subscription level.

```sql
EXEC azure.data_box.services.region_configuration 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"scheduleAvailabilityRequest": "{{ scheduleAvailabilityRequest }}", 
"transportAvailabilityRequest": "{{ transportAvailabilityRequest }}", 
"datacenterAddressRequest": "{{ datacenterAddressRequest }}", 
"deviceCapabilityRequest": "{{ deviceCapabilityRequest }}"
}'
;
```
</TabItem>
<TabItem value="region_configuration_by_resource_group">

This API provides configuration details specific to given region/location at Resource group level.

```sql
EXEC azure.data_box.services.region_configuration_by_resource_group 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"scheduleAvailabilityRequest": "{{ scheduleAvailabilityRequest }}", 
"transportAvailabilityRequest": "{{ transportAvailabilityRequest }}", 
"datacenterAddressRequest": "{{ datacenterAddressRequest }}", 
"deviceCapabilityRequest": "{{ deviceCapabilityRequest }}"
}'
;
```
</TabItem>
</Tabs>
