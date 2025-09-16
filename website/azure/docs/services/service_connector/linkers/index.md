--- 
title: linkers
hide_title: false
hide_table_of_contents: false
keywords:
  - linkers
  - service_connector
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

Creates, updates, deletes, gets or lists a <code>linkers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>linkers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_connector.linkers" /></td></tr>
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

Linker details.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the Linker.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system data.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Linker details.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the Linker.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system data.</td>
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
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-linkerName"><code>linkerName</code></a></td>
    <td></td>
    <td>Returns Linker resource for a given name.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td>Returns list of Linkers which connects to the resource. which supports to config both application and target service during the resource provision.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-linkerName"><code>linkerName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create or update Linker resource.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-linkerName"><code>linkerName</code></a></td>
    <td></td>
    <td>Operation to update an existing Linker.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-linkerName"><code>linkerName</code></a></td>
    <td></td>
    <td>Delete a Linker.</td>
</tr>
<tr>
    <td><a href="#validate"><CopyableCode code="validate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-linkerName"><code>linkerName</code></a></td>
    <td></td>
    <td>Validate a Linker.</td>
</tr>
<tr>
    <td><a href="#generate_configurations"><CopyableCode code="generate_configurations" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-linkerName"><code>linkerName</code></a></td>
    <td></td>
    <td>Generate configurations for a Linker.</td>
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
<tr id="parameter-linkerName">
    <td><CopyableCode code="linkerName" /></td>
    <td><code>string</code></td>
    <td>The name Linker resource.</td>
</tr>
<tr id="parameter-resourceUri">
    <td><CopyableCode code="resourceUri" /></td>
    <td><code>string</code></td>
    <td>The fully qualified Azure Resource manager identifier of the resource to be connected.</td>
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

Returns Linker resource for a given name.

```sql
SELECT
properties,
systemData
FROM azure.service_connector.linkers
WHERE resourceUri = '{{ resourceUri }}' -- required
AND linkerName = '{{ linkerName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Returns list of Linkers which connects to the resource. which supports to config both application and target service during the resource provision.

```sql
SELECT
properties,
systemData
FROM azure.service_connector.linkers
WHERE resourceUri = '{{ resourceUri }}' -- required
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

Create or update Linker resource.

```sql
INSERT INTO azure.service_connector.linkers (
data__properties,
resourceUri,
linkerName
)
SELECT 
'{{ properties }}' /* required */,
'{{ resourceUri }}',
'{{ linkerName }}'
RETURNING
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: linkers
  props:
    - name: resourceUri
      value: string
      description: Required parameter for the linkers resource.
    - name: linkerName
      value: string
      description: Required parameter for the linkers resource.
    - name: properties
      value: object
      description: |
        The properties of the Linker.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Operation to update an existing Linker.

```sql
UPDATE azure.service_connector.linkers
SET 
data__properties = '{{ properties }}'
WHERE 
resourceUri = '{{ resourceUri }}' --required
AND linkerName = '{{ linkerName }}' --required
RETURNING
properties,
systemData;
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

Delete a Linker.

```sql
DELETE FROM azure.service_connector.linkers
WHERE resourceUri = '{{ resourceUri }}' --required
AND linkerName = '{{ linkerName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="validate"
    values={[
        { label: 'validate', value: 'validate' },
        { label: 'generate_configurations', value: 'generate_configurations' }
    ]}
>
<TabItem value="validate">

Validate a Linker.

```sql
EXEC azure.service_connector.linkers.validate 
@resourceUri='{{ resourceUri }}' --required, 
@linkerName='{{ linkerName }}' --required
;
```
</TabItem>
<TabItem value="generate_configurations">

Generate configurations for a Linker.

```sql
EXEC azure.service_connector.linkers.generate_configurations 
@resourceUri='{{ resourceUri }}' --required, 
@linkerName='{{ linkerName }}' --required 
@@json=
'{
"deleteOrUpdateBehavior": "{{ deleteOrUpdateBehavior }}", 
"action": "{{ action }}", 
"customizedKeys": "{{ customizedKeys }}", 
"daprProperties": "{{ daprProperties }}", 
"additionalConfigurations": "{{ additionalConfigurations }}", 
"additionalConnectionStringProperties": "{{ additionalConnectionStringProperties }}", 
"configurationStore": "{{ configurationStore }}"
}'
;
```
</TabItem>
</Tabs>
