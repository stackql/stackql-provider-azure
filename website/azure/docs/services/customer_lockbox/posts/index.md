--- 
title: posts
hide_title: false
hide_table_of_contents: false
keywords:
  - posts
  - customer_lockbox
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

Creates, updates, deletes, gets or lists a <code>posts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>posts</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.customer_lockbox.posts" /></td></tr>
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
    <td><a href="#enable_lockbox"><CopyableCode code="enable_lockbox" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td></td>
    <td></td>
    <td>Enable Tenant for Lockbox </td>
</tr>
<tr>
    <td><a href="#disable_lockbox"><CopyableCode code="disable_lockbox" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td></td>
    <td></td>
    <td>Disable Tenant for Lockbox </td>
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
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="enable_lockbox"
    values={[
        { label: 'enable_lockbox', value: 'enable_lockbox' },
        { label: 'disable_lockbox', value: 'disable_lockbox' }
    ]}
>
<TabItem value="enable_lockbox">

Enable Tenant for Lockbox 

```sql
EXEC azure.customer_lockbox.posts.enable_lockbox 

;
```
</TabItem>
<TabItem value="disable_lockbox">

Disable Tenant for Lockbox 

```sql
EXEC azure.customer_lockbox.posts.disable_lockbox 

;
```
</TabItem>
</Tabs>
