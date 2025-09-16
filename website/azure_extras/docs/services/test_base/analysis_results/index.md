--- 
title: analysis_results
hide_title: false
hide_table_of_contents: false
keywords:
  - analysis_results
  - test_base
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

Creates, updates, deletes, gets or lists an <code>analysis_results</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>analysis_results</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.analysis_results" /></td></tr>
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

The operation is completed.

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
    <td>Properties of an Analysis Result.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

The operation is completed.

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
    <td>Properties of an Analysis Result.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-packageName"><code>packageName</code></a>, <a href="#parameter-testResultName"><code>testResultName</code></a>, <a href="#parameter-analysisResultName"><code>analysisResultName</code></a></td>
    <td></td>
    <td>Gets an Analysis Result of a Test Result by name.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-packageName"><code>packageName</code></a>, <a href="#parameter-testResultName"><code>testResultName</code></a>, <a href="#parameter-analysisResultType"><code>analysisResultType</code></a></td>
    <td></td>
    <td>Lists the Analysis Results of a Test Result. The result collection will only contain one element as all the data will be nested in a singleton object.</td>
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
<tr id="parameter-analysisResultName">
    <td><CopyableCode code="analysisResultName" /></td>
    <td><code>string</code></td>
    <td>The name of the Analysis Result of a Test Result.</td>
</tr>
<tr id="parameter-analysisResultType">
    <td><CopyableCode code="analysisResultType" /></td>
    <td><code>string</code></td>
    <td>The type of the Analysis Result of a Test Result.</td>
</tr>
<tr id="parameter-packageName">
    <td><CopyableCode code="packageName" /></td>
    <td><code>string</code></td>
    <td>The resource name of the Test Base Package.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-testBaseAccountName">
    <td><CopyableCode code="testBaseAccountName" /></td>
    <td><code>string</code></td>
    <td>The resource name of the Test Base Account.</td>
</tr>
<tr id="parameter-testResultName">
    <td><CopyableCode code="testResultName" /></td>
    <td><code>string</code></td>
    <td>The Test Result Name. It equals to TestResult-&#123;TestResultId&#125; string.</td>
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

Gets an Analysis Result of a Test Result by name.

```sql
SELECT
properties
FROM azure_extras.test_base.analysis_results
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND testBaseAccountName = '{{ testBaseAccountName }}' -- required
AND packageName = '{{ packageName }}' -- required
AND testResultName = '{{ testResultName }}' -- required
AND analysisResultName = '{{ analysisResultName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists the Analysis Results of a Test Result. The result collection will only contain one element as all the data will be nested in a singleton object.

```sql
SELECT
properties
FROM azure_extras.test_base.analysis_results
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND testBaseAccountName = '{{ testBaseAccountName }}' -- required
AND packageName = '{{ packageName }}' -- required
AND testResultName = '{{ testResultName }}' -- required
AND analysisResultType = '{{ analysisResultType }}' -- required
;
```
</TabItem>
</Tabs>
