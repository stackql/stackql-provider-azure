--- 
title: threat_intelligence_indicators
hide_title: false
hide_table_of_contents: false
keywords:
  - threat_intelligence_indicators
  - sentinel
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

Creates, updates, deletes, gets or lists a <code>threat_intelligence_indicators</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>threat_intelligence_indicators</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sentinel.threat_intelligence_indicators" /></td></tr>
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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Etag of the azure resource</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of the entity.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Etag of the azure resource</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of the entity.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>View a threat intelligence indicator by name.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$skipToken"><code>$skipToken</code></a>, <a href="#parameter-$orderby"><code>$orderby</code></a></td>
    <td>Get all threat intelligence indicators.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Update a threat Intelligence indicator.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Delete a threat intelligence indicator.</td>
</tr>
<tr>
    <td><a href="#query_indicators"><CopyableCode code="query_indicators" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a></td>
    <td></td>
    <td>Query threat intelligence indicators as per filtering criteria.</td>
</tr>
<tr>
    <td><a href="#append_tags"><CopyableCode code="append_tags" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Append tags to a threat intelligence indicator.</td>
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
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Threat intelligence indicator name field.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-workspaceName">
    <td><CopyableCode code="workspaceName" /></td>
    <td><code>string</code></td>
    <td>The name of the workspace.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Filters the results, based on a Boolean condition. Optional.</td>
</tr>
<tr id="parameter-$orderby">
    <td><CopyableCode code="$orderby" /></td>
    <td><code>string</code></td>
    <td>Sorts the results. Optional.</td>
</tr>
<tr id="parameter-$skipToken">
    <td><CopyableCode code="$skipToken" /></td>
    <td><code>string</code></td>
    <td>Skiptoken is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skiptoken parameter that specifies a starting point to use for subsequent calls. Optional.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>Returns only the first n results. Optional.</td>
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

View a threat intelligence indicator by name.

```sql
SELECT
etag,
kind
FROM azure.sentinel.threat_intelligence_indicators
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND name = '{{ name }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get all threat intelligence indicators.

```sql
SELECT
etag,
kind
FROM azure.sentinel.threat_intelligence_indicators
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
AND $skipToken = '{{ $skipToken }}'
AND $orderby = '{{ $orderby }}'
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

Update a threat Intelligence indicator.

```sql
INSERT INTO azure.sentinel.threat_intelligence_indicators (
data__kind,
data__properties,
subscriptionId,
resourceGroupName,
workspaceName,
name
)
SELECT 
'{{ kind }}',
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ workspaceName }}',
'{{ name }}'
RETURNING
etag,
kind
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: threat_intelligence_indicators
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the threat_intelligence_indicators resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the threat_intelligence_indicators resource.
    - name: workspaceName
      value: string
      description: Required parameter for the threat_intelligence_indicators resource.
    - name: name
      value: string
      description: Required parameter for the threat_intelligence_indicators resource.
    - name: kind
      value: string
      description: |
        The kind of the entity.
      valid_values: ['indicator']
    - name: properties
      value: object
      description: |
        Threat Intelligence Entity properties
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

Delete a threat intelligence indicator.

```sql
DELETE FROM azure.sentinel.threat_intelligence_indicators
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND workspaceName = '{{ workspaceName }}' --required
AND name = '{{ name }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="query_indicators"
    values={[
        { label: 'query_indicators', value: 'query_indicators' },
        { label: 'append_tags', value: 'append_tags' }
    ]}
>
<TabItem value="query_indicators">

Query threat intelligence indicators as per filtering criteria.

```sql
EXEC azure.sentinel.threat_intelligence_indicators.query_indicators 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@workspaceName='{{ workspaceName }}' --required 
@@json=
'{
"pageSize": {{ pageSize }}, 
"minConfidence": {{ minConfidence }}, 
"maxConfidence": {{ maxConfidence }}, 
"minValidUntil": "{{ minValidUntil }}", 
"maxValidUntil": "{{ maxValidUntil }}", 
"includeDisabled": {{ includeDisabled }}, 
"sortBy": "{{ sortBy }}", 
"sources": "{{ sources }}", 
"patternTypes": "{{ patternTypes }}", 
"threatTypes": "{{ threatTypes }}", 
"ids": "{{ ids }}", 
"keywords": "{{ keywords }}", 
"skipToken": "{{ skipToken }}"
}'
;
```
</TabItem>
<TabItem value="append_tags">

Append tags to a threat intelligence indicator.

```sql
EXEC azure.sentinel.threat_intelligence_indicators.append_tags 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@workspaceName='{{ workspaceName }}' --required, 
@name='{{ name }}' --required 
@@json=
'{
"threatIntelligenceTags": "{{ threatIntelligenceTags }}"
}'
;
```
</TabItem>
</Tabs>
