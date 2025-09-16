--- 
title: data_connectors
hide_title: false
hide_table_of_contents: false
keywords:
  - data_connectors
  - sentinel
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

Creates, updates, deletes, gets or lists a <code>data_connectors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>data_connectors</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sentinel.data_connectors" /></td></tr>
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

OK, Operation successfully completed

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
    <td>Etag of the azure resource</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The data connector kind</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK, Operation successfully completed

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
    <td>Etag of the azure resource</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The data connector kind</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-dataConnectorId"><code>dataConnectorId</code></a></td>
    <td></td>
    <td>Gets a data connector.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a></td>
    <td></td>
    <td>Gets all data connectors.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-dataConnectorId"><code>dataConnectorId</code></a>, <a href="#parameter-data__kind"><code>data__kind</code></a></td>
    <td></td>
    <td>Creates or updates the data connector.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-dataConnectorId"><code>dataConnectorId</code></a></td>
    <td></td>
    <td>Delete the data connector.</td>
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
<tr id="parameter-dataConnectorId">
    <td><CopyableCode code="dataConnectorId" /></td>
    <td><code>string</code></td>
    <td>Connector ID</td>
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
<tr id="parameter-workspaceName">
    <td><CopyableCode code="workspaceName" /></td>
    <td><code>string</code></td>
    <td>The name of the workspace.</td>
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

Gets a data connector.

```sql
SELECT
etag,
kind
FROM azure.sentinel.data_connectors
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND dataConnectorId = '{{ dataConnectorId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets all data connectors.

```sql
SELECT
etag,
kind
FROM azure.sentinel.data_connectors
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
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

Creates or updates the data connector.

```sql
INSERT INTO azure.sentinel.data_connectors (
data__etag,
data__kind,
subscriptionId,
resourceGroupName,
workspaceName,
dataConnectorId
)
SELECT 
'{{ etag }}',
'{{ kind }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ workspaceName }}',
'{{ dataConnectorId }}'
RETURNING
etag,
kind
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: data_connectors
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the data_connectors resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the data_connectors resource.
    - name: workspaceName
      value: string
      description: Required parameter for the data_connectors resource.
    - name: dataConnectorId
      value: string
      description: Required parameter for the data_connectors resource.
    - name: etag
      value: string
      description: |
        Etag of the azure resource
    - name: kind
      value: string
      description: |
        The data connector kind
      valid_values: ['AzureActiveDirectory', 'AzureSecurityCenter', 'MicrosoftCloudAppSecurity', 'ThreatIntelligence', 'Office365', 'AmazonWebServicesCloudTrail', 'AzureAdvancedThreatProtection', 'MicrosoftDefenderAdvancedThreatProtection']
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

Delete the data connector.

```sql
DELETE FROM azure.sentinel.data_connectors
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND workspaceName = '{{ workspaceName }}' --required
AND dataConnectorId = '{{ dataConnectorId }}' --required
;
```
</TabItem>
</Tabs>
