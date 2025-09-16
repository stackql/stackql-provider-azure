--- 
title: operations
hide_title: false
hide_table_of_contents: false
keywords:
  - operations
  - cognitive_services
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

Creates, updates, deletes, gets or lists an <code>operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>operations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cognitive_services.operations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

OK.

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the operation, as per Resource-Based Access Control (RBAC). Examples: "Microsoft.Compute/virtualMachines/write", "Microsoft.Compute/virtualMachines/capture/action"</td>
</tr>
<tr>
    <td><CopyableCode code="actionType" /></td>
    <td><code>string</code></td>
    <td>Enum. Indicates the action type. "Internal" refers to actions that are for internal only APIs.</td>
</tr>
<tr>
    <td><CopyableCode code="display" /></td>
    <td><code>object</code></td>
    <td>Localized display information for this particular operation.</td>
</tr>
<tr>
    <td><CopyableCode code="isDataAction" /></td>
    <td><code>boolean</code></td>
    <td>Whether the operation applies to data-plane. This is "true" for data-plane operations and "false" for ARM/control-plane operations.</td>
</tr>
<tr>
    <td><CopyableCode code="origin" /></td>
    <td><code>string</code></td>
    <td>The intended executor of the operation; as in Resource Based Access Control (RBAC) and audit logs UX. Default value is "user,system"</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>Lists all the available Cognitive Services account operations.</td>
</tr>
<tr>
    <td><a href="#check_sku_availability"><CopyableCode code="check_sku_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-skus"><code>skus</code></a>, <a href="#parameter-kind"><code>kind</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Check available SKUs.</td>
</tr>
<tr>
    <td><a href="#check_domain_availability"><CopyableCode code="check_domain_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-subdomainName"><code>subdomainName</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Check whether a domain is available.</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Lists all the available Cognitive Services account operations.

```sql
SELECT
name,
actionType,
display,
isDataAction,
origin
FROM azure.cognitive_services.operations
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="check_sku_availability"
    values={[
        { label: 'check_sku_availability', value: 'check_sku_availability' },
        { label: 'check_domain_availability', value: 'check_domain_availability' }
    ]}
>
<TabItem value="check_sku_availability">

Check available SKUs.

```sql
EXEC azure.cognitive_services.operations.check_sku_availability 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"skus": "{{ skus }}", 
"kind": "{{ kind }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
<TabItem value="check_domain_availability">

Check whether a domain is available.

```sql
EXEC azure.cognitive_services.operations.check_domain_availability 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"subdomainName": "{{ subdomainName }}", 
"type": "{{ type }}", 
"kind": "{{ kind }}"
}'
;
```
</TabItem>
</Tabs>
