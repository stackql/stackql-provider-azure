--- 
title: software_update_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - software_update_configurations
  - automation
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

Creates, updates, deletes, gets or lists a <code>software_update_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>software_update_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.software_update_configurations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_name"
    values={[
        { label: 'get_by_name', value: 'get_by_name' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_by_name">

A single software update configuration.

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
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Software update configuration properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Return list of software update configurations.

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
    <td>Resource Id of the software update configuration</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the software update configuration.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Software update configuration properties.</td>
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
    <td><a href="#get_by_name"><CopyableCode code="get_by_name" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-softwareUpdateConfigurationName"><code>softwareUpdateConfigurationName</code></a></td>
    <td><a href="#parameter-clientRequestId"><code>clientRequestId</code></a></td>
    <td>Get a single software update configuration by name.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a></td>
    <td><a href="#parameter-clientRequestId"><code>clientRequestId</code></a>, <a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Get all software update configurations for the account.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-softwareUpdateConfigurationName"><code>softwareUpdateConfigurationName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-clientRequestId"><code>clientRequestId</code></a></td>
    <td>Create a new software update configuration with the name given in the URI.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-softwareUpdateConfigurationName"><code>softwareUpdateConfigurationName</code></a></td>
    <td><a href="#parameter-clientRequestId"><code>clientRequestId</code></a></td>
    <td>delete a specific software update configuration.</td>
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
<tr id="parameter-automationAccountName">
    <td><CopyableCode code="automationAccountName" /></td>
    <td><code>string</code></td>
    <td>The name of the automation account.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of an Azure Resource group.</td>
</tr>
<tr id="parameter-softwareUpdateConfigurationName">
    <td><CopyableCode code="softwareUpdateConfigurationName" /></td>
    <td><code>string</code></td>
    <td>The name of the software update configuration to be created.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation.</td>
</tr>
<tr id="parameter-clientRequestId">
    <td><CopyableCode code="clientRequestId" /></td>
    <td><code>string</code></td>
    <td>Identifies this specific client request.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_name"
    values={[
        { label: 'get_by_name', value: 'get_by_name' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_by_name">

Get a single software update configuration by name.

```sql
SELECT
id,
name,
properties,
type
FROM azure.automation.software_update_configurations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND softwareUpdateConfigurationName = '{{ softwareUpdateConfigurationName }}' -- required
AND clientRequestId = '{{ clientRequestId }}'
;
```
</TabItem>
<TabItem value="list">

Get all software update configurations for the account.

```sql
SELECT
id,
name,
properties
FROM azure.automation.software_update_configurations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND clientRequestId = '{{ clientRequestId }}'
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

Create a new software update configuration with the name given in the URI.

```sql
INSERT INTO azure.automation.software_update_configurations (
data__properties,
subscriptionId,
resourceGroupName,
automationAccountName,
softwareUpdateConfigurationName,
clientRequestId
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ automationAccountName }}',
'{{ softwareUpdateConfigurationName }}',
'{{ clientRequestId }}'
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
- name: software_update_configurations
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the software_update_configurations resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the software_update_configurations resource.
    - name: automationAccountName
      value: string
      description: Required parameter for the software_update_configurations resource.
    - name: softwareUpdateConfigurationName
      value: string
      description: Required parameter for the software_update_configurations resource.
    - name: properties
      value: object
      description: |
        Software update configuration properties.
    - name: clientRequestId
      value: string
      description: Identifies this specific client request.
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

delete a specific software update configuration.

```sql
DELETE FROM azure.automation.software_update_configurations
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND automationAccountName = '{{ automationAccountName }}' --required
AND softwareUpdateConfigurationName = '{{ softwareUpdateConfigurationName }}' --required
AND clientRequestId = '{{ clientRequestId }}'
;
```
</TabItem>
</Tabs>
