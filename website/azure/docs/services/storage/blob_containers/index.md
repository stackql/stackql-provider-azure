--- 
title: blob_containers
hide_title: false
hide_table_of_contents: false
keywords:
  - blob_containers
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

Creates, updates, deletes, gets or lists a <code>blob_containers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>blob_containers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage.blob_containers" /></td></tr>
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

OK -- Get Container operation completed successfully.

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
    <td>Properties of the blob container. (x-ms-client-name: ContainerProperties)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK -- List Container operation completed successfully.

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
    <td>The blob container properties be listed out.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets properties of a specified container. </td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$maxpagesize"><code>$maxpagesize</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$include"><code>$include</code></a></td>
    <td>Lists all containers and does not support a prefix like data plane. Also SRP today does not return continuation token.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates a new container under the specified account as described by request body. The container resource includes metadata and properties for that container. It does not include a list of the blobs contained by the container. </td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates container properties as specified in request body. Properties not mentioned in the request will be unchanged. Update fails if the specified container doesn't already exist. </td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes specified container under its account.</td>
</tr>
<tr>
    <td><a href="#set_legal_hold"><CopyableCode code="set_legal_hold" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-tags"><code>tags</code></a></td>
    <td></td>
    <td>Sets legal hold tags. Setting the same tag results in an idempotent operation. SetLegalHold follows an append pattern and does not clear out the existing tags that are not specified in the request.</td>
</tr>
<tr>
    <td><a href="#clear_legal_hold"><CopyableCode code="clear_legal_hold" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-tags"><code>tags</code></a></td>
    <td></td>
    <td>Clears legal hold tags. Clearing the same or non-existent tag results in an idempotent operation. ClearLegalHold clears out only the specified tags in the request.</td>
</tr>
<tr>
    <td><a href="#lock_immutability_policy"><CopyableCode code="lock_immutability_policy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td></td>
    <td>Sets the ImmutabilityPolicy to Locked state. The only action allowed on a Locked policy is ExtendImmutabilityPolicy action. ETag in If-Match is required for this operation.</td>
</tr>
<tr>
    <td><a href="#extend_immutability_policy"><CopyableCode code="extend_immutability_policy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Extends the immutabilityPeriodSinceCreationInDays of a locked immutabilityPolicy. The only action allowed on a Locked policy will be this action. ETag in If-Match is required for this operation.</td>
</tr>
<tr>
    <td><a href="#lease"><CopyableCode code="lease" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-action"><code>action</code></a></td>
    <td></td>
    <td>The Lease Container operation establishes and manages a lock on a container for delete operations. The lock duration can be 15 to 60 seconds, or can be infinite.</td>
</tr>
<tr>
    <td><a href="#object_level_worm"><CopyableCode code="object_level_worm" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>This operation migrates a blob container from container level WORM to object level immutability enabled container. Prerequisites require a container level immutability policy either in locked or unlocked state, Account level versioning must be enabled and there should be no Legal hold on the container.</td>
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
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>The entity state (ETag) version of the immutability policy to update must be returned to the server for all update operations. The ETag value must include the leading and trailing double quotes as returned by the service.</td>
</tr>
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.</td>
</tr>
<tr id="parameter-containerName">
    <td><CopyableCode code="containerName" /></td>
    <td><code>string</code></td>
    <td>The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group within the user's subscription. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Optional. When specified, only container names starting with the filter will be listed.</td>
</tr>
<tr id="parameter-$include">
    <td><CopyableCode code="$include" /></td>
    <td><code>string</code></td>
    <td>Optional, used to include the properties for soft deleted blob containers.</td>
</tr>
<tr id="parameter-$maxpagesize">
    <td><CopyableCode code="$maxpagesize" /></td>
    <td><code>string</code></td>
    <td>Optional. Specified maximum number of containers that can be included in the list.</td>
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

Gets properties of a specified container. 

