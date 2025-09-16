--- 
title: frontend_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - frontend_endpoints
  - front_door
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

Creates, updates, deletes, gets or lists a <code>frontend_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>frontend_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.front_door.frontend_endpoints" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_front_door', value: 'list_by_front_door' }
    ]}
>
<TabItem value="get">

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the Frontend endpoint</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_front_door">

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the Frontend endpoint</td>
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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-frontDoorName"><code>frontDoorName</code></a>, <a href="#parameter-frontendEndpointName"><code>frontendEndpointName</code></a></td>
    <td></td>
    <td>Gets a Frontend endpoint with the specified name within the specified Front Door.</td>
</tr>
<tr>
    <td><a href="#list_by_front_door"><CopyableCode code="list_by_front_door" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-frontDoorName"><code>frontDoorName</code></a></td>
    <td></td>
    <td>Lists all of the frontend endpoints within a Front Door.</td>
</tr>
<tr>
    <td><a href="#enable_https"><CopyableCode code="enable_https" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-frontDoorName"><code>frontDoorName</code></a>, <a href="#parameter-frontendEndpointName"><code>frontendEndpointName</code></a>, <a href="#parameter-minimumTlsVersion"><code>minimumTlsVersion</code></a>, <a href="#parameter-certificateSource"><code>certificateSource</code></a>, <a href="#parameter-protocolType"><code>protocolType</code></a></td>
    <td></td>
    <td>Enables a frontendEndpoint for HTTPS traffic</td>
</tr>
<tr>
    <td><a href="#disable_https"><CopyableCode code="disable_https" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-frontDoorName"><code>frontDoorName</code></a>, <a href="#parameter-frontendEndpointName"><code>frontendEndpointName</code></a></td>
    <td></td>
    <td>Disables a frontendEndpoint for HTTPS traffic</td>
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
<tr id="parameter-frontDoorName">
    <td><CopyableCode code="frontDoorName" /></td>
    <td><code>string</code></td>
    <td>Name of the Front Door which is globally unique.</td>
</tr>
<tr id="parameter-frontendEndpointName">
    <td><CopyableCode code="frontendEndpointName" /></td>
    <td><code>string</code></td>
    <td>Name of the Frontend endpoint which is unique within the Front Door.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the Resource group within the Azure subscription.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_front_door', value: 'list_by_front_door' }
    ]}
>
<TabItem value="get">

Gets a Frontend endpoint with the specified name within the specified Front Door.

```sql
SELECT
id,
name,
properties,
type
FROM azure.front_door.frontend_endpoints
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND frontDoorName = '{{ frontDoorName }}' -- required
AND frontendEndpointName = '{{ frontendEndpointName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_front_door">

Lists all of the frontend endpoints within a Front Door.

```sql
SELECT
id,
name,
properties,
type
FROM azure.front_door.frontend_endpoints
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND frontDoorName = '{{ frontDoorName }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="enable_https"
    values={[
        { label: 'enable_https', value: 'enable_https' },
        { label: 'disable_https', value: 'disable_https' }
    ]}
>
<TabItem value="enable_https">

Enables a frontendEndpoint for HTTPS traffic

```sql
EXEC azure.front_door.frontend_endpoints.enable_https 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@frontDoorName='{{ frontDoorName }}' --required, 
@frontendEndpointName='{{ frontendEndpointName }}' --required 
@@json=
'{
"certificateSource": "{{ certificateSource }}", 
"protocolType": "{{ protocolType }}", 
"minimumTlsVersion": "{{ minimumTlsVersion }}", 
"keyVaultCertificateSourceParameters": "{{ keyVaultCertificateSourceParameters }}", 
"frontDoorCertificateSourceParameters": "{{ frontDoorCertificateSourceParameters }}"
}'
;
```
</TabItem>
<TabItem value="disable_https">

Disables a frontendEndpoint for HTTPS traffic

```sql
EXEC azure.front_door.frontend_endpoints.disable_https 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@frontDoorName='{{ frontDoorName }}' --required, 
@frontendEndpointName='{{ frontendEndpointName }}' --required
;
```
</TabItem>
</Tabs>
