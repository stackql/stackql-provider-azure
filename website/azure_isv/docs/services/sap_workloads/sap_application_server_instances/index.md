--- 
title: sap_application_server_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - sap_application_server_instances
  - sap_workloads
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>sap_application_server_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>sap_application_server_instances</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.sap_workloads.sap_application_server_instances" /></td></tr>
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

Describes the SAP Application Server Instance.

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
    <td>Defines the SAP Application Server instance properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

List of SAP Application Server Instance resources.

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
    <td>Defines the SAP Application Server instance properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sapVirtualInstanceName"><code>sapVirtualInstanceName</code></a>, <a href="#parameter-applicationInstanceName"><code>applicationInstanceName</code></a></td>
    <td></td>
    <td>Gets the SAP Application Server Instance corresponding to the Virtual Instance for SAP solutions resource.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sapVirtualInstanceName"><code>sapVirtualInstanceName</code></a></td>
    <td></td>
    <td>Lists the SAP Application Server Instance resources for a given Virtual Instance for SAP solutions resource.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sapVirtualInstanceName"><code>sapVirtualInstanceName</code></a>, <a href="#parameter-applicationInstanceName"><code>applicationInstanceName</code></a></td>
    <td></td>
    <td>Puts the SAP Application Server Instance resource. <br /><br />This will be used by service only. PUT by end user will return a Bad Request error.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sapVirtualInstanceName"><code>sapVirtualInstanceName</code></a>, <a href="#parameter-applicationInstanceName"><code>applicationInstanceName</code></a></td>
    <td></td>
    <td>Puts the SAP Application Server Instance resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sapVirtualInstanceName"><code>sapVirtualInstanceName</code></a>, <a href="#parameter-applicationInstanceName"><code>applicationInstanceName</code></a></td>
    <td></td>
    <td>Deletes the SAP Application Server Instance resource. <br /><br />This operation will be used by service only. Delete by end user will return a Bad Request error.</td>
</tr>
<tr>
    <td><a href="#start_instance"><CopyableCode code="start_instance" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sapVirtualInstanceName"><code>sapVirtualInstanceName</code></a>, <a href="#parameter-applicationInstanceName"><code>applicationInstanceName</code></a></td>
    <td></td>
    <td>Starts the SAP Application Server Instance.</td>
</tr>
<tr>
    <td><a href="#stop_instance"><CopyableCode code="stop_instance" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sapVirtualInstanceName"><code>sapVirtualInstanceName</code></a>, <a href="#parameter-applicationInstanceName"><code>applicationInstanceName</code></a></td>
    <td></td>
    <td>Stops the SAP Application Server Instance.</td>
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
<tr id="parameter-applicationInstanceName">
    <td><CopyableCode code="applicationInstanceName" /></td>
    <td><code>string</code></td>
    <td>The name of SAP Application Server instance resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-sapVirtualInstanceName">
    <td><CopyableCode code="sapVirtualInstanceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Virtual Instances for SAP solutions resource</td>
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
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets the SAP Application Server Instance corresponding to the Virtual Instance for SAP solutions resource.

```sql
SELECT
location,
properties,
tags
FROM azure_isv.sap_workloads.sap_application_server_instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND sapVirtualInstanceName = '{{ sapVirtualInstanceName }}' -- required
AND applicationInstanceName = '{{ applicationInstanceName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists the SAP Application Server Instance resources for a given Virtual Instance for SAP solutions resource.

```sql
SELECT
location,
properties,
tags
FROM azure_isv.sap_workloads.sap_application_server_instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND sapVirtualInstanceName = '{{ sapVirtualInstanceName }}' -- required
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

Puts the SAP Application Server Instance resource. <br /><br />This will be used by service only. PUT by end user will return a Bad Request error.

```sql
INSERT INTO azure_isv.sap_workloads.sap_application_server_instances (
data__tags,
data__location,
data__properties,
subscriptionId,
resourceGroupName,
sapVirtualInstanceName,
applicationInstanceName
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ sapVirtualInstanceName }}',
'{{ applicationInstanceName }}'
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
- name: sap_application_server_instances
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the sap_application_server_instances resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the sap_application_server_instances resource.
    - name: sapVirtualInstanceName
      value: string
      description: Required parameter for the sap_application_server_instances resource.
    - name: applicationInstanceName
      value: string
      description: Required parameter for the sap_application_server_instances resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
    - name: properties
      value: object
      description: |
        Defines the SAP Application Server instance properties.
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

Puts the SAP Application Server Instance resource.

```sql
UPDATE azure_isv.sap_workloads.sap_application_server_instances
SET 
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND sapVirtualInstanceName = '{{ sapVirtualInstanceName }}' --required
AND applicationInstanceName = '{{ applicationInstanceName }}' --required
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

Deletes the SAP Application Server Instance resource. <br /><br />This operation will be used by service only. Delete by end user will return a Bad Request error.

```sql
DELETE FROM azure_isv.sap_workloads.sap_application_server_instances
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND sapVirtualInstanceName = '{{ sapVirtualInstanceName }}' --required
AND applicationInstanceName = '{{ applicationInstanceName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="start_instance"
    values={[
        { label: 'start_instance', value: 'start_instance' },
        { label: 'stop_instance', value: 'stop_instance' }
    ]}
>
<TabItem value="start_instance">

Starts the SAP Application Server Instance.

```sql
EXEC azure_isv.sap_workloads.sap_application_server_instances.start_instance 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@sapVirtualInstanceName='{{ sapVirtualInstanceName }}' --required, 
@applicationInstanceName='{{ applicationInstanceName }}' --required
;
```
</TabItem>
<TabItem value="stop_instance">

Stops the SAP Application Server Instance.

```sql
EXEC azure_isv.sap_workloads.sap_application_server_instances.stop_instance 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@sapVirtualInstanceName='{{ sapVirtualInstanceName }}' --required, 
@applicationInstanceName='{{ applicationInstanceName }}' --required 
@@json=
'{
"softStopTimeoutSeconds": {{ softStopTimeoutSeconds }}
}'
;
```
</TabItem>
</Tabs>
