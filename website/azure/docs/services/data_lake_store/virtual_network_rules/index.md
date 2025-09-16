--- 
title: virtual_network_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_network_rules
  - data_lake_store
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

Creates, updates, deletes, gets or lists a <code>virtual_network_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_network_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_lake_store.virtual_network_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_account', value: 'list_by_account' }
    ]}
>
<TabItem value="get">

Successfully retrieved the virtual network rule.

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
    <td>The resource identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The virtual network rule properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_account">

Successfully retrieved the list of virtual network rules.

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
    <td>The resource identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The virtual network rule properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-virtualNetworkRuleName"><code>virtualNetworkRuleName</code></a></td>
    <td></td>
    <td>Gets the specified Data Lake Store virtual network rule.</td>
</tr>
<tr>
    <td><a href="#list_by_account"><CopyableCode code="list_by_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a></td>
    <td></td>
    <td>Lists the Data Lake Store virtual network rules within the specified Data Lake Store account.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-virtualNetworkRuleName"><code>virtualNetworkRuleName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates or updates the specified virtual network rule. During update, the virtual network rule with the specified name will be replaced with this new virtual network rule.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-virtualNetworkRuleName"><code>virtualNetworkRuleName</code></a></td>
    <td></td>
    <td>Updates the specified virtual network rule.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-virtualNetworkRuleName"><code>virtualNetworkRuleName</code></a></td>
    <td></td>
    <td>Deletes the specified virtual network rule from the specified Data Lake Store account.</td>
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
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>The name of the Data Lake Store account.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the Azure resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-virtualNetworkRuleName">
    <td><CopyableCode code="virtualNetworkRuleName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual network rule to delete.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_account', value: 'list_by_account' }
    ]}
>
<TabItem value="get">

Gets the specified Data Lake Store virtual network rule.

```sql
SELECT
id,
name,
properties,
type
FROM azure.data_lake_store.virtual_network_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND virtualNetworkRuleName = '{{ virtualNetworkRuleName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_account">

Lists the Data Lake Store virtual network rules within the specified Data Lake Store account.

```sql
SELECT
id,
name,
properties,
type
FROM azure.data_lake_store.virtual_network_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
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

Creates or updates the specified virtual network rule. During update, the virtual network rule with the specified name will be replaced with this new virtual network rule.

```sql
INSERT INTO azure.data_lake_store.virtual_network_rules (
data__properties,
subscriptionId,
resourceGroupName,
accountName,
virtualNetworkRuleName
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ accountName }}',
'{{ virtualNetworkRuleName }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: virtual_network_rules
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the virtual_network_rules resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the virtual_network_rules resource.
    - name: accountName
      value: string
      description: Required parameter for the virtual_network_rules resource.
    - name: virtualNetworkRuleName
      value: string
      description: Required parameter for the virtual_network_rules resource.
    - name: properties
      value: object
      description: |
        The virtual network rule properties to use when creating a new virtual network rule.
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

Updates the specified virtual network rule.

```sql
UPDATE azure.data_lake_store.virtual_network_rules
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND virtualNetworkRuleName = '{{ virtualNetworkRuleName }}' --required
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

Deletes the specified virtual network rule from the specified Data Lake Store account.

```sql
DELETE FROM azure.data_lake_store.virtual_network_rules
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND virtualNetworkRuleName = '{{ virtualNetworkRuleName }}' --required
;
```
</TabItem>
</Tabs>
