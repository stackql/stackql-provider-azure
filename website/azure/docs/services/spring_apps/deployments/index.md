--- 
title: deployments
hide_title: false
hide_table_of_contents: false
keywords:
  - deployments
  - spring_apps
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

Creates, updates, deletes, gets or lists a <code>deployments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>deployments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.deployments" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' },
        { label: 'list_for_cluster', value: 'list_for_cluster' }
    ]}
>
<TabItem value="get">

Success. The response describes the corresponding Deployment.

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
    <td>Properties of the Deployment resource</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Sku of the Deployment resource</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Success. The response describes the list of Deployments in the App.

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
    <td>Properties of the Deployment resource</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Sku of the Deployment resource</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_for_cluster">

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
    <td>Properties of the Deployment resource</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Sku of the Deployment resource</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Get a Deployment and its properties.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-appName"><code>appName</code></a></td>
    <td><a href="#parameter-version"><code>version</code></a>, <a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Handles requests to list all resources in an App.</td>
</tr>
<tr>
    <td><a href="#list_for_cluster"><CopyableCode code="list_for_cluster" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td><a href="#parameter-version"><code>version</code></a>, <a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>List deployments for a certain service</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Create a new Deployment or update an exiting Deployment.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Operation to update an exiting Deployment.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Operation to delete a Deployment.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Start the deployment.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Stop the deployment.</td>
</tr>
<tr>
    <td><a href="#restart"><CopyableCode code="restart" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Restart the deployment.</td>
</tr>
<tr>
    <td><a href="#enable_remote_debugging"><CopyableCode code="enable_remote_debugging" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Enable remote debugging.</td>
</tr>
<tr>
    <td><a href="#disable_remote_debugging"><CopyableCode code="disable_remote_debugging" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Disable remote debugging.</td>
</tr>
<tr>
    <td><a href="#generate_heap_dump"><CopyableCode code="generate_heap_dump" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Generate Heap Dump</td>
</tr>
<tr>
    <td><a href="#generate_thread_dump"><CopyableCode code="generate_thread_dump" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Generate Thread Dump</td>
</tr>
<tr>
    <td><a href="#start_jfr"><CopyableCode code="start_jfr" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-appName"><code>appName</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td></td>
    <td>Start JFR</td>
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
<tr id="parameter-appName">
    <td><CopyableCode code="appName" /></td>
    <td><code>string</code></td>
    <td>The name of the App resource.</td>
</tr>
<tr id="parameter-deploymentName">
    <td><CopyableCode code="deploymentName" /></td>
    <td><code>string</code></td>
    <td>The name of the Deployment resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Service resource.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Gets subscription ID which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>The expand expression to apply on the operation.</td>
</tr>
<tr id="parameter-version">
    <td><CopyableCode code="version" /></td>
    <td><code>array</code></td>
    <td>Version of the deployments to be listed</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' },
        { label: 'list_for_cluster', value: 'list_for_cluster' }
    ]}
>
<TabItem value="get">

Get a Deployment and its properties.

```sql
SELECT
properties,
sku
FROM azure.spring_apps.deployments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND appName = '{{ appName }}' -- required
AND deploymentName = '{{ deploymentName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Handles requests to list all resources in an App.

```sql
SELECT
properties,
sku
FROM azure.spring_apps.deployments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND appName = '{{ appName }}' -- required
AND version = '{{ version }}'
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list_for_cluster">

List deployments for a certain service

```sql
SELECT
properties,
sku
FROM azure.spring_apps.deployments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND version = '{{ version }}'
AND $expand = '{{ $expand }}'
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

Create a new Deployment or update an exiting Deployment.

```sql
INSERT INTO azure.spring_apps.deployments (
data__properties,
data__sku,
subscriptionId,
resourceGroupName,
serviceName,
appName,
deploymentName
)
SELECT 
'{{ properties }}',
'{{ sku }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ serviceName }}',
'{{ appName }}',
'{{ deploymentName }}'
RETURNING
properties,
sku
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: deployments
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the deployments resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the deployments resource.
    - name: serviceName
      value: string
      description: Required parameter for the deployments resource.
    - name: appName
      value: string
      description: Required parameter for the deployments resource.
    - name: deploymentName
      value: string
      description: Required parameter for the deployments resource.
    - name: properties
      value: object
      description: |
        Properties of the Deployment resource
    - name: sku
      value: object
      description: |
        Sku of the Deployment resource
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

