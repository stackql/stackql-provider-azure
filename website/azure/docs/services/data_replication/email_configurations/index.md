--- 
title: email_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - email_configurations
  - data_replication
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

Creates, updates, deletes, gets or lists an <code>email_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>email_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_replication.email_configurations" /></td></tr>
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

Returns EmailConfiguration Model on success.

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
    <td>Gets or sets the Id of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Email configuration model properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>System data required to be defined for Azure resources.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the type of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Returns EmailConfiguration Model Collection on success.

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
    <td>Gets or sets the Id of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Email configuration model properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>System data required to be defined for Azure resources.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the type of the resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-emailConfigurationName"><code>emailConfigurationName</code></a></td>
    <td></td>
    <td>Gets the details of the alert configuration setting.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a></td>
    <td></td>
    <td>Gets the list of alert configuration settings for the given vault.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-emailConfigurationName"><code>emailConfigurationName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates an alert configuration setting for the given vault.</td>
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
<tr id="parameter-emailConfigurationName">
    <td><CopyableCode code="emailConfigurationName" /></td>
    <td><code>string</code></td>
    <td>The email configuration name.</td>
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
<tr id="parameter-vaultName">
    <td><CopyableCode code="vaultName" /></td>
    <td><code>string</code></td>
    <td>The vault name.</td>
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

Gets the details of the alert configuration setting.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.data_replication.email_configurations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND vaultName = '{{ vaultName }}' -- required
AND emailConfigurationName = '{{ emailConfigurationName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets the list of alert configuration settings for the given vault.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.data_replication.email_configurations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND vaultName = '{{ vaultName }}' -- required
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

Creates an alert configuration setting for the given vault.

```sql
INSERT INTO azure.data_replication.email_configurations (
data__properties,
subscriptionId,
resourceGroupName,
vaultName,
emailConfigurationName
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ vaultName }}',
'{{ emailConfigurationName }}'
RETURNING
id,
name,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: email_configurations
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the email_configurations resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the email_configurations resource.
    - name: vaultName
      value: string
      description: Required parameter for the email_configurations resource.
    - name: emailConfigurationName
      value: string
      description: Required parameter for the email_configurations resource.
    - name: properties
      value: object
      description: |
        Email configuration model properties.
```
</TabItem>
</Tabs>
