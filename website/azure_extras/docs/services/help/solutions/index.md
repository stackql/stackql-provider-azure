--- 
title: solutions
hide_title: false
hide_table_of_contents: false
keywords:
  - solutions
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

Creates, updates, deletes, gets or lists a <code>solutions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>solutions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.help.solutions" /></td></tr>
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

Successful fetched solution result.

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
    <td>Solution result</td>
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
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-solutionResourceName"><code>solutionResourceName</code></a></td>
    <td></td>
    <td>Get the solution using the applicable solutionResourceName while creating the solution.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-solutionResourceName"><code>solutionResourceName</code></a></td>
    <td></td>
    <td>Creates a solution for the specific Azure resource or subscription using the inputs ‘solutionId and requiredInputs’ from discovery solutions. <br /> Azure solutions comprise a comprehensive library of self-help resources that have been thoughtfully curated by Azure engineers to aid customers in resolving typical troubleshooting issues. These solutions encompass: <br /> (1.) Dynamic and context-aware diagnostics, guided troubleshooting wizards, and data visualizations. <br /> (2.) Rich instructional video tutorials and illustrative diagrams and images. <br /> (3.) Thoughtfully assembled textual troubleshooting instructions. <br /> All these components are seamlessly converged into unified solutions tailored to address a specific support problem area.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-solutionResourceName"><code>solutionResourceName</code></a></td>
    <td></td>
    <td>Update the requiredInputs or additional information needed to execute the solution </td>
</tr>
<tr>
    <td><a href="#warm_up"><CopyableCode code="warm_up" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-solutionResourceName"><code>solutionResourceName</code></a></td>
    <td></td>
    <td>Warm up the solution resource by preloading asynchronous diagnostics results into cache</td>
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
<tr id="parameter-solutionResourceName">
    <td><CopyableCode code="solutionResourceName" /></td>
    <td><code>string</code></td>
    <td>Solution resource Name.</td>
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

Get the solution using the applicable solutionResourceName while creating the solution.

```sql
SELECT
properties
FROM azure_extras.help.solutions
WHERE scope = '{{ scope }}' -- required
AND solutionResourceName = '{{ solutionResourceName }}' -- required
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

Creates a solution for the specific Azure resource or subscription using the inputs ‘solutionId and requiredInputs’ from discovery solutions. <br /> Azure solutions comprise a comprehensive library of self-help resources that have been thoughtfully curated by Azure engineers to aid customers in resolving typical troubleshooting issues. These solutions encompass: <br /> (1.) Dynamic and context-aware diagnostics, guided troubleshooting wizards, and data visualizations. <br /> (2.) Rich instructional video tutorials and illustrative diagrams and images. <br /> (3.) Thoughtfully assembled textual troubleshooting instructions. <br /> All these components are seamlessly converged into unified solutions tailored to address a specific support problem area.

```sql
INSERT INTO azure_extras.help.solutions (
data__properties,
scope,
solutionResourceName
)
SELECT 
'{{ properties }}',
'{{ scope }}',
'{{ solutionResourceName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: solutions
  props:
    - name: scope
      value: string
      description: Required parameter for the solutions resource.
    - name: solutionResourceName
      value: string
      description: Required parameter for the solutions resource.
    - name: properties
      value: object
      description: |
        Solution result
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

Update the requiredInputs or additional information needed to execute the solution 

```sql
UPDATE azure_extras.help.solutions
SET 
data__properties = '{{ properties }}'
WHERE 
scope = '{{ scope }}' --required
AND solutionResourceName = '{{ solutionResourceName }}' --required
RETURNING
properties;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="warm_up"
    values={[
        { label: 'warm_up', value: 'warm_up' }
    ]}
>
<TabItem value="warm_up">

Warm up the solution resource by preloading asynchronous diagnostics results into cache

```sql
EXEC azure_extras.help.solutions.warm_up 
@scope='{{ scope }}' --required, 
@solutionResourceName='{{ solutionResourceName }}' --required 
@@json=
'{
"parameters": "{{ parameters }}"
}'
;
```
</TabItem>
</Tabs>
