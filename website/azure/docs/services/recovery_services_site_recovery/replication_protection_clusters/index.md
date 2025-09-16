--- 
title: replication_protection_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - replication_protection_clusters
  - recovery_services_site_recovery
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

Creates, updates, deletes, gets or lists a <code>replication_protection_clusters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>replication_protection_clusters</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.replication_protection_clusters" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_replication_protection_containers', value: 'list_by_replication_protection_containers' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The protection cluster Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the protection cluster.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The custom data.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The Type of the object.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_replication_protection_containers">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The protection cluster Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the protection cluster.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The custom data.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The Type of the object.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The protection cluster Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the protection cluster.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The custom data.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The Type of the object.</td>
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
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicationProtectionClusterName"><code>replicationProtectionClusterName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets the details of an ASR replication protection cluster.</td>
</tr>
<tr>
    <td><a href="#list_by_replication_protection_containers"><CopyableCode code="list_by_replication_protection_containers" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets the list of ASR replication protected clusters in the protection container.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-skipToken"><code>skipToken</code></a>, <a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Gets the list of ASR replication protected clusters in the vault.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicationProtectionClusterName"><code>replicationProtectionClusterName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to create an ASR replication protection cluster item.</td>
</tr>
<tr>
    <td><a href="#purge"><CopyableCode code="purge" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicationProtectionClusterName"><code>replicationProtectionClusterName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to purge the replication protection cluster. This operation will force delete the replication protection cluster. Use the remove operation on replication protection cluster to perform a clean disable replication protection cluster.</td>
</tr>
<tr>
    <td><a href="#apply_recovery_point"><CopyableCode code="apply_recovery_point" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicationProtectionClusterName"><code>replicationProtectionClusterName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Operation to apply a new cluster recovery point on the Protection cluster.</td>
</tr>
<tr>
    <td><a href="#failover_commit"><CopyableCode code="failover_commit" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicationProtectionClusterName"><code>replicationProtectionClusterName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Operation to initiate commit failover of the replication protection cluster.</td>
</tr>
<tr>
    <td><a href="#repair_replication"><CopyableCode code="repair_replication" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicationProtectionClusterName"><code>replicationProtectionClusterName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to repair replication protection cluster.</td>
</tr>
<tr>
    <td><a href="#test_failover"><CopyableCode code="test_failover" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicationProtectionClusterName"><code>replicationProtectionClusterName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Operation to initiate a failover of the replication protection cluster.</td>
</tr>
<tr>
    <td><a href="#test_failover_cleanup"><CopyableCode code="test_failover_cleanup" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicationProtectionClusterName"><code>replicationProtectionClusterName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Operation to clean up the test failover of a replication protected cluster.</td>
</tr>
<tr>
    <td><a href="#unplanned_failover"><CopyableCode code="unplanned_failover" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicationProtectionClusterName"><code>replicationProtectionClusterName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Operation to initiate a failover of the replication protection cluster.</td>
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
<tr id="parameter-fabricName">
    <td><CopyableCode code="fabricName" /></td>
    <td><code>string</code></td>
    <td>Fabric name.</td>
</tr>
<tr id="parameter-protectionContainerName">
    <td><CopyableCode code="protectionContainerName" /></td>
    <td><code>string</code></td>
    <td>Protection container name.</td>
</tr>
<tr id="parameter-replicationProtectionClusterName">
    <td><CopyableCode code="replicationProtectionClusterName" /></td>
    <td><code>string</code></td>
    <td>Replication protection cluster name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group where the recovery services vault is present.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the recovery services vault.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription Id.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>OData filter options.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client Api Version.</td>
</tr>
<tr id="parameter-skipToken">
    <td><CopyableCode code="skipToken" /></td>
    <td><code>string</code></td>
    <td>The pagination token. Possible values: "FabricId" or "FabricId_CloudId" or null.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_replication_protection_containers', value: 'list_by_replication_protection_containers' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets the details of an ASR replication protection cluster.

