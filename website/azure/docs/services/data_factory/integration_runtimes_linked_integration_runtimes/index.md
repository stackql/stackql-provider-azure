--- 
title: integration_runtimes_linked_integration_runtimes
hide_title: false
hide_table_of_contents: false
keywords:
  - integration_runtimes_linked_integration_runtimes
  - data_factory
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

Creates, updates, deletes, gets or lists an <code>integration_runtimes_linked_integration_runtimes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>integration_runtimes_linked_integration_runtimes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_factory.integration_runtimes_linked_integration_runtimes" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-integrationRuntimeName"><code>integrationRuntimeName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Create a linked integration runtime entry in a shared integration runtime.</td>
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
<tr id="parameter-factoryName">
    <td><CopyableCode code="factoryName" /></td>
    <td><code>string</code></td>
    <td>The factory name.</td>
</tr>
<tr id="parameter-integrationRuntimeName">
    <td><CopyableCode code="integrationRuntimeName" /></td>
    <td><code>string</code></td>
    <td>The integration runtime name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription identifier.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The API version.</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Create a linked integration runtime entry in a shared integration runtime.

```sql
INSERT INTO azure.data_factory.integration_runtimes_linked_integration_runtimes (
data__name,
data__subscriptionId,
data__dataFactoryName,
data__dataFactoryLocation,
subscriptionId,
resourceGroupName,
factoryName,
integrationRuntimeName,
api-version
)
SELECT 
'{{ name }}',
'{{ subscriptionId }}',
'{{ dataFactoryName }}',
'{{ dataFactoryLocation }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ factoryName }}',
'{{ integrationRuntimeName }}',
'{{ api-version }}'
RETURNING
name,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: integration_runtimes_linked_integration_runtimes
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the integration_runtimes_linked_integration_runtimes resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the integration_runtimes_linked_integration_runtimes resource.
    - name: factoryName
      value: string
      description: Required parameter for the integration_runtimes_linked_integration_runtimes resource.
    - name: integrationRuntimeName
      value: string
      description: Required parameter for the integration_runtimes_linked_integration_runtimes resource.
    - name: name
      value: string
      description: |
        The name of the linked integration runtime.
    - name: subscriptionId
      value: string
      description: |
        The ID of the subscription that the linked integration runtime belongs to.
    - name: dataFactoryName
      value: string
      description: |
        The name of the data factory that the linked integration runtime belongs to.
    - name: dataFactoryLocation
      value: string
      description: |
        The location of the data factory that the linked integration runtime belongs to.
    - name: api-version
      value: string
      description: The API version.
```
</TabItem>
</Tabs>
