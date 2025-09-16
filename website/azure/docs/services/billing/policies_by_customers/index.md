--- 
title: policies_by_customers
hide_title: false
hide_table_of_contents: false
keywords:
  - policies_by_customers
  - billing
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

Creates, updates, deletes, gets or lists a <code>policies_by_customers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>policies_by_customers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.policies_by_customers" /></td></tr>
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
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-customerName"><code>customerName</code></a></td>
    <td></td>
    <td>Updates the policies for a customer. This operation is supported only for billing accounts with agreement type Microsoft Partner Agreement.</td>
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
<tr id="parameter-customerName">
    <td><CopyableCode code="customerName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a customer.</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Updates the policies for a customer. This operation is supported only for billing accounts with agreement type Microsoft Partner Agreement.

```sql
INSERT INTO azure.billing.policies_by_customers (
data__tags,
data__properties,
billingAccountName,
billingProfileName,
customerName
)
SELECT 
'{{ tags }}',
'{{ properties }}',
'{{ billingAccountName }}',
'{{ billingProfileName }}',
'{{ customerName }}'
RETURNING
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: policies_by_customers
  props:
    - name: billingAccountName
      value: string
      description: Required parameter for the policies_by_customers resource.
    - name: billingProfileName
      value: string
      description: Required parameter for the policies_by_customers resource.
    - name: customerName
      value: string
      description: Required parameter for the policies_by_customers resource.
    - name: tags
      value: object
      description: |
        Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
    - name: properties
      value: object
      description: |
        A policy at customer scope.
```
</TabItem>
</Tabs>
