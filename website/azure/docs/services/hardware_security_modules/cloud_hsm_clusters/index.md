--- 
title: cloud_hsm_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - cloud_hsm_clusters
  - hardware_security_modules
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

Creates, updates, deletes, gets or lists a <code>cloud_hsm_clusters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>cloud_hsm_clusters</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hardware_security_modules.cloud_hsm_clusters" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Retrieved Cloud HSM Cluster

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity (system assigned and/or user assigned identities)</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the Cloud HSM Cluster</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>SKU details</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

Get information about all Cloud HSM Clusters in the specified resource group.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity (system assigned and/or user assigned identities)</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the Cloud HSM Cluster</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>SKU details</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

Get information about all Cloud HSM Clusters in the specified subscription.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity (system assigned and/or user assigned identities)</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the Cloud HSM Cluster</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>SKU details</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudHsmClusterName"><code>cloudHsmClusterName</code></a></td>
    <td></td>
    <td>Gets the specified Cloud HSM Cluster</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td><a href="#parameter-$skiptoken"><code>$skiptoken</code></a></td>
    <td>The List operation gets information about the Cloud HSM Clusters associated with the subscription and within the specified resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$skiptoken"><code>$skiptoken</code></a></td>
    <td>The List operation gets information about the Cloud HSM Clusters associated with the subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudHsmClusterName"><code>cloudHsmClusterName</code></a></td>
    <td></td>
    <td>Create or Update a Cloud HSM Cluster in the specified subscription.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudHsmClusterName"><code>cloudHsmClusterName</code></a></td>
    <td></td>
    <td>Update a Cloud HSM Cluster in the specified subscription.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudHsmClusterName"><code>cloudHsmClusterName</code></a></td>
    <td></td>
    <td>Deletes the specified Cloud HSM Cluster</td>
</tr>
<tr>
    <td><a href="#validate_backup_properties"><CopyableCode code="validate_backup_properties" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudHsmClusterName"><code>cloudHsmClusterName</code></a></td>
    <td></td>
    <td>Pre Backup operation to validate whether the customer can perform a backup on the Cloud HSM Cluster resource in the specified subscription.</td>
</tr>
<tr>
    <td><a href="#backup"><CopyableCode code="backup" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudHsmClusterName"><code>cloudHsmClusterName</code></a></td>
    <td></td>
    <td>Create a backup of the Cloud HSM Cluster in the specified subscription</td>
</tr>
<tr>
    <td><a href="#validate_restore_properties"><CopyableCode code="validate_restore_properties" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudHsmClusterName"><code>cloudHsmClusterName</code></a>, <a href="#parameter-backupId"><code>backupId</code></a></td>
    <td></td>
    <td>Queued validating pre restore operation</td>
</tr>
<tr>
    <td><a href="#restore"><CopyableCode code="restore" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudHsmClusterName"><code>cloudHsmClusterName</code></a>, <a href="#parameter-backupId"><code>backupId</code></a></td>
    <td></td>
    <td>Restores all key materials of a specified Cloud HSM Cluster</td>
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
<tr id="parameter-cloudHsmClusterName">
    <td><CopyableCode code="cloudHsmClusterName" /></td>
    <td><code>string</code></td>
    <td>The name of the Cloud HSM Cluster within the specified resource group. Cloud HSM Cluster names must be between 3 and 23 characters in length.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-$skiptoken">
    <td><CopyableCode code="$skiptoken" /></td>
    <td><code>string</code></td>
    <td>The page-continuation token to use with a paged version of this API</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Gets the specified Cloud HSM Cluster

```sql
SELECT
identity,
properties,
sku
FROM azure.hardware_security_modules.cloud_hsm_clusters
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND cloudHsmClusterName = '{{ cloudHsmClusterName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

The List operation gets information about the Cloud HSM Clusters associated with the subscription and within the specified resource group.

```sql
SELECT
identity,
properties,
sku
FROM azure.hardware_security_modules.cloud_hsm_clusters
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND $skiptoken = '{{ $skiptoken }}'
;
```
</TabItem>
<TabItem value="list_by_subscription">

The List operation gets information about the Cloud HSM Clusters associated with the subscription.

```sql
SELECT
identity,
properties,
sku
FROM azure.hardware_security_modules.cloud_hsm_clusters
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND $skiptoken = '{{ $skiptoken }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Create or Update a Cloud HSM Cluster in the specified subscription.

