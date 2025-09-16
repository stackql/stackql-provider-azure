--- 
title: reference_data_sets
hide_title: false
hide_table_of_contents: false
keywords:
  - reference_data_sets
  - time_series_insights
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

Creates, updates, deletes, gets or lists a <code>reference_data_sets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>reference_data_sets</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.time_series_insights.reference_data_sets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_environment', value: 'list_by_environment' }
    ]}
>
<TabItem value="get">

The reference data set definition was successfully retrieved and is in the response.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the reference data set.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_environment">

Reference data sets returned successfully.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the reference data set.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-environmentName"><code>environmentName</code></a>, <a href="#parameter-referenceDataSetName"><code>referenceDataSetName</code></a></td>
    <td></td>
    <td>Gets the reference data set with the specified name in the specified environment.</td>
</tr>
<tr>
    <td><a href="#list_by_environment"><CopyableCode code="list_by_environment" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-environmentName"><code>environmentName</code></a></td>
    <td></td>
    <td>Lists all the available reference data sets associated with the subscription and within the specified resource group and environment.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-environmentName"><code>environmentName</code></a>, <a href="#parameter-referenceDataSetName"><code>referenceDataSetName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create or update a reference data set in the specified environment.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-environmentName"><code>environmentName</code></a>, <a href="#parameter-referenceDataSetName"><code>referenceDataSetName</code></a></td>
    <td></td>
    <td>Updates the reference data set with the specified name in the specified subscription, resource group, and environment.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-environmentName"><code>environmentName</code></a>, <a href="#parameter-referenceDataSetName"><code>referenceDataSetName</code></a></td>
    <td></td>
    <td>Deletes the reference data set with the specified name in the specified subscription, resource group, and environment</td>
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
<tr id="parameter-environmentName">
    <td><CopyableCode code="environmentName" /></td>
    <td><code>string</code></td>
    <td>The name of the Time Series Insights environment associated with the specified resource group.</td>
</tr>
<tr id="parameter-referenceDataSetName">
    <td><CopyableCode code="referenceDataSetName" /></td>
    <td><code>string</code></td>
    <td>The name of the Time Series Insights reference data set associated with the specified environment.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_environment', value: 'list_by_environment' }
    ]}
>
<TabItem value="get">

Gets the reference data set with the specified name in the specified environment.

```sql
SELECT
location,
properties,
tags
FROM azure.time_series_insights.reference_data_sets
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND environmentName = '{{ environmentName }}' -- required
AND referenceDataSetName = '{{ referenceDataSetName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_environment">

Lists all the available reference data sets associated with the subscription and within the specified resource group and environment.

```sql
SELECT
location,
properties,
tags
FROM azure.time_series_insights.reference_data_sets
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND environmentName = '{{ environmentName }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Create or update a reference data set in the specified environment.

```sql
INSERT INTO azure.time_series_insights.reference_data_sets (
data__properties,
data__location,
data__tags,
subscriptionId,
resourceGroupName,
environmentName,
referenceDataSetName
)
SELECT 
'{{ properties }}' /* required */,
'{{ location }}',
'{{ tags }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ environmentName }}',
'{{ referenceDataSetName }}'
RETURNING
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: reference_data_sets
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the reference_data_sets resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the reference_data_sets resource.
    - name: environmentName
      value: string
      description: Required parameter for the reference_data_sets resource.
    - name: referenceDataSetName
      value: string
      description: Required parameter for the reference_data_sets resource.
    - name: properties
      value: object
      description: |
        Properties used to create a reference data set.
    - name: location
      value: string
      description: |
        The location of the resource.
    - name: tags
      value: object
      description: |
        Key-value pairs of additional properties for the resource.
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

Updates the reference data set with the specified name in the specified subscription, resource group, and environment.

```sql
UPDATE azure.time_series_insights.reference_data_sets
SET 
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND environmentName = '{{ environmentName }}' --required
AND referenceDataSetName = '{{ referenceDataSetName }}' --required
RETURNING
location,
properties,
tags;
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

Deletes the reference data set with the specified name in the specified subscription, resource group, and environment

```sql
DELETE FROM azure.time_series_insights.reference_data_sets
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND environmentName = '{{ environmentName }}' --required
AND referenceDataSetName = '{{ referenceDataSetName }}' --required
;
```
</TabItem>
</Tabs>
