--- 
title: sensitivity_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - sensitivity_settings
  - security
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

Creates, updates, deletes, gets or lists a <code>sensitivity_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>sensitivity_settings</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.sensitivity_settings" /></td></tr>
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

Success of the sensitivity settings get

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
    <td>The ID of the sensitivity settings</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the sensitivity settings</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The sensitivity settings properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the sensitivity settings</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Success of the sensitivity settings list get

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
    <td>The ID of the sensitivity settings</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the sensitivity settings</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The sensitivity settings properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the sensitivity settings</td>
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
    <td></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets data sensitivity settings for sensitive data discovery</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets a list with a single sensitivity settings resource</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-data__sensitiveInfoTypesIds"><code>data__sensitiveInfoTypesIds</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Create or update data sensitivity settings for sensitive data discovery</td>
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
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>API version for the operation</td>
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

Gets data sensitivity settings for sensitive data discovery

```sql
SELECT
id,
name,
properties,
type
FROM azure.security.sensitivity_settings
WHERE api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Gets a list with a single sensitivity settings resource

```sql
SELECT
id,
name,
properties,
type
FROM azure.security.sensitivity_settings
WHERE api-version = '{{ api-version }}'
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

Create or update data sensitivity settings for sensitive data discovery

```sql
INSERT INTO azure.security.sensitivity_settings (
data__sensitiveInfoTypesIds,
data__sensitivityThresholdLabelOrder,
data__sensitivityThresholdLabelId,
api-version
)
SELECT 
'{{ sensitiveInfoTypesIds }}' /* required */,
{{ sensitivityThresholdLabelOrder }},
'{{ sensitivityThresholdLabelId }}',
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
- name: sensitivity_settings
  props:
    - name: sensitiveInfoTypesIds
      value: array
      description: |
        List of selected sensitive info types' IDs.
    - name: sensitivityThresholdLabelOrder
      value: number
      description: |
        The order of the sensitivity threshold label. Any label at or above this order will be considered sensitive. If set to -1, sensitivity by labels is turned off
    - name: sensitivityThresholdLabelId
      value: string
      description: |
        The id of the sensitivity threshold label. Any label at or above this rank will be considered sensitive.
    - name: api-version
      value: string
      description: API version for the operation
```
</TabItem>
</Tabs>
