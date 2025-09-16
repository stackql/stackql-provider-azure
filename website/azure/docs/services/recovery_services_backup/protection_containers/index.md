--- 
title: protection_containers
hide_title: false
hide_table_of_contents: false
keywords:
  - protection_containers
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

Creates, updates, deletes, gets or lists a <code>protection_containers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>protection_containers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_backup.protection_containers" /></td></tr>
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
    <td>ProtectionContainerResource properties</td>
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
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets details of the specific container registered to your Recovery Services Vault.</td>
</tr>
<tr>
    <td><a href="#register"><CopyableCode code="register" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Registers the container with Recovery Services vault.<br />This is an asynchronous operation. To track the operation status, use location header to call get latest status of<br />the operation.</td>
</tr>
<tr>
    <td><a href="#unregister"><CopyableCode code="unregister" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Unregisters the given container from your Recovery Services Vault. This is an asynchronous operation. To determine<br />whether the backend service has finished processing the request, call Get Container Operation Result API.</td>
</tr>
<tr>
    <td><a href="#inquire"><CopyableCode code="inquire" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>This is an async operation and the results should be tracked using location header or Azure-async-url.</td>
</tr>
<tr>
    <td><a href="#refresh"><CopyableCode code="refresh" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Discovers all the containers in the subscription that can be backed up to Recovery Services Vault. This is an<br />asynchronous operation. To know the status of the operation, call GetRefreshOperationResult API.</td>
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
<tr id="parameter-containerName">
    <td><CopyableCode code="containerName" /></td>
    <td><code>string</code></td>
    <td>Name of the container in which inquiry needs to be triggered.</td>
</tr>
<tr id="parameter-fabricName">
    <td><CopyableCode code="fabricName" /></td>
    <td><code>string</code></td>
    <td>Fabric name associated the container.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group where the recovery services vault is present.</td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>OData filter options.</td>
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

Gets details of the specific container registered to your Recovery Services Vault.

```sql
SELECT
id,
name,
properties,
type
FROM azure.recovery_services_backup.protection_containers
WHERE vaultName = '{{ vaultName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND fabricName = '{{ fabricName }}' -- required
AND containerName = '{{ containerName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="register"
    values={[
        { label: 'register', value: 'register' },
        { label: 'unregister', value: 'unregister' },
        { label: 'inquire', value: 'inquire' },
        { label: 'refresh', value: 'refresh' }
    ]}
>
<TabItem value="register">

Registers the container with Recovery Services vault.<br />This is an asynchronous operation. To track the operation status, use location header to call get latest status of<br />the operation.

```sql
EXEC azure.recovery_services_backup.protection_containers.register 
@vaultName='{{ vaultName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@containerName='{{ containerName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="unregister">

Unregisters the given container from your Recovery Services Vault. This is an asynchronous operation. To determine<br />whether the backend service has finished processing the request, call Get Container Operation Result API.

```sql
EXEC azure.recovery_services_backup.protection_containers.unregister 
@vaultName='{{ vaultName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@containerName='{{ containerName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="inquire">

This is an async operation and the results should be tracked using location header or Azure-async-url.

```sql
EXEC azure.recovery_services_backup.protection_containers.inquire 
@vaultName='{{ vaultName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@containerName='{{ containerName }}' --required, 
@api-version='{{ api-version }}', 
@$filter='{{ $filter }}'
;
```
</TabItem>
<TabItem value="refresh">

Discovers all the containers in the subscription that can be backed up to Recovery Services Vault. This is an<br />asynchronous operation. To know the status of the operation, call GetRefreshOperationResult API.

```sql
EXEC azure.recovery_services_backup.protection_containers.refresh 
@vaultName='{{ vaultName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@api-version='{{ api-version }}', 
@$filter='{{ $filter }}'
;
```
</TabItem>
</Tabs>
