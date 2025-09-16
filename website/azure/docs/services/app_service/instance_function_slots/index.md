--- 
title: instance_function_slots
hide_title: false
hide_table_of_contents: false
keywords:
  - instance_function_slots
  - app_service
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

Creates, updates, deletes, gets or lists an <code>instance_function_slots</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>instance_function_slots</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.instance_function_slots" /></td></tr>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-functionName"><code>functionName</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Create function for web site, or a deployment slot.</td>
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
<tr id="parameter-functionName">
    <td><CopyableCode code="functionName" /></td>
    <td><code>string</code></td>
    <td>Function name.</td>
</tr>
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Site name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group to which the resource belongs.</td>
</tr>
<tr id="parameter-slot">
    <td><CopyableCode code="slot" /></td>
    <td><code>string</code></td>
    <td>Name of the deployment slot.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).</td>
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

Description for Create function for web site, or a deployment slot.

```sql
INSERT INTO azure.app_service.instance_function_slots (
data__kind,
data__properties,
resourceGroupName,
name,
functionName,
slot,
subscriptionId
)
SELECT 
'{{ kind }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ name }}',
'{{ functionName }}',
'{{ slot }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
kind,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: instance_function_slots
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the instance_function_slots resource.
    - name: name
      value: string
      description: Required parameter for the instance_function_slots resource.
    - name: functionName
      value: string
      description: Required parameter for the instance_function_slots resource.
    - name: slot
      value: string
      description: Required parameter for the instance_function_slots resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the instance_function_slots resource.
    - name: kind
      value: string
      description: |
        Kind of resource.
    - name: properties
      value: object
      description: |
        FunctionEnvelope resource specific properties
```
</TabItem>
</Tabs>
