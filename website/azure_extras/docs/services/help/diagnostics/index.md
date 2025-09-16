--- 
title: diagnostics
hide_title: false
hide_table_of_contents: false
keywords:
  - diagnostics
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

Creates, updates, deletes, gets or lists a <code>diagnostics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>diagnostics</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.help.diagnostics" /></td></tr>
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

Successful fetched insight diagnostic (may contain errors).

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
    <td>Diagnostic Resource properties.</td>
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
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-diagnosticsResourceName"><code>diagnosticsResourceName</code></a></td>
    <td></td>
    <td>Get the diagnostics using the 'diagnosticsResourceName' you chose while creating the diagnostic.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-diagnosticsResourceName"><code>diagnosticsResourceName</code></a></td>
    <td></td>
    <td>Creates a diagnostic for the specific resource using solutionId from discovery solutions. <br />Diagnostics are powerful solutions that access product resources or other relevant data and provide the root cause of the issue and the steps to address the issue.<br /><br /></td>
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
<tr id="parameter-diagnosticsResourceName">
    <td><CopyableCode code="diagnosticsResourceName" /></td>
    <td><code>string</code></td>
    <td>Unique resource name for insight resources</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope at which the operation is performed.</td>
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

Get the diagnostics using the 'diagnosticsResourceName' you chose while creating the diagnostic.

```sql
SELECT
properties
FROM azure_extras.help.diagnostics
WHERE scope = '{{ scope }}' -- required
AND diagnosticsResourceName = '{{ diagnosticsResourceName }}' -- required
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

Creates a diagnostic for the specific resource using solutionId from discovery solutions. <br />Diagnostics are powerful solutions that access product resources or other relevant data and provide the root cause of the issue and the steps to address the issue.<br /><br />

```sql
INSERT INTO azure_extras.help.diagnostics (
data__properties,
scope,
diagnosticsResourceName
)
SELECT 
'{{ properties }}',
'{{ scope }}',
'{{ diagnosticsResourceName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: diagnostics
  props:
    - name: scope
      value: string
      description: Required parameter for the diagnostics resource.
    - name: diagnosticsResourceName
      value: string
      description: Required parameter for the diagnostics resource.
    - name: properties
      value: object
      description: |
        Diagnostic Resource properties.
```
</TabItem>
</Tabs>
