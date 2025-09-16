--- 
title: afd_profiles
hide_title: false
hide_table_of_contents: false
keywords:
  - afd_profiles
  - cdn
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

Creates, updates, deletes, gets or lists an <code>afd_profiles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>afd_profiles</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cdn.afd_profiles" /></td></tr>
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
    <td><a href="#check_endpoint_name_availability"><CopyableCode code="check_endpoint_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Check the availability of an afdx endpoint name, and return the globally unique endpoint host name.</td>
</tr>
<tr>
    <td><a href="#check_host_name_availability"><CopyableCode code="check_host_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-hostName"><code>hostName</code></a></td>
    <td></td>
    <td>Validates the custom domain mapping to ensure it maps to the correct Azure Front Door endpoint in DNS.</td>
</tr>
<tr>
    <td><a href="#validate_secret"><CopyableCode code="validate_secret" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-secretSource"><code>secretSource</code></a>, <a href="#parameter-secretType"><code>secretType</code></a></td>
    <td></td>
    <td>Validate a Secret in the profile.</td>
</tr>
<tr>
    <td><a href="#upgrade"><CopyableCode code="upgrade" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-wafMappingList"><code>wafMappingList</code></a></td>
    <td></td>
    <td>Upgrade a profile from Standard_AzureFrontDoor to Premium_AzureFrontDoor.</td>
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
<tr id="parameter-profileName">
    <td><CopyableCode code="profileName" /></td>
    <td><code>string</code></td>
    <td>Name of the Azure Front Door Standard or Azure Front Door Premium which is unique within the resource group.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the Resource group within the Azure subscription.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure Subscription ID.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="check_endpoint_name_availability"
    values={[
        { label: 'check_endpoint_name_availability', value: 'check_endpoint_name_availability' },
        { label: 'check_host_name_availability', value: 'check_host_name_availability' },
        { label: 'validate_secret', value: 'validate_secret' },
        { label: 'upgrade', value: 'upgrade' }
    ]}
>
<TabItem value="check_endpoint_name_availability">

Check the availability of an afdx endpoint name, and return the globally unique endpoint host name.

```sql
EXEC azure.cdn.afd_profiles.check_endpoint_name_availability 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@profileName='{{ profileName }}' --required 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}", 
"autoGeneratedDomainNameLabelScope": "{{ autoGeneratedDomainNameLabelScope }}"
}'
;
```
</TabItem>
<TabItem value="check_host_name_availability">

Validates the custom domain mapping to ensure it maps to the correct Azure Front Door endpoint in DNS.

```sql
EXEC azure.cdn.afd_profiles.check_host_name_availability 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@profileName='{{ profileName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"hostName": "{{ hostName }}"
}'
;
```
</TabItem>
<TabItem value="validate_secret">

Validate a Secret in the profile.

```sql
EXEC azure.cdn.afd_profiles.validate_secret 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@profileName='{{ profileName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"secretType": "{{ secretType }}", 
"secretSource": "{{ secretSource }}", 
"secretVersion": "{{ secretVersion }}"
}'
;
```
</TabItem>
<TabItem value="upgrade">

Upgrade a profile from Standard_AzureFrontDoor to Premium_AzureFrontDoor.

```sql
EXEC azure.cdn.afd_profiles.upgrade 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@profileName='{{ profileName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"wafMappingList": "{{ wafMappingList }}"
}'
;
```
</TabItem>
</Tabs>
