--- 
title: file_shares
hide_title: false
hide_table_of_contents: false
keywords:
  - file_shares
  - storage
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

Creates, updates, deletes, gets or lists a <code>file_shares</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>file_shares</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage.file_shares" /></td></tr>
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

OK -- Get Share operation completed successfully.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Resource Etag.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the file share. (x-ms-client-name: FileShareProperties)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK -- List Shares operation completed successfully.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Resource Etag.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The file share properties be listed out.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-shareName"><code>shareName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a>, <a href="#parameter-x-ms-snapshot"><code>x-ms-snapshot</code></a></td>
    <td>Gets properties of a specified share.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$maxpagesize"><code>$maxpagesize</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Lists all shares.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-shareName"><code>shareName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Creates a new share under the specified account as described by request body. The share resource includes metadata and properties for that share. It does not include a list of the files contained by the share. </td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-shareName"><code>shareName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates share properties as specified in request body. Properties not mentioned in the request will not be changed. Update fails if the specified share does not already exist. </td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-shareName"><code>shareName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-x-ms-snapshot"><code>x-ms-snapshot</code></a>, <a href="#parameter-$include"><code>$include</code></a></td>
    <td>Deletes specified share under its account.</td>
</tr>
<tr>
    <td><a href="#restore"><CopyableCode code="restore" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-shareName"><code>shareName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-deletedShareName"><code>deletedShareName</code></a>, <a href="#parameter-deletedShareVersion"><code>deletedShareVersion</code></a></td>
    <td></td>
    <td>Restore a file share within a valid retention days if share soft delete is enabled</td>
</tr>
<tr>
    <td><a href="#lease"><CopyableCode code="lease" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-shareName"><code>shareName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-action"><code>action</code></a></td>
    <td><a href="#parameter-x-ms-snapshot"><code>x-ms-snapshot</code></a></td>
    <td>The Lease Share operation establishes and manages a lock on a share for delete operations. The lock duration can be 15 to 60 seconds, or can be infinite.</td>
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
    <td>The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group within the user's subscription. The name is case insensitive.</td>
</tr>
<tr id="parameter-shareName">
    <td><CopyableCode code="shareName" /></td>
    <td><code>string</code></td>
    <td>The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>Optional, used to expand the properties within share's properties. Valid values are: snapshots. Should be passed as a string with delimiter ','</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Optional. When specified, only share names starting with the filter will be listed.</td>
</tr>
<tr id="parameter-$include">
    <td><CopyableCode code="$include" /></td>
    <td><code>string</code></td>
    <td>Optional. Valid values are: snapshots, leased-snapshots, none. The default value is snapshots. For 'snapshots', the file share is deleted including all of its file share snapshots. If the file share contains leased-snapshots, the deletion fails. For 'leased-snapshots', the file share is deleted included all of its file share snapshots (leased/unleased). For 'none', the file share is deleted if it has no share snapshots. If the file share contains any snapshots (leased or unleased), the deletion fails.</td>
</tr>
<tr id="parameter-$maxpagesize">
    <td><CopyableCode code="$maxpagesize" /></td>
    <td><code>string</code></td>
    <td>Optional. Specified maximum number of shares that can be included in the list.</td>
</tr>
<tr id="parameter-x-ms-snapshot">
    <td><CopyableCode code="x-ms-snapshot" /></td>
    <td><code>string</code></td>
    <td>Optional. Specify the snapshot time to lease a snapshot.</td>
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

Gets properties of a specified share.

```sql
SELECT
etag,
properties
FROM azure.storage.file_shares
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND shareName = '{{ shareName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $expand = '{{ $expand }}'
AND x-ms-snapshot = '{{ x-ms-snapshot }}'
;
```
</TabItem>
<TabItem value="list">

Lists all shares.

```sql
SELECT
etag,
properties
FROM azure.storage.file_shares
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $maxpagesize = '{{ $maxpagesize }}'
AND $filter = '{{ $filter }}'
AND $expand = '{{ $expand }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Creates a new share under the specified account as described by request body. The share resource includes metadata and properties for that share. It does not include a list of the files contained by the share. 

```sql
INSERT INTO azure.storage.file_shares (
data__properties,
resourceGroupName,
accountName,
shareName,
subscriptionId,
$expand
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ accountName }}',
'{{ shareName }}',
'{{ subscriptionId }}',
'{{ $expand }}'
RETURNING
etag,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: file_shares
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the file_shares resource.
    - name: accountName
      value: string
      description: Required parameter for the file_shares resource.
    - name: shareName
      value: string
      description: Required parameter for the file_shares resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the file_shares resource.
    - name: properties
      value: object
      description: |
        Properties of the file share.
    - name: $expand
      value: string
      description: Optional, used to expand the properties within share's properties. Valid values are: snapshots. Should be passed as a string with delimiter ','
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Updates share properties as specified in request body. Properties not mentioned in the request will not be changed. Update fails if the specified share does not already exist. 

```sql
UPDATE azure.storage.file_shares
SET 
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND shareName = '{{ shareName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
etag,
properties;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Deletes specified share under its account.

```sql
DELETE FROM azure.storage.file_shares
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND shareName = '{{ shareName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND x-ms-snapshot = '{{ x-ms-snapshot }}'
AND $include = '{{ $include }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="restore"
    values={[
        { label: 'restore', value: 'restore' },
        { label: 'lease', value: 'lease' }
    ]}
>
<TabItem value="restore">

Restore a file share within a valid retention days if share soft delete is enabled

```sql
EXEC azure.storage.file_shares.restore 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@shareName='{{ shareName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"deletedShareName": "{{ deletedShareName }}", 
"deletedShareVersion": "{{ deletedShareVersion }}"
}'
;
```
</TabItem>
<TabItem value="lease">

The Lease Share operation establishes and manages a lock on a share for delete operations. The lock duration can be 15 to 60 seconds, or can be infinite.

```sql
EXEC azure.storage.file_shares.lease 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@shareName='{{ shareName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@x-ms-snapshot='{{ x-ms-snapshot }}' 
@@json=
'{
"action": "{{ action }}", 
"leaseId": "{{ leaseId }}", 
"breakPeriod": {{ breakPeriod }}, 
"leaseDuration": {{ leaseDuration }}, 
"proposedLeaseId": "{{ proposedLeaseId }}"
}'
;
```
</TabItem>
</Tabs>
