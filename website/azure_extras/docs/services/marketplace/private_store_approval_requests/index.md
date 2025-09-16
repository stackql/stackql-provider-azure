--- 
title: private_store_approval_requests
hide_title: false
hide_table_of_contents: false
keywords:
  - private_store_approval_requests
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

Creates, updates, deletes, gets or lists a <code>private_store_approval_requests</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>private_store_approval_requests</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.marketplace.private_store_approval_requests" /></td></tr>
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
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-privateStoreId"><code>privateStoreId</code></a>, <a href="#parameter-requestApprovalId"><code>requestApprovalId</code></a></td>
    <td></td>
    <td>Create approval request</td>
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
<tr id="parameter-privateStoreId">
    <td><CopyableCode code="privateStoreId" /></td>
    <td><code>string</code></td>
    <td>The store ID - must use the tenant ID</td>
</tr>
<tr id="parameter-requestApprovalId">
    <td><CopyableCode code="requestApprovalId" /></td>
    <td><code>string</code></td>
    <td>The request approval ID to get create or update</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Create approval request

```sql
INSERT INTO azure_extras.marketplace.private_store_approval_requests (
data__properties,
privateStoreId,
requestApprovalId
)
SELECT 
'{{ properties }}',
'{{ privateStoreId }}',
'{{ requestApprovalId }}'
RETURNING
id,
name,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: private_store_approval_requests
  props:
    - name: privateStoreId
      value: string
      description: Required parameter for the private_store_approval_requests resource.
    - name: requestApprovalId
      value: string
      description: Required parameter for the private_store_approval_requests resource.
    - name: properties
      value: object
      description: |
        The privateStore approval request data structure.
```
</TabItem>
</Tabs>
