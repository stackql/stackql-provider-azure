--- 
title: best_practices
hide_title: false
hide_table_of_contents: false
keywords:
  - best_practices
  - automanage
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

Creates, updates, deletes, gets or lists a <code>best_practices</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>best_practices</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automanage.best_practices" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_tenant', value: 'list_by_tenant' }
    ]}
>
<TabItem value="get">

OK. The Automanage best practice was returned successfully.

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
    <td>The fully qualified ID for the best practice.  For example, /providers/Microsoft.Automanage/bestPractices/azureBestPracticesProduction</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the best practice. For example, azureBestPracticesProduction</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the best practice. (title: Properties)</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.  For example, Microsoft.Automanage/bestPractices</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_tenant">

OK. List of Automanage bestPractices configuration profile.

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
    <td>The fully qualified ID for the best practice.  For example, /providers/Microsoft.Automanage/bestPractices/azureBestPracticesProduction</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the best practice. For example, azureBestPracticesProduction</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the best practice. (title: Properties)</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.  For example, Microsoft.Automanage/bestPractices</td>
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
    <td><a href="#parameter-bestPracticeName"><code>bestPracticeName</code></a></td>
    <td></td>
    <td>Get information about a Automanage best practice</td>
</tr>
<tr>
    <td><a href="#list_by_tenant"><CopyableCode code="list_by_tenant" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>Retrieve a list of Automanage best practices</td>
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
<tr id="parameter-bestPracticeName">
    <td><CopyableCode code="bestPracticeName" /></td>
    <td><code>string</code></td>
    <td>The Automanage best practice name.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_tenant', value: 'list_by_tenant' }
    ]}
>
<TabItem value="get">

Get information about a Automanage best practice

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.automanage.best_practices
WHERE bestPracticeName = '{{ bestPracticeName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_tenant">

Retrieve a list of Automanage best practices

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.automanage.best_practices
;
```
</TabItem>
</Tabs>
