--- 
title: logic_apps
hide_title: false
hide_table_of_contents: false
keywords:
  - logic_apps
  - container_apps
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

Creates, updates, deletes, gets or lists a <code>logic_apps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>logic_apps</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_apps.logic_apps" /></td></tr>
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
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a>, <a href="#parameter-logicAppName"><code>logicAppName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a>, <a href="#parameter-logicAppName"><code>logicAppName</code></a></td>
    <td></td>
    <td>Create or update a Logic App extension resource</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a>, <a href="#parameter-logicAppName"><code>logicAppName</code></a></td>
    <td></td>
    <td>Deletes a Logic App extension resource</td>
</tr>
<tr>
    <td><a href="#deploy_workflow_artifacts"><CopyableCode code="deploy_workflow_artifacts" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a>, <a href="#parameter-logicAppName"><code>logicAppName</code></a></td>
    <td></td>
    <td>Creates or updates the artifacts for the logic app</td>
</tr>
<tr>
    <td><a href="#invoke"><CopyableCode code="invoke" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a>, <a href="#parameter-logicAppName"><code>logicAppName</code></a>, <a href="#parameter-x-ms-logicApps-proxy-path"><code>x-ms-logicApps-proxy-path</code></a>, <a href="#parameter-x-ms-logicApps-proxy-method"><code>x-ms-logicApps-proxy-method</code></a></td>
    <td></td>
    <td></td>
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
<tr id="parameter-containerAppName">
    <td><CopyableCode code="containerAppName" /></td>
    <td><code>string</code></td>
    <td>Name of the Container App.</td>
</tr>
<tr id="parameter-logicAppName">
    <td><CopyableCode code="logicAppName" /></td>
    <td><code>string</code></td>
    <td>Name of the LogicApp App, the extension resource.</td>
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
<tr id="parameter-x-ms-logicApps-proxy-method">
    <td><CopyableCode code="x-ms-logicApps-proxy-method" /></td>
    <td><code>string</code></td>
    <td>The proxy method for the API call</td>
</tr>
<tr id="parameter-x-ms-logicApps-proxy-path">
    <td><CopyableCode code="x-ms-logicApps-proxy-path" /></td>
    <td><code>string</code></td>
    <td>The proxy path for the API call</td>
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

OK

```sql
SELECT
properties
FROM azure.container_apps.logic_apps
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND containerAppName = '{{ containerAppName }}' -- required
AND logicAppName = '{{ logicAppName }}' -- required
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

Create or update a Logic App extension resource

```sql
INSERT INTO azure.container_apps.logic_apps (
data__properties,
subscriptionId,
resourceGroupName,
containerAppName,
logicAppName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ containerAppName }}',
'{{ logicAppName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: logic_apps
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the logic_apps resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the logic_apps resource.
    - name: containerAppName
      value: string
      description: Required parameter for the logic_apps resource.
    - name: logicAppName
      value: string
      description: Required parameter for the logic_apps resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
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

Deletes a Logic App extension resource

```sql
DELETE FROM azure.container_apps.logic_apps
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND containerAppName = '{{ containerAppName }}' --required
AND logicAppName = '{{ logicAppName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="deploy_workflow_artifacts"
    values={[
        { label: 'deploy_workflow_artifacts', value: 'deploy_workflow_artifacts' },
        { label: 'invoke', value: 'invoke' }
    ]}
>
<TabItem value="deploy_workflow_artifacts">

Creates or updates the artifacts for the logic app

```sql
EXEC azure.container_apps.logic_apps.deploy_workflow_artifacts 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@containerAppName='{{ containerAppName }}' --required, 
@logicAppName='{{ logicAppName }}' --required 
@@json=
'{
"appSettings": "{{ appSettings }}", 
"files": "{{ files }}", 
"filesToDelete": "{{ filesToDelete }}"
}'
;
```
</TabItem>
<TabItem value="invoke">

Logic App call response.

```sql
EXEC azure.container_apps.logic_apps.invoke 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@containerAppName='{{ containerAppName }}' --required, 
@logicAppName='{{ logicAppName }}' --required, 
@x-ms-logicApps-proxy-path='{{ x-ms-logicApps-proxy-path }}' --required, 
@x-ms-logicApps-proxy-method='{{ x-ms-logicApps-proxy-method }}' --required
;
```
</TabItem>
</Tabs>
