--- 
title: resource_guard_proxies
hide_title: false
hide_table_of_contents: false
keywords:
  - resource_guard_proxies
  - recovery_services_backup
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

Creates, updates, deletes, gets or lists a <code>resource_guard_proxies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>resource_guard_proxies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_backup.resource_guard_proxies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
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
    <td>ResourceGuardProxyBaseResource properties</td>
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
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGuardProxyName"><code>resourceGuardProxyName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Returns ResourceGuardProxy under vault and with the name referenced in request</td>
</tr>
<tr>
    <td><a href="#put"><CopyableCode code="put" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGuardProxyName"><code>resourceGuardProxyName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Add or Update ResourceGuardProxy under vault<br />Secures vault critical operations</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGuardProxyName"><code>resourceGuardProxyName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Delete ResourceGuardProxy under vault</td>
</tr>
<tr>
    <td><a href="#unlock_delete"><CopyableCode code="unlock_delete" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGuardProxyName"><code>resourceGuardProxyName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Secures delete ResourceGuardProxy operations.</td>
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
    <td>The name of the resource group where the recovery services vault is present.</td>
</tr>
<tr id="parameter-resourceGuardProxyName">
    <td><CopyableCode code="resourceGuardProxyName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription Id.</td>
</tr>
<tr id="parameter-vaultName">
    <td><CopyableCode code="vaultName" /></td>
    <td><code>string</code></td>
    <td>The name of the recovery services vault.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client Api Version.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Returns ResourceGuardProxy under vault and with the name referenced in request

```sql
SELECT
id,
name,
properties,
type
FROM azure.recovery_services_backup.resource_guard_proxies
WHERE vaultName = '{{ vaultName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGuardProxyName = '{{ resourceGuardProxyName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="put"
    values={[
        { label: 'put', value: 'put' }
    ]}
>
<TabItem value="put">

Add or Update ResourceGuardProxy under vault<br />Secures vault critical operations

```sql
REPLACE azure.recovery_services_backup.resource_guard_proxies
SET 
data__properties = '{{ properties }}'
WHERE 
vaultName = '{{ vaultName }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceGuardProxyName = '{{ resourceGuardProxyName }}' --required
AND api-version = '{{ api-version}}'
RETURNING
id,
name,
properties,
type;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Delete ResourceGuardProxy under vault

```sql
DELETE FROM azure.recovery_services_backup.resource_guard_proxies
WHERE vaultName = '{{ vaultName }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceGuardProxyName = '{{ resourceGuardProxyName }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="unlock_delete"
    values={[
        { label: 'unlock_delete', value: 'unlock_delete' }
    ]}
>
<TabItem value="unlock_delete">

Secures delete ResourceGuardProxy operations.

```sql
EXEC azure.recovery_services_backup.resource_guard_proxies.unlock_delete 
@vaultName='{{ vaultName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGuardProxyName='{{ resourceGuardProxyName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"resourceGuardOperationRequests": "{{ resourceGuardOperationRequests }}", 
"resourceToBeDeleted": "{{ resourceToBeDeleted }}"
}'
;
```
</TabItem>
</Tabs>
