--- 
title: tags_values
hide_title: false
hide_table_of_contents: false
keywords:
  - tags_values
  - resources
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

Creates, updates, deletes, gets or lists a <code>tags_values</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>tags_values</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.resources.tags_values" /></td></tr>
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
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-tagName"><code>tagName</code></a>, <a href="#parameter-tagValue"><code>tagValue</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>This operation allows adding a value to the list of predefined values for an existing predefined tag name. A tag value can have a maximum of 256 characters.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-tagName"><code>tagName</code></a>, <a href="#parameter-tagValue"><code>tagValue</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>This operation allows deleting a value from the list of predefined values for an existing predefined tag name. The value being deleted must not be in use as a tag value for the given tag name for any resource.</td>
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
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-tagName">
    <td><CopyableCode code="tagName" /></td>
    <td><code>string</code></td>
    <td>The name of the tag.</td>
</tr>
<tr id="parameter-tagValue">
    <td><CopyableCode code="tagValue" /></td>
    <td><code>string</code></td>
    <td>The value of the tag to delete.</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

This operation allows adding a value to the list of predefined values for an existing predefined tag name. A tag value can have a maximum of 256 characters.

```sql
INSERT INTO azure.resources.tags_values (
tagName,
tagValue,
subscriptionId
)
SELECT 
'{{ tagName }}',
'{{ tagValue }}',
'{{ subscriptionId }}'
RETURNING
id,
count,
tagValue
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: tags_values
  props:
    - name: tagName
      value: string
      description: Required parameter for the tags_values resource.
    - name: tagValue
      value: string
      description: Required parameter for the tags_values resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the tags_values resource.
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

This operation allows deleting a value from the list of predefined values for an existing predefined tag name. The value being deleted must not be in use as a tag value for the given tag name for any resource.

```sql
DELETE FROM azure.resources.tags_values
WHERE tagName = '{{ tagName }}' --required
AND tagValue = '{{ tagValue }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
