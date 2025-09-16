--- 
title: adds_services_user_preferences
hide_title: false
hide_table_of_contents: false
keywords:
  - adds_services_user_preferences
  - ad_hybrid_health_service
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

Creates, updates, deletes, gets or lists an <code>adds_services_user_preferences</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>adds_services_user_preferences</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.adds_services_user_preferences" /></td></tr>
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

The user preference settings. 

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
    <td><CopyableCode code="metricNames" /></td>
    <td><code>array</code></td>
    <td>The name of the metric.</td>
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
    <td><a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-featureName"><code>featureName</code></a></td>
    <td></td>
    <td>Gets the user preferences for a given feature.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-featureName"><code>featureName</code></a></td>
    <td></td>
    <td>Deletes the user preferences for a given feature.</td>
</tr>
<tr>
    <td><a href="#add"><CopyableCode code="add" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-featureName"><code>featureName</code></a></td>
    <td></td>
    <td>Adds the user preferences for a given feature.</td>
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
<tr id="parameter-featureName">
    <td><CopyableCode code="featureName" /></td>
    <td><code>string</code></td>
    <td>The name of the feature.</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the service.</td>
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

Gets the user preferences for a given feature.

```sql
SELECT
metricNames
FROM azure.ad_hybrid_health_service.adds_services_user_preferences
WHERE serviceName = '{{ serviceName }}' -- required
AND featureName = '{{ featureName }}' -- required
;
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

Deletes the user preferences for a given feature.

```sql
DELETE FROM azure.ad_hybrid_health_service.adds_services_user_preferences
WHERE serviceName = '{{ serviceName }}' --required
AND featureName = '{{ featureName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="add"
    values={[
        { label: 'add', value: 'add' }
    ]}
>
<TabItem value="add">

Adds the user preferences for a given feature.

```sql
EXEC azure.ad_hybrid_health_service.adds_services_user_preferences.add 
@serviceName='{{ serviceName }}' --required, 
@featureName='{{ featureName }}' --required 
@@json=
'{
"metricNames": "{{ metricNames }}"
}'
;
```
</TabItem>
</Tabs>
