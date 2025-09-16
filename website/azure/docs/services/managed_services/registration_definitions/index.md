--- 
title: registration_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - registration_definitions
  - managed_services
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

Creates, updates, deletes, gets or lists a <code>registration_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>registration_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_services.registration_definitions" /></td></tr>
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

OK - Returns the complete registration definition with plan details.

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
    <td>The fully qualified path of the registration definition.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the registration definition.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>The details for the Managed Services offer’s plan in Azure Marketplace.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of a registration definition.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The metadata for the registration assignment resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the Azure resource (Microsoft.ManagedServices/registrationDefinitions).</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK - Returns a list of the registration definitions.

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
    <td>The fully qualified path of the registration definition.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the registration definition.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>The details for the Managed Services offer’s plan in Azure Marketplace.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of a registration definition.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The metadata for the registration assignment resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the Azure resource (Microsoft.ManagedServices/registrationDefinitions).</td>
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
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-registrationDefinitionId"><code>registrationDefinitionId</code></a></td>
    <td></td>
    <td>Gets the registration definition details.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Gets a list of the registration definitions.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-registrationDefinitionId"><code>registrationDefinitionId</code></a>, <a href="#parameter-scope"><code>scope</code></a></td>
    <td></td>
    <td>Creates or updates a registration definition.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-registrationDefinitionId"><code>registrationDefinitionId</code></a>, <a href="#parameter-scope"><code>scope</code></a></td>
    <td></td>
    <td>Deletes the registration definition.</td>
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
<tr id="parameter-registrationDefinitionId">
    <td><CopyableCode code="registrationDefinitionId" /></td>
    <td><code>string</code></td>
    <td>The GUID of the registration definition.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope of the resource.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter query parameter to filter managed services resources by.</td>
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

Gets the registration definition details.

```sql
SELECT
id,
name,
plan,
properties,
systemData,
type
FROM azure.managed_services.registration_definitions
WHERE scope = '{{ scope }}' -- required
AND registrationDefinitionId = '{{ registrationDefinitionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets a list of the registration definitions.

```sql
SELECT
id,
name,
plan,
properties,
systemData,
type
FROM azure.managed_services.registration_definitions
WHERE scope = '{{ scope }}' -- required
AND $filter = '{{ $filter }}'
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

Creates or updates a registration definition.

```sql
INSERT INTO azure.managed_services.registration_definitions (
data__properties,
data__plan,
registrationDefinitionId,
scope
)
SELECT 
'{{ properties }}',
'{{ plan }}',
'{{ registrationDefinitionId }}',
'{{ scope }}'
RETURNING
id,
name,
plan,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: registration_definitions
  props:
    - name: registrationDefinitionId
      value: string
      description: Required parameter for the registration_definitions resource.
    - name: scope
      value: string
      description: Required parameter for the registration_definitions resource.
    - name: properties
      value: object
      description: |
        The properties of a registration definition.
    - name: plan
      value: object
      description: |
        The details for the Managed Services offer’s plan in Azure Marketplace.
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

Deletes the registration definition.

```sql
DELETE FROM azure.managed_services.registration_definitions
WHERE registrationDefinitionId = '{{ registrationDefinitionId }}' --required
AND scope = '{{ scope }}' --required
;
```
</TabItem>
</Tabs>