```sql
SELECT
id,
name,
properties,
type
FROM azure.recovery_services_site_recovery.replication_protection_clusters
WHERE resourceName = '{{ resourceName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND fabricName = '{{ fabricName }}' -- required
AND protectionContainerName = '{{ protectionContainerName }}' -- required
AND replicationProtectionClusterName = '{{ replicationProtectionClusterName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list_by_replication_protection_containers">

Gets the list of ASR replication protected clusters in the protection container.

```sql
SELECT
id,
name,
properties,
type
FROM azure.recovery_services_site_recovery.replication_protection_clusters
WHERE resourceName = '{{ resourceName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND fabricName = '{{ fabricName }}' -- required
AND protectionContainerName = '{{ protectionContainerName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Gets the list of ASR replication protected clusters in the vault.

```sql
SELECT
id,
name,
properties,
type
FROM azure.recovery_services_site_recovery.replication_protection_clusters
WHERE resourceName = '{{ resourceName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
AND skipToken = '{{ skipToken }}'
AND $filter = '{{ $filter }}'
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

The operation to create an ASR replication protection cluster item.

```sql
INSERT INTO azure.recovery_services_site_recovery.replication_protection_clusters (
data__properties,
resourceName,
resourceGroupName,
subscriptionId,
fabricName,
protectionContainerName,
replicationProtectionClusterName,
api-version
)
SELECT 
'{{ properties }}',
'{{ resourceName }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ fabricName }}',
'{{ protectionContainerName }}',
'{{ replicationProtectionClusterName }}',
'{{ api-version }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: replication_protection_clusters
  props:
    - name: resourceName
      value: string
      description: Required parameter for the replication_protection_clusters resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the replication_protection_clusters resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the replication_protection_clusters resource.
    - name: fabricName
      value: string
      description: Required parameter for the replication_protection_clusters resource.
    - name: protectionContainerName
      value: string
      description: Required parameter for the replication_protection_clusters resource.
    - name: replicationProtectionClusterName
      value: string
      description: Required parameter for the replication_protection_clusters resource.
    - name: properties
      value: object
      description: |
        The custom data.
    - name: api-version
      value: string
      description: Client Api Version.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="purge"
    values={[
        { label: 'purge', value: 'purge' },
        { label: 'apply_recovery_point', value: 'apply_recovery_point' },
        { label: 'failover_commit', value: 'failover_commit' },
        { label: 'repair_replication', value: 'repair_replication' },
        { label: 'test_failover', value: 'test_failover' },
        { label: 'test_failover_cleanup', value: 'test_failover_cleanup' },
        { label: 'unplanned_failover', value: 'unplanned_failover' }
    ]}
>
<TabItem value="purge">

The operation to purge the replication protection cluster. This operation will force delete the replication protection cluster. Use the remove operation on replication protection cluster to perform a clean disable replication protection cluster.

```sql
EXEC azure.recovery_services_site_recovery.replication_protection_clusters.purge 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicationProtectionClusterName='{{ replicationProtectionClusterName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="apply_recovery_point">

Operation to apply a new cluster recovery point on the Protection cluster.

```sql
EXEC azure.recovery_services_site_recovery.replication_protection_clusters.apply_recovery_point 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicationProtectionClusterName='{{ replicationProtectionClusterName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="failover_commit">

Operation to initiate commit failover of the replication protection cluster.

```sql
EXEC azure.recovery_services_site_recovery.replication_protection_clusters.failover_commit 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicationProtectionClusterName='{{ replicationProtectionClusterName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="repair_replication">

The operation to repair replication protection cluster.

```sql
EXEC azure.recovery_services_site_recovery.replication_protection_clusters.repair_replication 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicationProtectionClusterName='{{ replicationProtectionClusterName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="test_failover">

Operation to initiate a failover of the replication protection cluster.

```sql
EXEC azure.recovery_services_site_recovery.replication_protection_clusters.test_failover 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicationProtectionClusterName='{{ replicationProtectionClusterName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="test_failover_cleanup">

Operation to clean up the test failover of a replication protected cluster.

```sql
EXEC azure.recovery_services_site_recovery.replication_protection_clusters.test_failover_cleanup 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicationProtectionClusterName='{{ replicationProtectionClusterName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="unplanned_failover">

Operation to initiate a failover of the replication protection cluster.

```sql
EXEC azure.recovery_services_site_recovery.replication_protection_clusters.unplanned_failover 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicationProtectionClusterName='{{ replicationProtectionClusterName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
