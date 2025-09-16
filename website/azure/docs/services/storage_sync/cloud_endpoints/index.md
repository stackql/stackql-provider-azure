--- 
title: cloud_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - cloud_endpoints
  - storage_sync
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

Creates, updates, deletes, gets or lists a <code>cloud_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>cloud_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_sync.cloud_endpoints" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_sync_group', value: 'list_by_sync_group' }
    ]}
>
<TabItem value="get">

Cloud Endpoint object

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Cloud Endpoint properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_sync_group">

Array of Cloud Endpoint resources in Sync Group

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Cloud Endpoint properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-syncGroupName"><code>syncGroupName</code></a>, <a href="#parameter-cloudEndpointName"><code>cloudEndpointName</code></a></td>
    <td></td>
    <td>Get a given CloudEndpoint.</td>
</tr>
<tr>
    <td><a href="#list_by_sync_group"><CopyableCode code="list_by_sync_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-syncGroupName"><code>syncGroupName</code></a></td>
    <td></td>
    <td>Get a CloudEndpoint List.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-syncGroupName"><code>syncGroupName</code></a>, <a href="#parameter-cloudEndpointName"><code>cloudEndpointName</code></a></td>
    <td></td>
    <td>Create a new CloudEndpoint.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-syncGroupName"><code>syncGroupName</code></a>, <a href="#parameter-cloudEndpointName"><code>cloudEndpointName</code></a></td>
    <td></td>
    <td>Delete a given CloudEndpoint.</td>
</tr>
<tr>
    <td><a href="#pre_backup"><CopyableCode code="pre_backup" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-syncGroupName"><code>syncGroupName</code></a>, <a href="#parameter-cloudEndpointName"><code>cloudEndpointName</code></a></td>
    <td></td>
    <td>Pre Backup a given CloudEndpoint.</td>
</tr>
<tr>
    <td><a href="#post_backup"><CopyableCode code="post_backup" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-syncGroupName"><code>syncGroupName</code></a>, <a href="#parameter-cloudEndpointName"><code>cloudEndpointName</code></a></td>
    <td></td>
    <td>Post Backup a given CloudEndpoint.</td>
</tr>
<tr>
    <td><a href="#pre_restore"><CopyableCode code="pre_restore" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-syncGroupName"><code>syncGroupName</code></a>, <a href="#parameter-cloudEndpointName"><code>cloudEndpointName</code></a></td>
    <td></td>
    <td>Pre Restore a given CloudEndpoint.</td>
</tr>
<tr>
    <td><a href="#restoreheartbeat"><CopyableCode code="restoreheartbeat" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-syncGroupName"><code>syncGroupName</code></a>, <a href="#parameter-cloudEndpointName"><code>cloudEndpointName</code></a></td>
    <td></td>
    <td>Restore Heartbeat a given CloudEndpoint.</td>
</tr>
<tr>
    <td><a href="#post_restore"><CopyableCode code="post_restore" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-syncGroupName"><code>syncGroupName</code></a>, <a href="#parameter-cloudEndpointName"><code>cloudEndpointName</code></a></td>
    <td></td>
    <td>Post Restore a given CloudEndpoint.</td>
</tr>
<tr>
    <td><a href="#trigger_change_detection"><CopyableCode code="trigger_change_detection" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-syncGroupName"><code>syncGroupName</code></a>, <a href="#parameter-cloudEndpointName"><code>cloudEndpointName</code></a></td>
    <td></td>
    <td>Triggers detection of changes performed on Azure File share connected to the specified Azure File Sync Cloud Endpoint.</td>
</tr>
<tr>
    <td><a href="#afs_share_metadata_certificate_public_keys"><CopyableCode code="afs_share_metadata_certificate_public_keys" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-syncGroupName"><code>syncGroupName</code></a>, <a href="#parameter-cloudEndpointName"><code>cloudEndpointName</code></a></td>
    <td></td>
    <td>Get the AFS file share metadata signing certificate public keys.</td>
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
<tr id="parameter-cloudEndpointName">
    <td><CopyableCode code="cloudEndpointName" /></td>
    <td><code>string</code></td>
    <td>Name of Cloud Endpoint object.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-storageSyncServiceName">
    <td><CopyableCode code="storageSyncServiceName" /></td>
    <td><code>string</code></td>
    <td>Name of Storage Sync Service resource.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-syncGroupName">
    <td><CopyableCode code="syncGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of Sync Group resource.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_sync_group', value: 'list_by_sync_group' }
    ]}
>
<TabItem value="get">

Get a given CloudEndpoint.

```sql
SELECT
properties
FROM azure.storage_sync.cloud_endpoints
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND storageSyncServiceName = '{{ storageSyncServiceName }}' -- required
AND syncGroupName = '{{ syncGroupName }}' -- required
AND cloudEndpointName = '{{ cloudEndpointName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_sync_group">

Get a CloudEndpoint List.

```sql
SELECT
properties
FROM azure.storage_sync.cloud_endpoints
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND storageSyncServiceName = '{{ storageSyncServiceName }}' -- required
AND syncGroupName = '{{ syncGroupName }}' -- required
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

Create a new CloudEndpoint.