```sql
SELECT
etag,
properties
FROM azure.storage.blob_containers
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND containerName = '{{ containerName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all containers and does not support a prefix like data plane. Also SRP today does not return continuation token.

```sql
SELECT
etag,
properties
FROM azure.storage.blob_containers
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $maxpagesize = '{{ $maxpagesize }}'
AND $filter = '{{ $filter }}'
AND $include = '{{ $include }}'
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

Creates a new container under the specified account as described by request body. The container resource includes metadata and properties for that container. It does not include a list of the blobs contained by the container. 

```sql
INSERT INTO azure.storage.blob_containers (
data__properties,
resourceGroupName,
accountName,
containerName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ accountName }}',
'{{ containerName }}',
'{{ subscriptionId }}'
RETURNING
etag,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: blob_containers
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the blob_containers resource.
    - name: accountName
      value: string
      description: Required parameter for the blob_containers resource.
    - name: containerName
      value: string
      description: Required parameter for the blob_containers resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the blob_containers resource.
    - name: properties
      value: object
      description: |
        Properties of the blob container.
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

Updates container properties as specified in request body. Properties not mentioned in the request will be unchanged. Update fails if the specified container doesn't already exist. 

```sql
UPDATE azure.storage.blob_containers
SET 
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND containerName = '{{ containerName }}' --required
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

Deletes specified container under its account.

```sql
DELETE FROM azure.storage.blob_containers
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND containerName = '{{ containerName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="set_legal_hold"
    values={[
        { label: 'set_legal_hold', value: 'set_legal_hold' },
        { label: 'clear_legal_hold', value: 'clear_legal_hold' },
        { label: 'lock_immutability_policy', value: 'lock_immutability_policy' },
        { label: 'extend_immutability_policy', value: 'extend_immutability_policy' },
        { label: 'lease', value: 'lease' },
        { label: 'object_level_worm', value: 'object_level_worm' }
    ]}
>
<TabItem value="set_legal_hold">

Sets legal hold tags. Setting the same tag results in an idempotent operation. SetLegalHold follows an append pattern and does not clear out the existing tags that are not specified in the request.

```sql
EXEC azure.storage.blob_containers.set_legal_hold 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@containerName='{{ containerName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"tags": "{{ tags }}", 
"allowProtectedAppendWritesAll": {{ allowProtectedAppendWritesAll }}
}'
;
```
</TabItem>
<TabItem value="clear_legal_hold">

Clears legal hold tags. Clearing the same or non-existent tag results in an idempotent operation. ClearLegalHold clears out only the specified tags in the request.

```sql
EXEC azure.storage.blob_containers.clear_legal_hold 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@containerName='{{ containerName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"tags": "{{ tags }}", 
"allowProtectedAppendWritesAll": {{ allowProtectedAppendWritesAll }}
}'
;
```
</TabItem>
<TabItem value="lock_immutability_policy">

Sets the ImmutabilityPolicy to Locked state. The only action allowed on a Locked policy is ExtendImmutabilityPolicy action. ETag in If-Match is required for this operation.

```sql
EXEC azure.storage.blob_containers.lock_immutability_policy 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@containerName='{{ containerName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@If-Match='{{ If-Match }}' --required
;
```
</TabItem>
<TabItem value="extend_immutability_policy">

Extends the immutabilityPeriodSinceCreationInDays of a locked immutabilityPolicy. The only action allowed on a Locked policy will be this action. ETag in If-Match is required for this operation.

```sql
EXEC azure.storage.blob_containers.extend_immutability_policy 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@containerName='{{ containerName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@If-Match='{{ If-Match }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="lease">

The Lease Container operation establishes and manages a lock on a container for delete operations. The lock duration can be 15 to 60 seconds, or can be infinite.

```sql
EXEC azure.storage.blob_containers.lease 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@containerName='{{ containerName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
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
<TabItem value="object_level_worm">

This operation migrates a blob container from container level WORM to object level immutability enabled container. Prerequisites require a container level immutability policy either in locked or unlocked state, Account level versioning must be enabled and there should be no Legal hold on the container.

```sql
EXEC azure.storage.blob_containers.object_level_worm 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@containerName='{{ containerName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
