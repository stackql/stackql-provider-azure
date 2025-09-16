--- 
title: replication_recovery_services_providers
hide_title: false
hide_table_of_contents: false
keywords:
  - replication_recovery_services_providers
  - recovery_services_site_recovery
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

Creates, updates, deletes, gets or lists a <code>replication_recovery_services_providers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>replication_recovery_services_providers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.replication_recovery_services_providers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_replication_fabrics', value: 'list_by_replication_fabrics' },
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
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource Location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Provider properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource Type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_replication_fabrics">

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
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource Location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Provider properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource Type</td>
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
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource Location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Provider properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource Type</td>
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
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-providerName"><code>providerName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets the details of registered recovery services provider.</td>
</tr>
<tr>
    <td><a href="#list_by_replication_fabrics"><CopyableCode code="list_by_replication_fabrics" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Lists the registered recovery services providers for the specified fabric.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Lists the registered recovery services providers in the vault.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-providerName"><code>providerName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to add a recovery services provider.</td>
</tr>
<tr>
    <td><a href="#purge"><CopyableCode code="purge" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-providerName"><code>providerName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to purge(force delete) a recovery services provider from the vault.</td>
</tr>
<tr>
    <td><a href="#refresh_provider"><CopyableCode code="refresh_provider" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-providerName"><code>providerName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to refresh the information from the recovery services provider.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-providerName"><code>providerName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to removes/delete(unregister) a recovery services provider from the vault.</td>
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
<tr id="parameter-fabricName">
    <td><CopyableCode code="fabricName" /></td>
    <td><code>string</code></td>
    <td>Fabric name.</td>
</tr>
<tr id="parameter-providerName">
    <td><CopyableCode code="providerName" /></td>
    <td><code>string</code></td>
    <td>Recovery services provider name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group where the recovery services vault is present.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the recovery services vault.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription Id.</td>
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
        { label: 'get', value: 'get' },
        { label: 'list_by_replication_fabrics', value: 'list_by_replication_fabrics' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets the details of registered recovery services provider.

```sql
SELECT
id,
name,
location,
properties,
type
FROM azure.recovery_services_site_recovery.replication_recovery_services_providers
WHERE resourceName = '{{ resourceName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND fabricName = '{{ fabricName }}' -- required
AND providerName = '{{ providerName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list_by_replication_fabrics">

Lists the registered recovery services providers for the specified fabric.

```sql
SELECT
id,
name,
location,
properties,
type
FROM azure.recovery_services_site_recovery.replication_recovery_services_providers
WHERE resourceName = '{{ resourceName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND fabricName = '{{ fabricName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Lists the registered recovery services providers in the vault.

```sql
SELECT
id,
name,
location,
properties,
type
FROM azure.recovery_services_site_recovery.replication_recovery_services_providers
WHERE resourceName = '{{ resourceName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

The operation to add a recovery services provider.

```sql
INSERT INTO azure.recovery_services_site_recovery.replication_recovery_services_providers (
data__properties,
resourceName,
resourceGroupName,
subscriptionId,
fabricName,
providerName,
api-version
)
SELECT 
'{{ properties }}' /* required */,
'{{ resourceName }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ fabricName }}',
'{{ providerName }}',
'{{ api-version }}'
RETURNING
id,
name,
location,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: replication_recovery_services_providers
  props:
    - name: resourceName
      value: string
      description: Required parameter for the replication_recovery_services_providers resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the replication_recovery_services_providers resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the replication_recovery_services_providers resource.
    - name: fabricName
      value: string
      description: Required parameter for the replication_recovery_services_providers resource.
    - name: providerName
      value: string
      description: Required parameter for the replication_recovery_services_providers resource.
    - name: properties
      value: object
      description: |
        The properties of an add provider request.
    - name: api-version
      value: string
      description: Client Api Version.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="purge"
    values={[
        { label: 'purge', value: 'purge' },
        { label: 'refresh_provider', value: 'refresh_provider' },
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="purge">

The operation to purge(force delete) a recovery services provider from the vault.

```sql
EXEC azure.recovery_services_site_recovery.replication_recovery_services_providers.purge 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@providerName='{{ providerName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="refresh_provider">

The operation to refresh the information from the recovery services provider.

```sql
EXEC azure.recovery_services_site_recovery.replication_recovery_services_providers.refresh_provider 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@providerName='{{ providerName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="delete">

The operation to removes/delete(unregister) a recovery services provider from the vault.

```sql
EXEC azure.recovery_services_site_recovery.replication_recovery_services_providers.delete 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@providerName='{{ providerName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
</Tabs>
