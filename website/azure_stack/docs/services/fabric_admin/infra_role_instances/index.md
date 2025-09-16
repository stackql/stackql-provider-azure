--- 
title: infra_role_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - infra_role_instances
  - fabric_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>infra_role_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>infra_role_instances</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.fabric_admin.infra_role_instances" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>All properties of an infrastructure role instance.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>All properties of an infrastructure role instance.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-infraRoleInstance"><code>infraRoleInstance</code></a></td>
    <td></td>
    <td>Return the requested infrastructure role instance.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Returns a list of all infrastructure role instances at a location.</td>
</tr>
<tr>
    <td><a href="#power_off"><CopyableCode code="power_off" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-infraRoleInstance"><code>infraRoleInstance</code></a></td>
    <td></td>
    <td>Power off an infrastructure role instance.</td>
</tr>
<tr>
    <td><a href="#power_on"><CopyableCode code="power_on" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-infraRoleInstance"><code>infraRoleInstance</code></a></td>
    <td></td>
    <td>Power on an infrastructure role instance.</td>
</tr>
<tr>
    <td><a href="#shutdown"><CopyableCode code="shutdown" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-infraRoleInstance"><code>infraRoleInstance</code></a></td>
    <td></td>
    <td>Shut down an infrastructure role instance.</td>
</tr>
<tr>
    <td><a href="#reboot"><CopyableCode code="reboot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-infraRoleInstance"><code>infraRoleInstance</code></a></td>
    <td></td>
    <td>Reboot an infrastructure role instance.</td>
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
<tr id="parameter-infraRoleInstance">
    <td><CopyableCode code="infraRoleInstance" /></td>
    <td><code>string</code></td>
    <td>Name of an infrastructure role instance.</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The name of Azure region.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>OData filter parameter.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Return the requested infrastructure role instance.

```sql
SELECT
id,
name,
properties,
type
FROM azure_stack.fabric_admin.infra_role_instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND location = '{{ location }}' -- required
AND infraRoleInstance = '{{ infraRoleInstance }}' -- required
;
```
</TabItem>
<TabItem value="list">

Returns a list of all infrastructure role instances at a location.

```sql
SELECT
id,
name,
properties,
type
FROM azure_stack.fabric_admin.infra_role_instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND location = '{{ location }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="power_off"
    values={[
        { label: 'power_off', value: 'power_off' },
        { label: 'power_on', value: 'power_on' },
        { label: 'shutdown', value: 'shutdown' },
        { label: 'reboot', value: 'reboot' }
    ]}
>
<TabItem value="power_off">

Power off an infrastructure role instance.

```sql
EXEC azure_stack.fabric_admin.infra_role_instances.power_off 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@location='{{ location }}' --required, 
@infraRoleInstance='{{ infraRoleInstance }}' --required
;
```
</TabItem>
<TabItem value="power_on">

Power on an infrastructure role instance.

```sql
EXEC azure_stack.fabric_admin.infra_role_instances.power_on 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@location='{{ location }}' --required, 
@infraRoleInstance='{{ infraRoleInstance }}' --required
;
```
</TabItem>
<TabItem value="shutdown">

Shut down an infrastructure role instance.

```sql
EXEC azure_stack.fabric_admin.infra_role_instances.shutdown 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@location='{{ location }}' --required, 
@infraRoleInstance='{{ infraRoleInstance }}' --required
;
```
</TabItem>
<TabItem value="reboot">

Reboot an infrastructure role instance.

```sql
EXEC azure_stack.fabric_admin.infra_role_instances.reboot 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@location='{{ location }}' --required, 
@infraRoleInstance='{{ infraRoleInstance }}' --required
;
```
</TabItem>
</Tabs>