```sql
INSERT INTO azure.hardware_security_modules.cloud_hsm_clusters (
data__properties,
data__identity,
data__sku,
subscriptionId,
resourceGroupName,
cloudHsmClusterName
)
SELECT 
'{{ properties }}',
'{{ identity }}',
'{{ sku }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ cloudHsmClusterName }}'
RETURNING
identity,
properties,
sku
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: cloud_hsm_clusters
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the cloud_hsm_clusters resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the cloud_hsm_clusters resource.
    - name: cloudHsmClusterName
      value: string
      description: Required parameter for the cloud_hsm_clusters resource.
    - name: properties
      value: object
      description: |
        Properties of the Cloud HSM Cluster
    - name: identity
      value: object
      description: |
        Managed service identity (system assigned and/or user assigned identities)
    - name: sku
      value: object
      description: |
        SKU details
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

Update a Cloud HSM Cluster in the specified subscription.

```sql
UPDATE azure.hardware_security_modules.cloud_hsm_clusters
SET 
data__tags = '{{ tags }}',
data__identity = '{{ identity }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND cloudHsmClusterName = '{{ cloudHsmClusterName }}' --required
RETURNING
identity,
properties,
sku;
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

Deletes the specified Cloud HSM Cluster

```sql
DELETE FROM azure.hardware_security_modules.cloud_hsm_clusters
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND cloudHsmClusterName = '{{ cloudHsmClusterName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="validate_backup_properties"
    values={[
        { label: 'validate_backup_properties', value: 'validate_backup_properties' },
        { label: 'backup', value: 'backup' },
        { label: 'validate_restore_properties', value: 'validate_restore_properties' },
        { label: 'restore', value: 'restore' }
    ]}
>
<TabItem value="validate_backup_properties">

Pre Backup operation to validate whether the customer can perform a backup on the Cloud HSM Cluster resource in the specified subscription.

```sql
EXEC azure.hardware_security_modules.cloud_hsm_clusters.validate_backup_properties 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@cloudHsmClusterName='{{ cloudHsmClusterName }}' --required 
@@json=
'{
"azureStorageBlobContainerUri": "{{ azureStorageBlobContainerUri }}", 
"token": "{{ token }}"
}'
;
```
</TabItem>
<TabItem value="backup">

Create a backup of the Cloud HSM Cluster in the specified subscription

```sql
EXEC azure.hardware_security_modules.cloud_hsm_clusters.backup 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@cloudHsmClusterName='{{ cloudHsmClusterName }}' --required 
@@json=
'{
"azureStorageBlobContainerUri": "{{ azureStorageBlobContainerUri }}", 
"token": "{{ token }}"
}'
;
```
</TabItem>
<TabItem value="validate_restore_properties">

Queued validating pre restore operation

```sql
EXEC azure.hardware_security_modules.cloud_hsm_clusters.validate_restore_properties 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@cloudHsmClusterName='{{ cloudHsmClusterName }}' --required 
@@json=
'{
"backupId": "{{ backupId }}", 
"azureStorageBlobContainerUri": "{{ azureStorageBlobContainerUri }}", 
"token": "{{ token }}"
}'
;
```
</TabItem>
<TabItem value="restore">

Restores all key materials of a specified Cloud HSM Cluster

```sql
EXEC azure.hardware_security_modules.cloud_hsm_clusters.restore 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@cloudHsmClusterName='{{ cloudHsmClusterName }}' --required 
@@json=
'{
"backupId": "{{ backupId }}", 
"azureStorageBlobContainerUri": "{{ azureStorageBlobContainerUri }}", 
"token": "{{ token }}"
}'
;
```
</TabItem>
</Tabs>
