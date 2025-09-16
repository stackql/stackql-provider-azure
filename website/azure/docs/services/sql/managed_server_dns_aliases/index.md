--- 
title: managed_server_dns_aliases
hide_title: false
hide_table_of_contents: false
keywords:
  - managed_server_dns_aliases
  - sql
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

Creates, updates, deletes, gets or lists a <code>managed_server_dns_aliases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>managed_server_dns_aliases</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.managed_server_dns_aliases" /></td></tr>
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

Successfully retrieved the specified managed server DNS alias.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-dnsAliasName"><code>dnsAliasName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a server DNS alias.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-dnsAliasName"><code>dnsAliasName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates a managed server DNS alias.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-dnsAliasName"><code>dnsAliasName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the managed server DNS alias with the given name.</td>
</tr>
<tr>
    <td><a href="#acquire"><CopyableCode code="acquire" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-dnsAliasName"><code>dnsAliasName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-oldManagedServerDnsAliasResourceId"><code>oldManagedServerDnsAliasResourceId</code></a></td>
    <td></td>
    <td>Acquires managed server DNS alias from another managed server.</td>
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
<tr id="parameter-dnsAliasName">
    <td><CopyableCode code="dnsAliasName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-managedInstanceName">
    <td><CopyableCode code="managedInstanceName" /></td>
    <td><code>string</code></td>
    <td>The name of the managed instance.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID that identifies an Azure subscription.</td>
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

Gets a server DNS alias.

```sql
SELECT
properties
FROM azure.sql.managed_server_dns_aliases
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND managedInstanceName = '{{ managedInstanceName }}' -- required
AND dnsAliasName = '{{ dnsAliasName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Creates a managed server DNS alias.

```sql
INSERT INTO azure.sql.managed_server_dns_aliases (
data__createDnsRecord,
resourceGroupName,
managedInstanceName,
dnsAliasName,
subscriptionId
)
SELECT 
{{ createDnsRecord }},
'{{ resourceGroupName }}',
'{{ managedInstanceName }}',
'{{ dnsAliasName }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: managed_server_dns_aliases
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the managed_server_dns_aliases resource.
    - name: managedInstanceName
      value: string
      description: Required parameter for the managed_server_dns_aliases resource.
    - name: dnsAliasName
      value: string
      description: Required parameter for the managed_server_dns_aliases resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the managed_server_dns_aliases resource.
    - name: createDnsRecord
      value: boolean
      description: |
        Whether or not DNS record should be created for this alias.
      default: true
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

Deletes the managed server DNS alias with the given name.

```sql
DELETE FROM azure.sql.managed_server_dns_aliases
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND managedInstanceName = '{{ managedInstanceName }}' --required
AND dnsAliasName = '{{ dnsAliasName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="acquire"
    values={[
        { label: 'acquire', value: 'acquire' }
    ]}
>
<TabItem value="acquire">

Acquires managed server DNS alias from another managed server.

```sql
EXEC azure.sql.managed_server_dns_aliases.acquire 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@managedInstanceName='{{ managedInstanceName }}' --required, 
@dnsAliasName='{{ dnsAliasName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"oldManagedServerDnsAliasResourceId": "{{ oldManagedServerDnsAliasResourceId }}"
}'
;
```
</TabItem>
</Tabs>
