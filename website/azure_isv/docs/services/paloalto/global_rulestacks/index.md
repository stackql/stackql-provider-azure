--- 
title: global_rulestacks
hide_title: false
hide_table_of_contents: false
keywords:
  - global_rulestacks
  - paloalto
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>global_rulestacks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>global_rulestacks</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.paloalto.global_rulestacks" /></td></tr>
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

Azure operation completed successfully.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The managed service identities assigned to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Global Location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>System metadata for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Azure operation completed successfully.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The managed service identities assigned to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Global Location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>System metadata for this resource.</td>
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
    <td><a href="#parameter-globalRulestackName"><code>globalRulestackName</code></a></td>
    <td></td>
    <td>Get a GlobalRulestackResource</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>List GlobalRulestackResource resources by Tenant</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-globalRulestackName"><code>globalRulestackName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a>, <a href="#parameter-data__location"><code>data__location</code></a></td>
    <td></td>
    <td>Create a GlobalRulestackResource</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-globalRulestackName"><code>globalRulestackName</code></a></td>
    <td></td>
    <td>Update a GlobalRulestackResource</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-globalRulestackName"><code>globalRulestackName</code></a></td>
    <td></td>
    <td>Delete a GlobalRulestackResource</td>
</tr>
<tr>
    <td><a href="#commit"><CopyableCode code="commit" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-globalRulestackName"><code>globalRulestackName</code></a></td>
    <td></td>
    <td>Commit rulestack configuration</td>
</tr>
<tr>
    <td><a href="#revert"><CopyableCode code="revert" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-globalRulestackName"><code>globalRulestackName</code></a></td>
    <td></td>
    <td>Revert rulestack configuration</td>
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
<tr id="parameter-globalRulestackName">
    <td><CopyableCode code="globalRulestackName" /></td>
    <td><code>string</code></td>
    <td>GlobalRulestack resource name</td>
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

Get a GlobalRulestackResource

```sql
SELECT
identity,
location,
properties,
systemData
FROM azure_isv.paloalto.global_rulestacks
WHERE globalRulestackName = '{{ globalRulestackName }}' -- required
;
```
</TabItem>
<TabItem value="list">

List GlobalRulestackResource resources by Tenant

```sql
SELECT
identity,
location,
properties,
systemData
FROM azure_isv.paloalto.global_rulestacks
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

Create a GlobalRulestackResource

```sql
INSERT INTO azure_isv.paloalto.global_rulestacks (
data__properties,
data__location,
data__identity,
globalRulestackName
)
SELECT 
'{{ properties }}' /* required */,
'{{ location }}' /* required */,
'{{ identity }}',
'{{ globalRulestackName }}'
RETURNING
identity,
location,
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: global_rulestacks
  props:
    - name: globalRulestackName
      value: string
      description: Required parameter for the global_rulestacks resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
    - name: location
      value: string
      description: |
        Global Location
    - name: identity
      value: object
      description: |
        The managed service identities assigned to this resource.
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

Update a GlobalRulestackResource

```sql
UPDATE azure_isv.paloalto.global_rulestacks
SET 
data__location = '{{ location }}',
data__identity = '{{ identity }}',
data__properties = '{{ properties }}'
WHERE 
globalRulestackName = '{{ globalRulestackName }}' --required
RETURNING
identity,
location,
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

Delete a GlobalRulestackResource

```sql
DELETE FROM azure_isv.paloalto.global_rulestacks
WHERE globalRulestackName = '{{ globalRulestackName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="commit"
    values={[
        { label: 'commit', value: 'commit' },
        { label: 'revert', value: 'revert' }
    ]}
>
<TabItem value="commit">

Commit rulestack configuration

```sql
EXEC azure_isv.paloalto.global_rulestacks.commit 
@globalRulestackName='{{ globalRulestackName }}' --required
;
```
</TabItem>
<TabItem value="revert">

Revert rulestack configuration

```sql
EXEC azure_isv.paloalto.global_rulestacks.revert 
@globalRulestackName='{{ globalRulestackName }}' --required
;
```
</TabItem>
</Tabs>
