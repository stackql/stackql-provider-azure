--- 
title: private_store_admin_request_approvals
hide_title: false
hide_table_of_contents: false
keywords:
  - private_store_admin_request_approvals
  - marketplace
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

Creates, updates, deletes, gets or lists a <code>private_store_admin_request_approvals</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>private_store_admin_request_approvals</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.marketplace.private_store_admin_request_approvals" /></td></tr>
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
    <td>The resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The privateStore admin Approval request data structure.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
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
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-adminRequestApprovalId"><code>adminRequestApprovalId</code></a>, <a href="#parameter-publisherId"><code>publisherId</code></a></td>
    <td></td>
    <td>Get open approval requests</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-adminRequestApprovalId"><code>adminRequestApprovalId</code></a></td>
    <td></td>
    <td>Update the admin action, weather the request is approved or rejected and the approved plans</td>
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
<tr id="parameter-adminRequestApprovalId">
    <td><CopyableCode code="adminRequestApprovalId" /></td>
    <td><code>string</code></td>
    <td>The admin request approval ID to get create or update</td>
</tr>
<tr id="parameter-privateStoreId">
    <td><CopyableCode code="privateStoreId" /></td>
    <td><code>string</code></td>
    <td>The store ID - must use the tenant ID</td>
</tr>
<tr id="parameter-publisherId">
    <td><CopyableCode code="publisherId" /></td>
    <td><code>string</code></td>
    <td>The publisher id of this offer.</td>
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

Get open approval requests

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure_extras.marketplace.private_store_admin_request_approvals
WHERE privateStoreId = '{{ privateStoreId }}' -- required
AND adminRequestApprovalId = '{{ adminRequestApprovalId }}' -- required
AND publisherId = '{{ publisherId }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Update the admin action, weather the request is approved or rejected and the approved plans

```sql
REPLACE azure_extras.marketplace.private_store_admin_request_approvals
SET 
data__properties = '{{ properties }}'
WHERE 
privateStoreId = '{{ privateStoreId }}' --required
AND adminRequestApprovalId = '{{ adminRequestApprovalId }}' --required
RETURNING
id,
name,
properties,
systemData,
type;
```
</TabItem>
</Tabs>
