--- 
title: simplified_solutions
hide_title: false
hide_table_of_contents: false
keywords:
  - simplified_solutions
  - help
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>simplified_solutions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>simplified_solutions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.help.simplified_solutions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Successful fetched simplified Solutions result.

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
    <td>Simplified Solutions result</td>
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
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-simplifiedSolutionsResourceName"><code>simplifiedSolutionsResourceName</code></a></td>
    <td></td>
    <td>Get the simplified Solutions using the applicable solutionResourceName while creating the simplified Solutions.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-simplifiedSolutionsResourceName"><code>simplifiedSolutionsResourceName</code></a></td>
    <td></td>
    <td>Creates Simplified Solutions for an Azure subscription using 'solutionId' from Discovery Solutions as the input. <br /><br /> Simplified Solutions API makes the consumption of solutions APIs easier while still providing access to the same powerful solutions rendered in Solutions API. With Simplified Solutions, users don't have to worry about stitching together the article using replacement maps and can use the content in the API response to directly render as HTML content.<br /></td>
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
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope at which the operation is performed.</td>
</tr>
<tr id="parameter-simplifiedSolutionsResourceName">
    <td><CopyableCode code="simplifiedSolutionsResourceName" /></td>
    <td><code>string</code></td>
    <td>Simplified Solutions Resource Name.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Get the simplified Solutions using the applicable solutionResourceName while creating the simplified Solutions.

```sql
SELECT
properties
FROM azure_extras.help.simplified_solutions
WHERE scope = '{{ scope }}' -- required
AND simplifiedSolutionsResourceName = '{{ simplifiedSolutionsResourceName }}' -- required
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

Creates Simplified Solutions for an Azure subscription using 'solutionId' from Discovery Solutions as the input. <br /><br /> Simplified Solutions API makes the consumption of solutions APIs easier while still providing access to the same powerful solutions rendered in Solutions API. With Simplified Solutions, users don't have to worry about stitching together the article using replacement maps and can use the content in the API response to directly render as HTML content.<br />

```sql
INSERT INTO azure_extras.help.simplified_solutions (
data__properties,
scope,
simplifiedSolutionsResourceName
)
SELECT 
'{{ properties }}',
'{{ scope }}',
'{{ simplifiedSolutionsResourceName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: simplified_solutions
  props:
    - name: scope
      value: string
      description: Required parameter for the simplified_solutions resource.
    - name: simplifiedSolutionsResourceName
      value: string
      description: Required parameter for the simplified_solutions resource.
    - name: properties
      value: object
      description: |
        Simplified Solutions result
```
</TabItem>
</Tabs>