Operation to update an exiting Deployment.

```sql
UPDATE azure.spring_apps.deployments
SET 
data__properties = '{{ properties }}',
data__sku = '{{ sku }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND serviceName = '{{ serviceName }}' --required
AND appName = '{{ appName }}' --required
AND deploymentName = '{{ deploymentName }}' --required
RETURNING
properties,
sku;
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

Operation to delete a Deployment.

```sql
DELETE FROM azure.spring_apps.deployments
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND serviceName = '{{ serviceName }}' --required
AND appName = '{{ appName }}' --required
AND deploymentName = '{{ deploymentName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="start"
    values={[
        { label: 'start', value: 'start' },
        { label: 'stop', value: 'stop' },
        { label: 'restart', value: 'restart' },
        { label: 'enable_remote_debugging', value: 'enable_remote_debugging' },
        { label: 'disable_remote_debugging', value: 'disable_remote_debugging' },
        { label: 'generate_heap_dump', value: 'generate_heap_dump' },
        { label: 'generate_thread_dump', value: 'generate_thread_dump' },
        { label: 'start_jfr', value: 'start_jfr' }
    ]}
>
<TabItem value="start">

Start the deployment.

```sql
EXEC azure.spring_apps.deployments.start 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@appName='{{ appName }}' --required, 
@deploymentName='{{ deploymentName }}' --required
;
```
</TabItem>
<TabItem value="stop">

Stop the deployment.

```sql
EXEC azure.spring_apps.deployments.stop 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@appName='{{ appName }}' --required, 
@deploymentName='{{ deploymentName }}' --required
;
```
</TabItem>
<TabItem value="restart">

Restart the deployment.

```sql
EXEC azure.spring_apps.deployments.restart 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@appName='{{ appName }}' --required, 
@deploymentName='{{ deploymentName }}' --required
;
```
</TabItem>
<TabItem value="enable_remote_debugging">

Enable remote debugging.

```sql
EXEC azure.spring_apps.deployments.enable_remote_debugging 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@appName='{{ appName }}' --required, 
@deploymentName='{{ deploymentName }}' --required 
@@json=
'{
"port": {{ port }}
}'
;
```
</TabItem>
<TabItem value="disable_remote_debugging">

Disable remote debugging.

```sql
EXEC azure.spring_apps.deployments.disable_remote_debugging 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@appName='{{ appName }}' --required, 
@deploymentName='{{ deploymentName }}' --required
;
```
</TabItem>
<TabItem value="generate_heap_dump">

Generate Heap Dump

```sql
EXEC azure.spring_apps.deployments.generate_heap_dump 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@appName='{{ appName }}' --required, 
@deploymentName='{{ deploymentName }}' --required 
@@json=
'{
"appInstance": "{{ appInstance }}", 
"filePath": "{{ filePath }}", 
"duration": "{{ duration }}"
}'
;
```
</TabItem>
<TabItem value="generate_thread_dump">

Generate Thread Dump

```sql
EXEC azure.spring_apps.deployments.generate_thread_dump 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@appName='{{ appName }}' --required, 
@deploymentName='{{ deploymentName }}' --required 
@@json=
'{
"appInstance": "{{ appInstance }}", 
"filePath": "{{ filePath }}", 
"duration": "{{ duration }}"
}'
;
```
</TabItem>
<TabItem value="start_jfr">

Start JFR

```sql
EXEC azure.spring_apps.deployments.start_jfr 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@appName='{{ appName }}' --required, 
@deploymentName='{{ deploymentName }}' --required 
@@json=
'{
"appInstance": "{{ appInstance }}", 
"filePath": "{{ filePath }}", 
"duration": "{{ duration }}"
}'
;
```
</TabItem>
</Tabs>
