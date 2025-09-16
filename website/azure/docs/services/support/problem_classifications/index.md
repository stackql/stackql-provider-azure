--- 
title: problem_classifications
hide_title: false
hide_table_of_contents: false
keywords:
  - problem_classifications
  - support
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

Creates, updates, deletes, gets or lists a <code>problem_classifications</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>problem_classifications</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.support.problem_classifications" /></td></tr>
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

Successfully retrieved problem classification details.

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
    <td>Id of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the resource 'Microsoft.Support/problemClassification'.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Successfully retrieved list of problem classifications for the specified Azure service.

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
    <td>Id of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the resource 'Microsoft.Support/problemClassification'.</td>
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
    <td><a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-problemClassificationName"><code>problemClassificationName</code></a></td>
    <td></td>
    <td>Get problem classification details for a specific Azure service.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td></td>
    <td>Lists all the problem classifications (categories) available for a specific Azure service. Always use the service and problem classifications obtained programmatically. This practice ensures that you always have the most recent set of service and problem classification Ids.</td>
</tr>
<tr>
    <td><a href="#classify_problems"><CopyableCode code="classify_problems" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-problemServiceName"><code>problemServiceName</code></a>, <a href="#parameter-issueSummary"><code>issueSummary</code></a></td>
    <td></td>
    <td>Classify the right problem classifications (categories) available for a specific Azure service. </td>
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
<tr id="parameter-problemClassificationName">
    <td><CopyableCode code="problemClassificationName" /></td>
    <td><code>string</code></td>
    <td>Name of problem classification.</td>
</tr>
<tr id="parameter-problemServiceName">
    <td><CopyableCode code="problemServiceName" /></td>
    <td><code>string</code></td>
    <td>Name of the Azure service for which the problem classifications need to be retrieved.</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>Name of the Azure service for which the problem classifications need to be retrieved.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure subscription Id.</td>
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

Get problem classification details for a specific Azure service.

```sql
SELECT
id,
name,
properties,
type
FROM azure.support.problem_classifications
WHERE serviceName = '{{ serviceName }}' -- required
AND problemClassificationName = '{{ problemClassificationName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all the problem classifications (categories) available for a specific Azure service. Always use the service and problem classifications obtained programmatically. This practice ensures that you always have the most recent set of service and problem classification Ids.

```sql
SELECT
id,
name,
properties,
type
FROM azure.support.problem_classifications
WHERE serviceName = '{{ serviceName }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="classify_problems"
    values={[
        { label: 'classify_problems', value: 'classify_problems' }
    ]}
>
<TabItem value="classify_problems">

Classify the right problem classifications (categories) available for a specific Azure service. 

```sql
EXEC azure.support.problem_classifications.classify_problems 
@subscriptionId='{{ subscriptionId }}' --required, 
@problemServiceName='{{ problemServiceName }}' --required 
@@json=
'{
"issueSummary": "{{ issueSummary }}", 
"resourceId": "{{ resourceId }}"
}'
;
```
</TabItem>
</Tabs>
