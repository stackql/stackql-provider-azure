--- 
title: cloud_services_update_domains
hide_title: false
hide_table_of_contents: false
keywords:
  - cloud_services_update_domains
  - compute
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

Creates, updates, deletes, gets or lists a <code>cloud_services_update_domains</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>cloud_services_update_domains</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.cloud_services_update_domains" /></td></tr>
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
    <td><a href="#walk_update_domain"><CopyableCode code="walk_update_domain" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-updateDomain"><code>updateDomain</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates the role instances in the specified update domain.</td>
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
<tr id="parameter-cloudServiceName">
    <td><CopyableCode code="cloudServiceName" /></td>
    <td><code>string</code></td>
    <td>Name of the cloud service.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-updateDomain">
    <td><CopyableCode code="updateDomain" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies an integer value that identifies the update domain. Update domains are identified with a zero-based index: the first update domain has an ID of 0, the second has an ID of 1, and so on.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="walk_update_domain"
    values={[
        { label: 'walk_update_domain', value: 'walk_update_domain' }
    ]}
>
<TabItem value="walk_update_domain">

Updates the role instances in the specified update domain.

```sql
EXEC azure.compute.cloud_services_update_domains.walk_update_domain 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@cloudServiceName='{{ cloudServiceName }}' --required, 
@updateDomain='{{ updateDomain }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
}'
;
```
</TabItem>
</Tabs>
