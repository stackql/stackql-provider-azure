--- 
title: private_clouds_admin_credentials
hide_title: false
hide_table_of_contents: false
keywords:
  - private_clouds_admin_credentials
  - vmware
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>private_clouds_admin_credentials</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>private_clouds_admin_credentials</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.vmware.private_clouds_admin_credentials" /></td></tr>
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

successful operation

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
    <td><CopyableCode code="nsxtPassword" /></td>
    <td><code>string</code></td>
    <td>NSX-T Manager password</td>
</tr>
<tr>
    <td><CopyableCode code="nsxtUsername" /></td>
    <td><code>string</code></td>
    <td>NSX-T Manager username</td>
</tr>
<tr>
    <td><CopyableCode code="vcenterPassword" /></td>
    <td><code>string</code></td>
    <td>vCenter admin password</td>
</tr>
<tr>
    <td><CopyableCode code="vcenterUsername" /></td>
    <td><code>string</code></td>
    <td>vCenter admin username</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-privateCloudName"><code>privateCloudName</code></a></td>
    <td></td>
    <td></td>
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
<tr id="parameter-privateCloudName">
    <td><CopyableCode code="privateCloudName" /></td>
    <td><code>string</code></td>
    <td>Name of the private cloud</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
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

successful operation

```sql
SELECT
nsxtPassword,
nsxtUsername,
vcenterPassword,
vcenterUsername
FROM azure_isv.vmware.private_clouds_admin_credentials
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND privateCloudName = '{{ privateCloudName }}' -- required
;
```
</TabItem>
</Tabs>
