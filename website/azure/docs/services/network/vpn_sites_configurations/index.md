--- 
title: vpn_sites_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vpn_sites_configurations
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

Creates, updates, deletes, gets or lists a <code>vpn_sites_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vpn_sites_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vpn_sites_configurations" /></td></tr>
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
    <td><a href="#download"><CopyableCode code="download" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualWANName"><code>virtualWANName</code></a>, <a href="#parameter-outputBlobSasUrl"><code>outputBlobSasUrl</code></a></td>
    <td></td>
    <td>Gives the sas-url to download the configurations for vpn-sites in a resource group.</td>
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
    <td>The resource group name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-virtualWANName">
    <td><CopyableCode code="virtualWANName" /></td>
    <td><code>string</code></td>
    <td>The name of the VirtualWAN for which configuration of all vpn-sites is needed.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="download"
    values={[
        { label: 'download', value: 'download' }
    ]}
>
<TabItem value="download">

Gives the sas-url to download the configurations for vpn-sites in a resource group.

```sql
EXEC azure.network.vpn_sites_configurations.download 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualWANName='{{ virtualWANName }}' --required 
@@json=
'{
"vpnSites": "{{ vpnSites }}", 
"outputBlobSasUrl": "{{ outputBlobSasUrl }}"
}'
;
```
</TabItem>
</Tabs>
