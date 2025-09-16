--- 
title: l2_isolation_domains
hide_title: false
hide_table_of_contents: false
keywords:
  - l2_isolation_domains
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

Creates, updates, deletes, gets or lists a <code>l2_isolation_domains</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>l2_isolation_domains</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network_fabric.l2_isolation_domains" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

Lists all L2IsolationDomains under the resource group.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

Lists all L2IsolationDomains under the subscription.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-l2IsolationDomainName"><code>l2IsolationDomainName</code></a></td>
    <td></td>
    <td>Implements L2 Isolation Domain GET method.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Displays L2IsolationDomains list by resource group GET method.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Displays L2IsolationDomains list by subscription GET method.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-l2IsolationDomainName"><code>l2IsolationDomainName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates layer 2 network connectivity between compute nodes within a rack and across racks.The configuration is applied on the devices only after the isolation domain is enabled.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-l2IsolationDomainName"><code>l2IsolationDomainName</code></a></td>
    <td></td>
    <td>API to update certain properties of the L2 Isolation Domain resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-l2IsolationDomainName"><code>l2IsolationDomainName</code></a></td>
    <td></td>
    <td>Deletes layer 2 connectivity between compute nodes by managed by named L2 Isolation name.</td>
</tr>
<tr>
    <td><a href="#update_administrative_state"><CopyableCode code="update_administrative_state" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-l2IsolationDomainName"><code>l2IsolationDomainName</code></a></td>
    <td></td>
    <td>Enables isolation domain across the fabric or on specified racks.</td>
</tr>
<tr>
    <td><a href="#validate_configuration"><CopyableCode code="validate_configuration" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-l2IsolationDomainName"><code>l2IsolationDomainName</code></a></td>
    <td></td>
    <td>Validates the configuration of the resources.</td>
</tr>
<tr>
    <td><a href="#commit_configuration"><CopyableCode code="commit_configuration" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-l2IsolationDomainName"><code>l2IsolationDomainName</code></a></td>
    <td></td>
    <td>Commits the configuration of the given resources.</td>
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
<tr id="parameter-l2IsolationDomainName">
    <td><CopyableCode code="l2IsolationDomainName" /></td>
    <td><code>string</code></td>
    <td>Name of the L2 Isolation Domain.</td>
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
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Implements L2 Isolation Domain GET method.

```sql
SELECT
location,
properties,
tags
FROM azure.managed_network_fabric.l2_isolation_domains
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND l2IsolationDomainName = '{{ l2IsolationDomainName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Displays L2IsolationDomains list by resource group GET method.

```sql
SELECT
location,
properties,
tags
FROM azure.managed_network_fabric.l2_isolation_domains
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

Displays L2IsolationDomains list by subscription GET method.

```sql
SELECT
location,
properties,
tags
FROM azure.managed_network_fabric.l2_isolation_domains
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Creates layer 2 network connectivity between compute nodes within a rack and across racks.The configuration is applied on the devices only after the isolation domain is enabled.

```sql
INSERT INTO azure.managed_network_fabric.l2_isolation_domains (
data__tags,
data__location,
data__properties,
subscriptionId,
resourceGroupName,
l2IsolationDomainName
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ l2IsolationDomainName }}'
RETURNING
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: l2_isolation_domains
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the l2_isolation_domains resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the l2_isolation_domains resource.
    - name: l2IsolationDomainName
      value: string
      description: Required parameter for the l2_isolation_domains resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
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

API to update certain properties of the L2 Isolation Domain resource.

```sql
UPDATE azure.managed_network_fabric.l2_isolation_domains
SET 
data__properties = '{{ properties }}',
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND l2IsolationDomainName = '{{ l2IsolationDomainName }}' --required
RETURNING
location,
properties,
tags;
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

Deletes layer 2 connectivity between compute nodes by managed by named L2 Isolation name.

```sql
DELETE FROM azure.managed_network_fabric.l2_isolation_domains
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND l2IsolationDomainName = '{{ l2IsolationDomainName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_administrative_state"
    values={[
        { label: 'update_administrative_state', value: 'update_administrative_state' },
        { label: 'validate_configuration', value: 'validate_configuration' },
        { label: 'commit_configuration', value: 'commit_configuration' }
    ]}
>
<TabItem value="update_administrative_state">

Enables isolation domain across the fabric or on specified racks.

```sql
EXEC azure.managed_network_fabric.l2_isolation_domains.update_administrative_state 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@l2IsolationDomainName='{{ l2IsolationDomainName }}' --required 
@@json=
'{
"state": "{{ state }}", 
"resourceIds": "{{ resourceIds }}"
}'
;
```
</TabItem>
<TabItem value="validate_configuration">

Validates the configuration of the resources.

```sql
EXEC azure.managed_network_fabric.l2_isolation_domains.validate_configuration 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@l2IsolationDomainName='{{ l2IsolationDomainName }}' --required
;
```
</TabItem>
<TabItem value="commit_configuration">

Commits the configuration of the given resources.

```sql
EXEC azure.managed_network_fabric.l2_isolation_domains.commit_configuration 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@l2IsolationDomainName='{{ l2IsolationDomainName }}' --required
;
```
</TabItem>
</Tabs>
