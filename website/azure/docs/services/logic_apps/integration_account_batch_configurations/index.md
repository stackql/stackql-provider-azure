--- 
title: integration_account_batch_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - integration_account_batch_configurations
  - logic_apps
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

Creates, updates, deletes, gets or lists an <code>integration_account_batch_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>integration_account_batch_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.logic_apps.integration_account_batch_configurations" /></td></tr>
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
    <td>The resource id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets the resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The batch configuration properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Gets the resource type.</td>
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
    <td>The resource id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets the resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The batch configuration properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Gets the resource type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-integrationAccountName"><code>integrationAccountName</code></a>, <a href="#parameter-batchConfigurationName"><code>batchConfigurationName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get a batch configuration for an integration account.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-integrationAccountName"><code>integrationAccountName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>List the batch configurations for an integration account.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-integrationAccountName"><code>integrationAccountName</code></a>, <a href="#parameter-batchConfigurationName"><code>batchConfigurationName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Create or update a batch configuration for an integration account.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-integrationAccountName"><code>integrationAccountName</code></a>, <a href="#parameter-batchConfigurationName"><code>batchConfigurationName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Delete a batch configuration for an integration account.</td>
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
<tr id="parameter-batchConfigurationName">
    <td><CopyableCode code="batchConfigurationName" /></td>
    <td><code>string</code></td>
    <td>The batch configuration name.</td>
</tr>
<tr id="parameter-integrationAccountName">
    <td><CopyableCode code="integrationAccountName" /></td>
    <td><code>string</code></td>
    <td>The integration account name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription id.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The API version.</td>
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

Get a batch configuration for an integration account.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure.logic_apps.integration_account_batch_configurations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND integrationAccountName = '{{ integrationAccountName }}' -- required
AND batchConfigurationName = '{{ batchConfigurationName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

List the batch configurations for an integration account.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure.logic_apps.integration_account_batch_configurations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND integrationAccountName = '{{ integrationAccountName }}' -- required
AND api-version = '{{ api-version }}'
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

Create or update a batch configuration for an integration account.

```sql
INSERT INTO azure.logic_apps.integration_account_batch_configurations (
data__properties,
data__location,
data__tags,
subscriptionId,
resourceGroupName,
integrationAccountName,
batchConfigurationName,
api-version
)
SELECT 
'{{ properties }}' /* required */,
'{{ location }}',
'{{ tags }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ integrationAccountName }}',
'{{ batchConfigurationName }}',
'{{ api-version }}'
RETURNING
id,
name,
location,
properties,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: integration_account_batch_configurations
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the integration_account_batch_configurations resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the integration_account_batch_configurations resource.
    - name: integrationAccountName
      value: string
      description: Required parameter for the integration_account_batch_configurations resource.
    - name: batchConfigurationName
      value: string
      description: Required parameter for the integration_account_batch_configurations resource.
    - name: properties
      value: object
      description: |
        The batch configuration properties.
    - name: location
      value: string
      description: |
        The resource location.
    - name: tags
      value: object
      description: |
        The resource tags.
    - name: api-version
      value: string
      description: The API version.
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

Delete a batch configuration for an integration account.

```sql
DELETE FROM azure.logic_apps.integration_account_batch_configurations
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND integrationAccountName = '{{ integrationAccountName }}' --required
AND batchConfigurationName = '{{ batchConfigurationName }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