```sql
INSERT INTO azure.storage_sync.cloud_endpoints (
data__properties,
subscriptionId,
resourceGroupName,
storageSyncServiceName,
syncGroupName,
cloudEndpointName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ storageSyncServiceName }}',
'{{ syncGroupName }}',
'{{ cloudEndpointName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: cloud_endpoints
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the cloud_endpoints resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the cloud_endpoints resource.
    - name: storageSyncServiceName
      value: string
      description: Required parameter for the cloud_endpoints resource.
    - name: syncGroupName
      value: string
      description: Required parameter for the cloud_endpoints resource.
    - name: cloudEndpointName
      value: string
      description: Required parameter for the cloud_endpoints resource.
    - name: properties
      value: object
      description: |
        The parameters used to create the cloud endpoint.
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

Delete a given CloudEndpoint.

```sql
DELETE FROM azure.storage_sync.cloud_endpoints
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND storageSyncServiceName = '{{ storageSyncServiceName }}' --required
AND syncGroupName = '{{ syncGroupName }}' --required
AND cloudEndpointName = '{{ cloudEndpointName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="pre_backup"
    values={[
        { label: 'pre_backup', value: 'pre_backup' },
        { label: 'post_backup', value: 'post_backup' },
        { label: 'pre_restore', value: 'pre_restore' },
        { label: 'restoreheartbeat', value: 'restoreheartbeat' },
        { label: 'post_restore', value: 'post_restore' },
        { label: 'trigger_change_detection', value: 'trigger_change_detection' },
        { label: 'afs_share_metadata_certificate_public_keys', value: 'afs_share_metadata_certificate_public_keys' }
    ]}
>
<TabItem value="pre_backup">

Pre Backup a given CloudEndpoint.

```sql
EXEC azure.storage_sync.cloud_endpoints.pre_backup 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@storageSyncServiceName='{{ storageSyncServiceName }}' --required, 
@syncGroupName='{{ syncGroupName }}' --required, 
@cloudEndpointName='{{ cloudEndpointName }}' --required 
@@json=
'{
"azureFileShare": "{{ azureFileShare }}"
}'
;
```
</TabItem>
<TabItem value="post_backup">

Post Backup a given CloudEndpoint.

```sql
EXEC azure.storage_sync.cloud_endpoints.post_backup 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@storageSyncServiceName='{{ storageSyncServiceName }}' --required, 
@syncGroupName='{{ syncGroupName }}' --required, 
@cloudEndpointName='{{ cloudEndpointName }}' --required 
@@json=
'{
"azureFileShare": "{{ azureFileShare }}"
}'
;
```
</TabItem>
<TabItem value="pre_restore">

Pre Restore a given CloudEndpoint.

```sql
EXEC azure.storage_sync.cloud_endpoints.pre_restore 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@storageSyncServiceName='{{ storageSyncServiceName }}' --required, 
@syncGroupName='{{ syncGroupName }}' --required, 
@cloudEndpointName='{{ cloudEndpointName }}' --required 
@@json=
'{
"partition": "{{ partition }}", 
"replicaGroup": "{{ replicaGroup }}", 
"requestId": "{{ requestId }}", 
"azureFileShareUri": "{{ azureFileShareUri }}", 
"status": "{{ status }}", 
"sourceAzureFileShareUri": "{{ sourceAzureFileShareUri }}", 
"backupMetadataPropertyBag": "{{ backupMetadataPropertyBag }}", 
"restoreFileSpec": "{{ restoreFileSpec }}", 
"pauseWaitForSyncDrainTimePeriodInSeconds": {{ pauseWaitForSyncDrainTimePeriodInSeconds }}
}'
;
```
</TabItem>
<TabItem value="restoreheartbeat">

Restore Heartbeat a given CloudEndpoint.

```sql
EXEC azure.storage_sync.cloud_endpoints.restoreheartbeat 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@storageSyncServiceName='{{ storageSyncServiceName }}' --required, 
@syncGroupName='{{ syncGroupName }}' --required, 
@cloudEndpointName='{{ cloudEndpointName }}' --required
;
```
</TabItem>
<TabItem value="post_restore">

Post Restore a given CloudEndpoint.

```sql
EXEC azure.storage_sync.cloud_endpoints.post_restore 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@storageSyncServiceName='{{ storageSyncServiceName }}' --required, 
@syncGroupName='{{ syncGroupName }}' --required, 
@cloudEndpointName='{{ cloudEndpointName }}' --required 
@@json=
'{
"partition": "{{ partition }}", 
"replicaGroup": "{{ replicaGroup }}", 
"requestId": "{{ requestId }}", 
"azureFileShareUri": "{{ azureFileShareUri }}", 
"status": "{{ status }}", 
"sourceAzureFileShareUri": "{{ sourceAzureFileShareUri }}", 
"failedFileList": "{{ failedFileList }}", 
"restoreFileSpec": "{{ restoreFileSpec }}"
}'
;
```
</TabItem>
<TabItem value="trigger_change_detection">

Triggers detection of changes performed on Azure File share connected to the specified Azure File Sync Cloud Endpoint.

```sql
EXEC azure.storage_sync.cloud_endpoints.trigger_change_detection 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@storageSyncServiceName='{{ storageSyncServiceName }}' --required, 
@syncGroupName='{{ syncGroupName }}' --required, 
@cloudEndpointName='{{ cloudEndpointName }}' --required 
@@json=
'{
"directoryPath": "{{ directoryPath }}", 
"changeDetectionMode": "{{ changeDetectionMode }}", 
"paths": "{{ paths }}"
}'
;
```
</TabItem>
<TabItem value="afs_share_metadata_certificate_public_keys">

Get the AFS file share metadata signing certificate public keys.

```sql
EXEC azure.storage_sync.cloud_endpoints.afs_share_metadata_certificate_public_keys 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@storageSyncServiceName='{{ storageSyncServiceName }}' --required, 
@syncGroupName='{{ syncGroupName }}' --required, 
@cloudEndpointName='{{ cloudEndpointName }}' --required
;
```
</TabItem>
</Tabs>
