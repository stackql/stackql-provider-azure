--- 
title: published_artifacts
hide_title: false
hide_table_of_contents: false
keywords:
  - published_artifacts
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

Creates, updates, deletes, gets or lists a <code>published_artifacts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>published_artifacts</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.blueprints.published_artifacts" /></td></tr>
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

OK -- artifact of published blueprint definition retrieved.

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Specifies the kind of blueprint artifact.</td>
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

OK -- artifacts of a version of published blueprint definition retrieved.

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Specifies the kind of blueprint artifact.</td>
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
    <td><a href="#parameter-resourceScope"><code>resourceScope</code></a>, <a href="#parameter-blueprintName"><code>blueprintName</code></a>, <a href="#parameter-versionId"><code>versionId</code></a>, <a href="#parameter-artifactName"><code>artifactName</code></a></td>
    <td></td>
    <td>Get an artifact for a published blueprint definition.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceScope"><code>resourceScope</code></a>, <a href="#parameter-blueprintName"><code>blueprintName</code></a>, <a href="#parameter-versionId"><code>versionId</code></a></td>
    <td></td>
    <td>List artifacts for a version of a published blueprint definition.</td>
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
<tr id="parameter-artifactName">
    <td><CopyableCode code="artifactName" /></td>
    <td><code>string</code></td>
    <td>Name of the blueprint artifact.</td>
</tr>
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

Get an artifact for a published blueprint definition.

```sql
SELECT
id,
name,
kind,
type
FROM azure.blueprints.published_artifacts
WHERE resourceScope = '{{ resourceScope }}' -- required
AND blueprintName = '{{ blueprintName }}' -- required
AND versionId = '{{ versionId }}' -- required
AND artifactName = '{{ artifactName }}' -- required
;
```
</TabItem>
<TabItem value="list">

List artifacts for a version of a published blueprint definition.

```sql
SELECT
id,
name,
kind,
type
FROM azure.blueprints.published_artifacts
WHERE resourceScope = '{{ resourceScope }}' -- required
AND blueprintName = '{{ blueprintName }}' -- required
AND versionId = '{{ versionId }}' -- required
;
```
</TabItem>
</Tabs>
