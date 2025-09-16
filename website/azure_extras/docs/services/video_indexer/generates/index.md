--- 
title: generates
hide_title: false
hide_table_of_contents: false
keywords:
  - generates
  - video_indexer
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

Creates, updates, deletes, gets or lists a <code>generates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>generates</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.video_indexer.generates" /></td></tr>
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
    <td><a href="#access_token"><CopyableCode code="access_token" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-permissionType"><code>permissionType</code></a>, <a href="#parameter-scope"><code>scope</code></a></td>
    <td></td>
    <td>Generate an Azure Video Indexer access token.</td>
</tr>
<tr>
    <td><a href="#restricted_viewer_access_token"><CopyableCode code="restricted_viewer_access_token" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-scope"><code>scope</code></a></td>
    <td></td>
    <td>Generate an Azure Video Indexer restricted viewer access token.</td>
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
    <td>The name of the Azure Video Indexer account.</td>
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

## Lifecycle Methods

<Tabs
    defaultValue="access_token"
    values={[
        { label: 'access_token', value: 'access_token' },
        { label: 'restricted_viewer_access_token', value: 'restricted_viewer_access_token' }
    ]}
>
<TabItem value="access_token">

Generate an Azure Video Indexer access token.

```sql
EXEC azure_extras.video_indexer.generates.access_token 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required 
@@json=
'{
"permissionType": "{{ permissionType }}", 
"scope": "{{ scope }}", 
"videoId": "{{ videoId }}", 
"projectId": "{{ projectId }}"
}'
;
```
</TabItem>
<TabItem value="restricted_viewer_access_token">

Generate an Azure Video Indexer restricted viewer access token.

```sql
EXEC azure_extras.video_indexer.generates.restricted_viewer_access_token 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required 
@@json=
'{
"scope": "{{ scope }}", 
"videoId": "{{ videoId }}", 
"projectId": "{{ projectId }}"
}'
;
```
</TabItem>
</Tabs>
