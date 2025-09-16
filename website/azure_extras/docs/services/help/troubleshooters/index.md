--- 
title: troubleshooters
hide_title: false
hide_table_of_contents: false
keywords:
  - troubleshooters
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

Creates, updates, deletes, gets or lists a <code>troubleshooters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>troubleshooters</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.help.troubleshooters" /></td></tr>
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

Successful fetched Troubleshooter instance.

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
    <td>Troubleshooter Instance properties.</td>
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
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-troubleshooterName"><code>troubleshooterName</code></a></td>
    <td></td>
    <td>Gets troubleshooter instance result which includes the step status/result of the troubleshooter resource name that is being executed.<br /> Get API is used to retrieve the result of a Troubleshooter instance, which includes the status and result of each step in the Troubleshooter workflow. This API requires the Troubleshooter resource name that was created using the Create API.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-troubleshooterName"><code>troubleshooterName</code></a></td>
    <td></td>
    <td>Creates the specific troubleshooter action under a resource or subscription using the ‘solutionId’ and  ‘properties.parameters’ as the trigger. <br /> Azure Troubleshooters help with hard to classify issues, reducing the gap between customer observed problems and solutions by guiding the user effortlessly through the troubleshooting process. Each Troubleshooter flow represents a problem area within Azure and has a complex tree-like structure that addresses many root causes. These flows are prepared with the help of Subject Matter experts and customer support engineers by carefully considering previous support requests raised by customers. Troubleshooters terminate at a well curated solution based off of resource backend signals and customer manual selections.</td>
</tr>
<tr>
    <td><a href="#continue"><CopyableCode code="continue" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-troubleshooterName"><code>troubleshooterName</code></a></td>
    <td></td>
    <td>Uses ‘stepId’ and ‘responses’ as the trigger to continue the troubleshooting steps for the respective troubleshooter resource name. <br />Continue API is used to provide inputs that are required for the specific troubleshooter to progress into the next step in the process. This API is used after the Troubleshooter has been created using the Create API.</td>
</tr>
<tr>
    <td><a href="#end"><CopyableCode code="end" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-troubleshooterName"><code>troubleshooterName</code></a></td>
    <td></td>
    <td>Ends the troubleshooter action</td>
</tr>
<tr>
    <td><a href="#restart"><CopyableCode code="restart" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-troubleshooterName"><code>troubleshooterName</code></a></td>
    <td></td>
    <td>Restarts the troubleshooter API using applicable troubleshooter resource name as the input.<br /> It returns new resource name which should be used in subsequent request. The old resource name is obsolete after this API is invoked.</td>
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
<tr id="parameter-troubleshooterName">
    <td><CopyableCode code="troubleshooterName" /></td>
    <td><code>string</code></td>
    <td>Troubleshooter resource Name.</td>
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

Gets troubleshooter instance result which includes the step status/result of the troubleshooter resource name that is being executed.<br /> Get API is used to retrieve the result of a Troubleshooter instance, which includes the status and result of each step in the Troubleshooter workflow. This API requires the Troubleshooter resource name that was created using the Create API.

```sql
SELECT
properties
FROM azure_extras.help.troubleshooters
WHERE scope = '{{ scope }}' -- required
AND troubleshooterName = '{{ troubleshooterName }}' -- required
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

Creates the specific troubleshooter action under a resource or subscription using the ‘solutionId’ and  ‘properties.parameters’ as the trigger. <br /> Azure Troubleshooters help with hard to classify issues, reducing the gap between customer observed problems and solutions by guiding the user effortlessly through the troubleshooting process. Each Troubleshooter flow represents a problem area within Azure and has a complex tree-like structure that addresses many root causes. These flows are prepared with the help of Subject Matter experts and customer support engineers by carefully considering previous support requests raised by customers. Troubleshooters terminate at a well curated solution based off of resource backend signals and customer manual selections.

```sql
INSERT INTO azure_extras.help.troubleshooters (
data__properties,
scope,
troubleshooterName
)
SELECT 
'{{ properties }}',
'{{ scope }}',
'{{ troubleshooterName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: troubleshooters
  props:
    - name: scope
      value: string
      description: Required parameter for the troubleshooters resource.
    - name: troubleshooterName
      value: string
      description: Required parameter for the troubleshooters resource.
    - name: properties
      value: object
      description: |
        Troubleshooter Instance properties.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="continue"
    values={[
        { label: 'continue', value: 'continue' },
        { label: 'end', value: 'end' },
        { label: 'restart', value: 'restart' }
    ]}
>
<TabItem value="continue">

Uses ‘stepId’ and ‘responses’ as the trigger to continue the troubleshooting steps for the respective troubleshooter resource name. <br />Continue API is used to provide inputs that are required for the specific troubleshooter to progress into the next step in the process. This API is used after the Troubleshooter has been created using the Create API.

```sql
EXEC azure_extras.help.troubleshooters.continue 
@scope='{{ scope }}' --required, 
@troubleshooterName='{{ troubleshooterName }}' --required 
@@json=
'{
"stepId": "{{ stepId }}", 
"responses": "{{ responses }}"
}'
;
```
</TabItem>
<TabItem value="end">

Ends the troubleshooter action

```sql
EXEC azure_extras.help.troubleshooters.end 
@scope='{{ scope }}' --required, 
@troubleshooterName='{{ troubleshooterName }}' --required
;
```
</TabItem>
<TabItem value="restart">

Restarts the troubleshooter API using applicable troubleshooter resource name as the input.<br /> It returns new resource name which should be used in subsequent request. The old resource name is obsolete after this API is invoked.

```sql
EXEC azure_extras.help.troubleshooters.restart 
@scope='{{ scope }}' --required, 
@troubleshooterName='{{ troubleshooterName }}' --required
;
```
</TabItem>
</Tabs>
