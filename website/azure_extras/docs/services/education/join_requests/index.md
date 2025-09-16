--- 
title: join_requests
hide_title: false
hide_table_of_contents: false
keywords:
  - join_requests
  - education
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>join_requests</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>join_requests</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.education.join_requests" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

invite request.

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
    <td>join request properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

invite request list.

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
    <td>join request properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
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
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-invoiceSectionName"><code>invoiceSectionName</code></a>, <a href="#parameter-joinRequestName"><code>joinRequestName</code></a></td>
    <td></td>
    <td>get student join requests</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-invoiceSectionName"><code>invoiceSectionName</code></a></td>
    <td><a href="#parameter-includeDenied"><code>includeDenied</code></a></td>
    <td>get student join requests</td>
</tr>
<tr>
    <td><a href="#approve"><CopyableCode code="approve" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-invoiceSectionName"><code>invoiceSectionName</code></a>, <a href="#parameter-joinRequestName"><code>joinRequestName</code></a></td>
    <td></td>
    <td>Approve student joining the redeemable lab</td>
</tr>
<tr>
    <td><a href="#deny"><CopyableCode code="deny" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-invoiceSectionName"><code>invoiceSectionName</code></a>, <a href="#parameter-joinRequestName"><code>joinRequestName</code></a></td>
    <td></td>
    <td>Deny student joining the redeemable lab</td>
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
<tr id="parameter-billingAccountName">
    <td><CopyableCode code="billingAccountName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a billing account.</td>
</tr>
<tr id="parameter-billingProfileName">
    <td><CopyableCode code="billingProfileName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a billing profile.</td>
</tr>
<tr id="parameter-invoiceSectionName">
    <td><CopyableCode code="invoiceSectionName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies an invoice section.</td>
</tr>
<tr id="parameter-joinRequestName">
    <td><CopyableCode code="joinRequestName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a join request.</td>
</tr>
<tr id="parameter-includeDenied">
    <td><CopyableCode code="includeDenied" /></td>
    <td><code>boolean</code></td>
    <td>Include denied</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

get student join requests

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure_extras.education.join_requests
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND invoiceSectionName = '{{ invoiceSectionName }}' -- required
AND joinRequestName = '{{ joinRequestName }}' -- required
;
```
</TabItem>
<TabItem value="list">

get student join requests

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure_extras.education.join_requests
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND invoiceSectionName = '{{ invoiceSectionName }}' -- required
AND includeDenied = '{{ includeDenied }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="approve"
    values={[
        { label: 'approve', value: 'approve' },
        { label: 'deny', value: 'deny' }
    ]}
>
<TabItem value="approve">

Approve student joining the redeemable lab

```sql
EXEC azure_extras.education.join_requests.approve 
@billingAccountName='{{ billingAccountName }}' --required, 
@billingProfileName='{{ billingProfileName }}' --required, 
@invoiceSectionName='{{ invoiceSectionName }}' --required, 
@joinRequestName='{{ joinRequestName }}' --required
;
```
</TabItem>
<TabItem value="deny">

Deny student joining the redeemable lab

```sql
EXEC azure_extras.education.join_requests.deny 
@billingAccountName='{{ billingAccountName }}' --required, 
@billingProfileName='{{ billingProfileName }}' --required, 
@invoiceSectionName='{{ invoiceSectionName }}' --required, 
@joinRequestName='{{ joinRequestName }}' --required
;
```
</TabItem>
</Tabs>
