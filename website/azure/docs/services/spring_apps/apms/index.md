--- 
title: apms
hide_title: false
hide_table_of_contents: false
keywords:
  - apms
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

Creates, updates, deletes, gets or lists an <code>apms</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>apms</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.apms" /></td></tr>
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

Success. The response describes the APM.

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
    <td>Properties of an APM</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Success. The response describes the list of APMs.

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
    <td>Properties of an APM</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-apmName"><code>apmName</code></a></td>
    <td></td>
    <td>Get the APM by name.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td></td>
    <td>Get collection of APMs.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-apmName"><code>apmName</code></a></td>
    <td></td>
    <td>Create or update an APM.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-apmName"><code>apmName</code></a></td>
    <td></td>
    <td>Operation to delete an APM</td>
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
<tr id="parameter-apmName">
    <td><CopyableCode code="apmName" /></td>
    <td><code>string</code></td>
    <td>The name of the APM</td>
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

Get the APM by name.

```sql
SELECT
properties
FROM azure.spring_apps.apms
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND apmName = '{{ apmName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get collection of APMs.

```sql
SELECT
properties
FROM azure.spring_apps.apms
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
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

Create or update an APM.

```sql
INSERT INTO azure.spring_apps.apms (
data__properties,
subscriptionId,
resourceGroupName,
serviceName,
apmName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ serviceName }}',
'{{ apmName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: apms
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the apms resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the apms resource.
    - name: serviceName
      value: string
      description: Required parameter for the apms resource.
    - name: apmName
      value: string
      description: Required parameter for the apms resource.
    - name: properties
      value: object
      description: |
        Properties of an APM
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

Operation to delete an APM

```sql
DELETE FROM azure.spring_apps.apms
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND serviceName = '{{ serviceName }}' --required
AND apmName = '{{ apmName }}' --required
;
```
</TabItem>
</Tabs>
