--- 
title: default_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - default_accounts
  - purview
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

Creates, updates, deletes, gets or lists a <code>default_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>default_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.purview.default_accounts" /></td></tr>
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
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>The name of the account that is set as the default.</td>
</tr>
<tr>
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name of the account that is set as the default.</td>
</tr>
<tr>
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope object ID. For example, sub ID or tenant ID.</td>
</tr>
<tr>
    <td><CopyableCode code="scopeTenantId" /></td>
    <td><code>string</code></td>
    <td>The scope tenant in which the default account is set.</td>
</tr>
<tr>
    <td><CopyableCode code="scopeType" /></td>
    <td><code>string</code></td>
    <td>The scope where the default account is set.</td>
</tr>
<tr>
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID of the account that is set as the default.</td>
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
    <td><a href="#parameter-scopeTenantId"><code>scopeTenantId</code></a>, <a href="#parameter-scopeType"><code>scopeType</code></a></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get the default account for the scope.</td>
</tr>
<tr>
    <td><a href="#remove"><CopyableCode code="remove" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-scopeTenantId"><code>scopeTenantId</code></a>, <a href="#parameter-scopeType"><code>scopeType</code></a></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Removes the default account from the scope.</td>
</tr>
<tr>
    <td><a href="#set"><CopyableCode code="set" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Sets the default account for the scope.</td>
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
<tr id="parameter-scopeTenantId">
    <td><CopyableCode code="scopeTenantId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The tenant ID.</td>
</tr>
<tr id="parameter-scopeType">
    <td><CopyableCode code="scopeType" /></td>
    <td><code>string</code></td>
    <td>The scope for the default account.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The api version to use.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The Id of the scope object, for example if the scope is "Subscription" then it is the ID of that subscription.</td>
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

Get the default account for the scope.

```sql
SELECT
accountName,
resourceGroupName,
scope,
scopeTenantId,
scopeType,
subscriptionId
FROM azure.purview.default_accounts
WHERE scopeTenantId = '{{ scopeTenantId }}' -- required
AND scopeType = '{{ scopeType }}' -- required
AND scope = '{{ scope }}'
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="remove"
    values={[
        { label: 'remove', value: 'remove' },
        { label: 'set', value: 'set' }
    ]}
>
<TabItem value="remove">

Removes the default account from the scope.

```sql
EXEC azure.purview.default_accounts.remove 
@scopeTenantId='{{ scopeTenantId }}' --required, 
@scopeType='{{ scopeType }}' --required, 
@scope='{{ scope }}', 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="set">

Sets the default account for the scope.

```sql
EXEC azure.purview.default_accounts.set 
@api-version='{{ api-version }}' 
@@json=
'{
"accountName": "{{ accountName }}", 
"resourceGroupName": "{{ resourceGroupName }}", 
"scope": "{{ scope }}", 
"scopeTenantId": "{{ scopeTenantId }}", 
"scopeType": "{{ scopeType }}", 
"subscriptionId": "{{ subscriptionId }}"
}'
;
```
</TabItem>
</Tabs>
