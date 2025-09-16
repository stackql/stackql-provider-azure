--- 
title: cloud_hsm_cluster_private_endpoint_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - cloud_hsm_cluster_private_endpoint_connections
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

Creates, updates, deletes, gets or lists a <code>cloud_hsm_cluster_private_endpoint_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>cloud_hsm_cluster_private_endpoint_connections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hardware_security_modules.cloud_hsm_cluster_private_endpoint_connections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Private endpoint connection successfully returned.

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
    <td>Modified whenever there is a change in the state of private endpoint connection.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudHsmClusterName"><code>cloudHsmClusterName</code></a>, <a href="#parameter-peConnectionName"><code>peConnectionName</code></a></td>
    <td></td>
    <td>Gets the private endpoint connection for the Cloud Hsm Cluster.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudHsmClusterName"><code>cloudHsmClusterName</code></a>, <a href="#parameter-peConnectionName"><code>peConnectionName</code></a></td>
    <td></td>
    <td>Creates or updates the private endpoint connection for the Cloud Hsm Cluster.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudHsmClusterName"><code>cloudHsmClusterName</code></a>, <a href="#parameter-peConnectionName"><code>peConnectionName</code></a></td>
    <td></td>
    <td>Deletes the private endpoint connection for the Cloud Hsm Cluster.</td>
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
<tr id="parameter-peConnectionName">
    <td><CopyableCode code="peConnectionName" /></td>
    <td><code>string</code></td>
    <td>Name of the private endpoint connection associated with the Cloud HSM Cluster.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Gets the private endpoint connection for the Cloud Hsm Cluster.

```sql
SELECT
etag,
properties
FROM azure.hardware_security_modules.cloud_hsm_cluster_private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND cloudHsmClusterName = '{{ cloudHsmClusterName }}' -- required
AND peConnectionName = '{{ peConnectionName }}' -- required
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

Creates or updates the private endpoint connection for the Cloud Hsm Cluster.

```sql
INSERT INTO azure.hardware_security_modules.cloud_hsm_cluster_private_endpoint_connections (
data__properties,
data__etag,
subscriptionId,
resourceGroupName,
cloudHsmClusterName,
peConnectionName
)
SELECT 
'{{ properties }}',
'{{ etag }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ cloudHsmClusterName }}',
'{{ peConnectionName }}'
RETURNING
etag,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: cloud_hsm_cluster_private_endpoint_connections
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the cloud_hsm_cluster_private_endpoint_connections resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the cloud_hsm_cluster_private_endpoint_connections resource.
    - name: cloudHsmClusterName
      value: string
      description: Required parameter for the cloud_hsm_cluster_private_endpoint_connections resource.
    - name: peConnectionName
      value: string
      description: Required parameter for the cloud_hsm_cluster_private_endpoint_connections resource.
    - name: properties
      value: object
      description: |
        Resource properties.
    - name: etag
      value: string
      description: |
        Modified whenever there is a change in the state of private endpoint connection.
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

Deletes the private endpoint connection for the Cloud Hsm Cluster.

```sql
DELETE FROM azure.hardware_security_modules.cloud_hsm_cluster_private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND cloudHsmClusterName = '{{ cloudHsmClusterName }}' --required
AND peConnectionName = '{{ peConnectionName }}' --required
;
```
</TabItem>
</Tabs>
