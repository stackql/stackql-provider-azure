--- 
title: api_keys
hide_title: false
hide_table_of_contents: false
keywords:
  - api_keys
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

Creates, updates, deletes, gets or lists an <code>api_keys</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>api_keys</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.application_insights.api_keys" /></td></tr>
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

The API Key for this key id.

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
    <td>The unique ID of the API key inside an Application Insights component. It is auto generated when the API key is created.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the API key.</td>
</tr>
<tr>
    <td><CopyableCode code="apiKey" /></td>
    <td><code>string</code></td>
    <td>The API key value. It will be only return once when the API Key was created.</td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string</code></td>
    <td>The create date of this API key.</td>
</tr>
<tr>
    <td><CopyableCode code="linkedReadProperties" /></td>
    <td><code>array</code></td>
    <td>The read access rights of this API Key.</td>
</tr>
<tr>
    <td><CopyableCode code="linkedWriteProperties" /></td>
    <td><code>array</code></td>
    <td>The write access rights of this API Key.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

A list containing 0 or more API key definitions of an Application Insights component.

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
    <td>The unique ID of the API key inside an Application Insights component. It is auto generated when the API key is created.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the API key.</td>
</tr>
<tr>
    <td><CopyableCode code="apiKey" /></td>
    <td><code>string</code></td>
    <td>The API key value. It will be only return once when the API Key was created.</td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string</code></td>
    <td>The create date of this API key.</td>
</tr>
<tr>
    <td><CopyableCode code="linkedReadProperties" /></td>
    <td><code>array</code></td>
    <td>The read access rights of this API Key.</td>
</tr>
<tr>
    <td><CopyableCode code="linkedWriteProperties" /></td>
    <td><code>array</code></td>
    <td>The write access rights of this API Key.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-keyId"><code>keyId</code></a></td>
    <td></td>
    <td>Get the API Key for this key id.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td></td>
    <td>Gets a list of API keys of an Application Insights component.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td></td>
    <td>Create an API Key of an Application Insights component.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-keyId"><code>keyId</code></a></td>
    <td></td>
    <td>Delete an API Key of an Application Insights component.</td>
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
<tr id="parameter-keyId">
    <td><CopyableCode code="keyId" /></td>
    <td><code>string</code></td>
    <td>The API Key ID. This is unique within a Application Insights component.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Application Insights component resource.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
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

Get the API Key for this key id.

```sql
SELECT
id,
name,
apiKey,
createdDate,
linkedReadProperties,
linkedWriteProperties
FROM azure.application_insights.api_keys
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND keyId = '{{ keyId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets a list of API keys of an Application Insights component.

```sql
SELECT
id,
name,
apiKey,
createdDate,
linkedReadProperties,
linkedWriteProperties
FROM azure.application_insights.api_keys
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceName = '{{ resourceName }}' -- required
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

Create an API Key of an Application Insights component.

```sql
INSERT INTO azure.application_insights.api_keys (
data__name,
data__linkedReadProperties,
data__linkedWriteProperties,
resourceGroupName,
subscriptionId,
resourceName
)
SELECT 
'{{ name }}',
'{{ linkedReadProperties }}',
'{{ linkedWriteProperties }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ resourceName }}'
RETURNING
id,
name,
apiKey,
createdDate,
linkedReadProperties,
linkedWriteProperties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: api_keys
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the api_keys resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the api_keys resource.
    - name: resourceName
      value: string
      description: Required parameter for the api_keys resource.
    - name: name
      value: string
      description: |
        The name of the API Key.
    - name: linkedReadProperties
      value: array
      description: |
        The read access rights of this API Key.
    - name: linkedWriteProperties
      value: array
      description: |
        The write access rights of this API Key.
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

Delete an API Key of an Application Insights component.

```sql
DELETE FROM azure.application_insights.api_keys
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceName = '{{ resourceName }}' --required
AND keyId = '{{ keyId }}' --required
;
```
</TabItem>
</Tabs>
