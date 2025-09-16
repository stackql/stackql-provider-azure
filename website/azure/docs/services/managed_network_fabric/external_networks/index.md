--- 
title: external_networks
hide_title: false
hide_table_of_contents: false
keywords:
  - external_networks
  - managed_network_fabric
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

Creates, updates, deletes, gets or lists an <code>external_networks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>external_networks</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network_fabric.external_networks" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_l3_isolation_domain', value: 'list_by_l3_isolation_domain' }
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_l3_isolation_domain">

Lists all the  External Networks under the L3 Isolation Domain.

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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-l3IsolationDomainName"><code>l3IsolationDomainName</code></a>, <a href="#parameter-externalNetworkName"><code>externalNetworkName</code></a></td>
    <td></td>
    <td>Implements ExternalNetworks GET method.</td>
</tr>
<tr>
    <td><a href="#list_by_l3_isolation_domain"><CopyableCode code="list_by_l3_isolation_domain" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-l3IsolationDomainName"><code>l3IsolationDomainName</code></a></td>
    <td></td>
    <td>Implements External Networks list by resource group GET method.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-l3IsolationDomainName"><code>l3IsolationDomainName</code></a>, <a href="#parameter-externalNetworkName"><code>externalNetworkName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates ExternalNetwork PUT method.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-l3IsolationDomainName"><code>l3IsolationDomainName</code></a>, <a href="#parameter-externalNetworkName"><code>externalNetworkName</code></a></td>
    <td></td>
    <td>API to update certain properties of the ExternalNetworks resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-l3IsolationDomainName"><code>l3IsolationDomainName</code></a>, <a href="#parameter-externalNetworkName"><code>externalNetworkName</code></a></td>
    <td></td>
    <td>Implements ExternalNetworks DELETE method.</td>
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
<tr id="parameter-externalNetworkName">
    <td><CopyableCode code="externalNetworkName" /></td>
    <td><code>string</code></td>
    <td>Name of the External Network.</td>
</tr>
<tr id="parameter-l3IsolationDomainName">
    <td><CopyableCode code="l3IsolationDomainName" /></td>
    <td><code>string</code></td>
    <td>Name of the L3 Isolation Domain.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_l3_isolation_domain', value: 'list_by_l3_isolation_domain' }
    ]}
>
<TabItem value="get">

Implements ExternalNetworks GET method.

```sql
SELECT
properties
FROM azure.managed_network_fabric.external_networks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND l3IsolationDomainName = '{{ l3IsolationDomainName }}' -- required
AND externalNetworkName = '{{ externalNetworkName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_l3_isolation_domain">

Implements External Networks list by resource group GET method.

```sql
SELECT
properties
FROM azure.managed_network_fabric.external_networks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND l3IsolationDomainName = '{{ l3IsolationDomainName }}' -- required
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

Creates ExternalNetwork PUT method.

```sql
INSERT INTO azure.managed_network_fabric.external_networks (
data__properties,
subscriptionId,
resourceGroupName,
l3IsolationDomainName,
externalNetworkName
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ l3IsolationDomainName }}',
'{{ externalNetworkName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: external_networks
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the external_networks resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the external_networks resource.
    - name: l3IsolationDomainName
      value: string
      description: Required parameter for the external_networks resource.
    - name: externalNetworkName
      value: string
      description: Required parameter for the external_networks resource.
    - name: properties
      value: object
      description: |
        Resource properties.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

API to update certain properties of the ExternalNetworks resource.

```sql
UPDATE azure.managed_network_fabric.external_networks
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND l3IsolationDomainName = '{{ l3IsolationDomainName }}' --required
AND externalNetworkName = '{{ externalNetworkName }}' --required
RETURNING
properties;
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

Implements ExternalNetworks DELETE method.

```sql
DELETE FROM azure.managed_network_fabric.external_networks
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND l3IsolationDomainName = '{{ l3IsolationDomainName }}' --required
AND externalNetworkName = '{{ externalNetworkName }}' --required
;
```
</TabItem>
</Tabs>
