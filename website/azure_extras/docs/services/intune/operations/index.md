--- 
title: operations
hide_title: false
hide_table_of_contents: false
keywords:
  - operations
  - intune
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

Creates, updates, deletes, gets or lists an <code>operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>operations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.intune.operations" /></td></tr>
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
    <td><a href="#wipe_mam_user_device"><CopyableCode code="wipe_mam_user_device" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-hostName"><code>hostName</code></a>, <a href="#parameter-userName"><code>userName</code></a>, <a href="#parameter-deviceName"><code>deviceName</code></a></td>
    <td></td>
    <td>Wipe a device for a user.</td>
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
<tr id="parameter-deviceName">
    <td><CopyableCode code="deviceName" /></td>
    <td><code>string</code></td>
    <td>device name</td>
</tr>
<tr id="parameter-hostName">
    <td><CopyableCode code="hostName" /></td>
    <td><code>string</code></td>
    <td>Location hostName for the tenant</td>
</tr>
<tr id="parameter-userName">
    <td><CopyableCode code="userName" /></td>
    <td><code>string</code></td>
    <td>unique user name</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="wipe_mam_user_device"
    values={[
        { label: 'wipe_mam_user_device', value: 'wipe_mam_user_device' }
    ]}
>
<TabItem value="wipe_mam_user_device">

Wipe a device for a user.

```sql
EXEC azure_extras.intune.operations.wipe_mam_user_device 
@hostName='{{ hostName }}' --required, 
@userName='{{ userName }}' --required, 
@deviceName='{{ deviceName }}' --required
;
```
</TabItem>
</Tabs>
