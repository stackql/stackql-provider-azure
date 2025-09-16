--- 
title: published_blueprints
hide_title: false
hide_table_of_contents: false
keywords:
  - published_blueprints
  - blueprints
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

Creates, updates, deletes, gets or lists a <code>published_blueprints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>published_blueprints</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.blueprints.published_blueprints" /></td></tr>
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

OK -- published blueprint definition retrieved.

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
    <td>String Id used to locate any resource on Azure.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Detailed properties for published blueprint.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK -- all published versions of blueprint definition retrieved.

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
    <td>String Id used to locate any resource on Azure.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Detailed properties for published blueprint.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of this resource.</td>
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
    <td><a href="#parameter-resourceScope"><code>resourceScope</code></a>, <a href="#parameter-blueprintName"><code>blueprintName</code></a>, <a href="#parameter-versionId"><code>versionId</code></a></td>
    <td></td>
    <td>Get a published version of a blueprint definition.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceScope"><code>resourceScope</code></a>, <a href="#parameter-blueprintName"><code>blueprintName</code></a></td>
    <td></td>
    <td>List published versions of given blueprint definition.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceScope"><code>resourceScope</code></a>, <a href="#parameter-blueprintName"><code>blueprintName</code></a>, <a href="#parameter-versionId"><code>versionId</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Publish a new version of the blueprint definition with the latest artifacts. Published blueprint definitions are immutable.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceScope"><code>resourceScope</code></a>, <a href="#parameter-blueprintName"><code>blueprintName</code></a>, <a href="#parameter-versionId"><code>versionId</code></a></td>
    <td></td>
    <td>Delete a published version of a blueprint definition.</td>
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
<tr id="parameter-blueprintName">
    <td><CopyableCode code="blueprintName" /></td>
    <td><code>string</code></td>
    <td>Name of the blueprint definition.</td>
</tr>
<tr id="parameter-resourceScope">
    <td><CopyableCode code="resourceScope" /></td>
    <td><code>string</code></td>
    <td>The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/&#123;managementGroup&#125;'), subscription (format: '/subscriptions/&#123;subscriptionId&#125;').</td>
</tr>
<tr id="parameter-versionId">
    <td><CopyableCode code="versionId" /></td>
    <td><code>string</code></td>
    <td>Version of the published blueprint definition.</td>
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

Get a published version of a blueprint definition.

```sql
SELECT
id,
name,
properties,
type
FROM azure.blueprints.published_blueprints
WHERE resourceScope = '{{ resourceScope }}' -- required
AND blueprintName = '{{ blueprintName }}' -- required
AND versionId = '{{ versionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

List published versions of given blueprint definition.

```sql
SELECT
id,
name,
properties,
type
FROM azure.blueprints.published_blueprints
WHERE resourceScope = '{{ resourceScope }}' -- required
AND blueprintName = '{{ blueprintName }}' -- required
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

Publish a new version of the blueprint definition with the latest artifacts. Published blueprint definitions are immutable.

```sql
INSERT INTO azure.blueprints.published_blueprints (
data__properties,
resourceScope,
blueprintName,
versionId
)
SELECT 
'{{ properties }}' /* required */,
'{{ resourceScope }}',
'{{ blueprintName }}',
'{{ versionId }}'
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
- name: published_blueprints
  props:
    - name: resourceScope
      value: string
      description: Required parameter for the published_blueprints resource.
    - name: blueprintName
      value: string
      description: Required parameter for the published_blueprints resource.
    - name: versionId
      value: string
      description: Required parameter for the published_blueprints resource.
    - name: properties
      value: object
      description: |
        Detailed properties for published blueprint.
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

Delete a published version of a blueprint definition.

```sql
DELETE FROM azure.blueprints.published_blueprints
WHERE resourceScope = '{{ resourceScope }}' --required
AND blueprintName = '{{ blueprintName }}' --required
AND versionId = '{{ versionId }}' --required
;
```
</TabItem>
</Tabs>
