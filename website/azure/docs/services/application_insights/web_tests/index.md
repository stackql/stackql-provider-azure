--- 
title: web_tests
hide_title: false
hide_table_of_contents: false
keywords:
  - web_tests
  - application_insights
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

Creates, updates, deletes, gets or lists a <code>web_tests</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>web_tests</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.application_insights.web_tests" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_component', value: 'list_by_component' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Ann Application Insights web test definition.

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
    <td>Azure resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Azure resource name</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of WebTest that this web test watches. Choices are ping, multistep and standard. (default: ping)</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Metadata describing a web test for an Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code></code></td>
    <td>Resource tags</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Azure resource type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_component">

A list containing 0 or more web test definitions.

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
    <td>Azure resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Azure resource name</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of WebTest that this web test watches. Choices are ping, multistep and standard. (default: ping)</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Metadata describing a web test for an Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code></code></td>
    <td>Resource tags</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Azure resource type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

A list containing 0 or more web test definitions.

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
    <td>Azure resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Azure resource name</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of WebTest that this web test watches. Choices are ping, multistep and standard. (default: ping)</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Metadata describing a web test for an Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code></code></td>
    <td>Resource tags</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Azure resource type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

A list of 0 or more Application Insights web test definitions.

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
    <td>Azure resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Azure resource name</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of WebTest that this web test watches. Choices are ping, multistep and standard. (default: ping)</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Metadata describing a web test for an Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code></code></td>
    <td>Resource tags</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Azure resource type</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-webTestName"><code>webTestName</code></a></td>
    <td></td>
    <td>Get a specific Application Insights web test definition.</td>
</tr>
<tr>
    <td><a href="#list_by_component"><CopyableCode code="list_by_component" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-componentName"><code>componentName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get all Application Insights web tests defined for the specified component.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get all Application Insights web tests defined for the specified resource group.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get all Application Insights web test definitions for the specified subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-webTestName"><code>webTestName</code></a></td>
    <td></td>
    <td>Creates or updates an Application Insights web test definition.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-webTestName"><code>webTestName</code></a></td>
    <td></td>
    <td>Deletes an Application Insights web test.</td>
</tr>
<tr>
    <td><a href="#update_tags"><CopyableCode code="update_tags" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-webTestName"><code>webTestName</code></a></td>
    <td></td>
    <td>Updates the tags associated with an Application Insights web test.</td>
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
<tr id="parameter-componentName">
    <td><CopyableCode code="componentName" /></td>
    <td><code>string</code></td>
    <td>The name of the Application Insights component resource.</td>
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
<tr id="parameter-webTestName">
    <td><CopyableCode code="webTestName" /></td>
    <td><code>string</code></td>
    <td>The name of the Application Insights WebTest resource.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_component', value: 'list_by_component' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Get a specific Application Insights web test definition.

```sql
SELECT
id,
name,
kind,
location,
properties,
tags,
type
FROM azure.application_insights.web_tests
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND webTestName = '{{ webTestName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_component">

Get all Application Insights web tests defined for the specified component.

```sql
SELECT
id,
name,
kind,
location,
properties,
tags,
type
FROM azure.application_insights.web_tests
WHERE componentName = '{{ componentName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Get all Application Insights web tests defined for the specified resource group.

```sql
SELECT
id,
name,
kind,
location,
properties,
tags,
type
FROM azure.application_insights.web_tests
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get all Application Insights web test definitions for the specified subscription.

```sql
SELECT
id,
name,
kind,
location,
properties,
tags,
type
FROM azure.application_insights.web_tests
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Creates or updates an Application Insights web test definition.

```sql
INSERT INTO azure.application_insights.web_tests (
data__location,
data__tags,
data__kind,
data__properties,
resourceGroupName,
subscriptionId,
webTestName
)
SELECT 
'{{ location }}',
'{{ tags }}',
'{{ kind }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ webTestName }}'
RETURNING
id,
name,
kind,
location,
properties,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: web_tests
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the web_tests resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the web_tests resource.
    - name: webTestName
      value: string
      description: Required parameter for the web_tests resource.
    - name: location
      value: string
      description: |
        Resource location
    - name: tags
      value: string
      description: |
        Resource tags
    - name: kind
      value: string
      description: |
        The kind of WebTest that this web test watches. Choices are ping, multistep and standard.
      valid_values: ['ping', 'multistep', 'standard']
      default: ping
    - name: properties
      value: object
      description: |
        Metadata describing a web test for an Azure resource.
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

Deletes an Application Insights web test.

```sql
DELETE FROM azure.application_insights.web_tests
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND webTestName = '{{ webTestName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_tags"
    values={[
        { label: 'update_tags', value: 'update_tags' }
    ]}
>
<TabItem value="update_tags">

Updates the tags associated with an Application Insights web test.

```sql
EXEC azure.application_insights.web_tests.update_tags 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@webTestName='{{ webTestName }}' --required 
@@json=
'{
"tags": "{{ tags }}"
}'
;
```
</TabItem>
</Tabs>
