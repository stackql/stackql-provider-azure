--- 
title: features
hide_title: false
hide_table_of_contents: false
keywords:
  - features
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

Creates, updates, deletes, gets or lists a <code>features</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>features</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.purview.features" /></td></tr>
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
    <td><a href="#subscription_get"><CopyableCode code="subscription_get" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-locations"><code>locations</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets details from a list of feature names.</td>
</tr>
<tr>
    <td><a href="#account_get"><CopyableCode code="account_get" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets details from a list of feature names.</td>
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
    <td>The name of the account.</td>
</tr>
<tr id="parameter-locations">
    <td><CopyableCode code="locations" /></td>
    <td><code>string</code></td>
    <td>Location of feature.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription identifier</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The api version to use.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="subscription_get"
    values={[
        { label: 'subscription_get', value: 'subscription_get' },
        { label: 'account_get', value: 'account_get' }
    ]}
>
<TabItem value="subscription_get">

Gets details from a list of feature names.

```sql
EXEC azure.purview.features.subscription_get 
@subscriptionId='{{ subscriptionId }}' --required, 
@locations='{{ locations }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"features": "{{ features }}"
}'
;
```
</TabItem>
<TabItem value="account_get">

Gets details from a list of feature names.

```sql
EXEC azure.purview.features.account_get 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"features": "{{ features }}"
}'
;
```
</TabItem>
</Tabs>
