--- 
title: applications
hide_title: false
hide_table_of_contents: false
keywords:
  - applications
  - hdinsight
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

Creates, updates, deletes, gets or lists an <code>applications</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>applications</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hdinsight.applications" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_cluster', value: 'list_by_cluster' }
    ]}
>
<TabItem value="get">

OK. The request has succeeded.

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
    <td>The ETag for the application</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the application.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The tags for the application.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_cluster">

OK. The request has succeeded.

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
    <td>The ETag for the application</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the application.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The tags for the application.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-applicationName"><code>applicationName</code></a></td>
    <td></td>
    <td>Gets properties of the specified application.</td>
</tr>
<tr>
    <td><a href="#list_by_cluster"><CopyableCode code="list_by_cluster" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a></td>
    <td></td>
    <td>Lists all of the applications for the HDInsight cluster.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-applicationName"><code>applicationName</code></a></td>
    <td></td>
    <td>Creates applications for the HDInsight cluster.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-applicationName"><code>applicationName</code></a></td>
    <td></td>
    <td>Deletes the specified application on the HDInsight cluster.</td>
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
<tr id="parameter-applicationName">
    <td><CopyableCode code="applicationName" /></td>
    <td><code>string</code></td>
    <td>The constant value for the application name.</td>
</tr>
<tr id="parameter-clusterName">
    <td><CopyableCode code="clusterName" /></td>
    <td><code>string</code></td>
    <td>The name of the cluster.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_cluster', value: 'list_by_cluster' }
    ]}
>
<TabItem value="get">

Gets properties of the specified application.

```sql
SELECT
etag,
properties,
systemData,
tags
FROM azure.hdinsight.applications
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
AND applicationName = '{{ applicationName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_cluster">

Lists all of the applications for the HDInsight cluster.

```sql
SELECT
etag,
properties,
systemData,
tags
FROM azure.hdinsight.applications
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
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

Creates applications for the HDInsight cluster.

```sql
INSERT INTO azure.hdinsight.applications (
data__etag,
data__tags,
data__properties,
subscriptionId,
resourceGroupName,
clusterName,
applicationName
)
SELECT 
'{{ etag }}',
'{{ tags }}',
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ clusterName }}',
'{{ applicationName }}'
RETURNING
etag,
properties,
systemData,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: applications
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the applications resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the applications resource.
    - name: clusterName
      value: string
      description: Required parameter for the applications resource.
    - name: applicationName
      value: string
      description: Required parameter for the applications resource.
    - name: etag
      value: string
      description: |
        The ETag for the application
    - name: tags
      value: object
      description: |
        The tags for the application.
    - name: properties
      value: object
      description: |
        The properties of the application.
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

Deletes the specified application on the HDInsight cluster.

```sql
DELETE FROM azure.hdinsight.applications
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND clusterName = '{{ clusterName }}' --required
AND applicationName = '{{ applicationName }}' --required
;
```
</TabItem>
</Tabs>
