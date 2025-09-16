--- 
title: cloud_services
hide_title: false
hide_table_of_contents: false
keywords:
  - cloud_services
  - compute
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

Creates, updates, deletes, gets or lists a <code>cloud_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>cloud_services</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.cloud_services" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'get_instance_view', value: 'get_instance_view' },
        { label: 'list', value: 'list' },
        { label: 'list_all', value: 'list_all' }
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Cloud service properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>List of logical availability zone of the resource. List should contain only 1 zone where cloud service should be provisioned. This field is optional.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_instance_view">

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
    <td><CopyableCode code="privateIds" /></td>
    <td><code>array</code></td>
    <td>Specifies a list of unique identifiers generated internally for the cloud service. <br /><br /> NOTE: If you are using Azure Diagnostics extension, this property can be used as 'DeploymentId' for querying details.</td>
</tr>
<tr>
    <td><CopyableCode code="roleInstance" /></td>
    <td><code>object</code></td>
    <td>Instance view statuses.</td>
</tr>
<tr>
    <td><CopyableCode code="sdkVersion" /></td>
    <td><code>string</code></td>
    <td>The version of the SDK that was used to generate the package for the cloud service.</td>
</tr>
<tr>
    <td><CopyableCode code="statuses" /></td>
    <td><code>array</code></td>
    <td></td>
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Cloud service properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>List of logical availability zone of the resource. List should contain only 1 zone where cloud service should be provisioned. This field is optional.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_all">

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
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Cloud service properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>List of logical availability zone of the resource. List should contain only 1 zone where cloud service should be provisioned. This field is optional.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Display information about a cloud service.</td>
</tr>
<tr>
    <td><a href="#get_instance_view"><CopyableCode code="get_instance_view" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the status of a cloud service.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a list of all cloud services under a resource group. Use nextLink property in the response to get the next page of Cloud Services. Do this till nextLink is null to fetch all the Cloud Services.</td>
</tr>
<tr>
    <td><a href="#list_all"><CopyableCode code="list_all" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a list of all cloud services in the subscription, regardless of the associated resource group. Use nextLink property in the response to get the next page of Cloud Services. Do this till nextLink is null to fetch all the Cloud Services.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__location"><code>data__location</code></a></td>
    <td></td>
    <td>Create or update a cloud service. Please note some properties can be set only during cloud service creation.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Update a cloud service.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes a cloud service.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Starts the cloud service.</td>
</tr>
<tr>
    <td><a href="#power_off"><CopyableCode code="power_off" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Power off the cloud service. Note that resources are still attached and you are getting charged for the resources.</td>
</tr>
<tr>
    <td><a href="#restart"><CopyableCode code="restart" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-roleInstances"><code>roleInstances</code></a></td>
    <td></td>
    <td>Restarts one or more role instances in a cloud service.</td>
</tr>
<tr>
    <td><a href="#reimage"><CopyableCode code="reimage" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-roleInstances"><code>roleInstances</code></a></td>
    <td></td>
    <td>Reimage asynchronous operation reinstalls the operating system on instances of web roles or worker roles.</td>
</tr>
<tr>
    <td><a href="#rebuild"><CopyableCode code="rebuild" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-roleInstances"><code>roleInstances</code></a></td>
    <td></td>
    <td>Rebuild Role Instances reinstalls the operating system on instances of web roles or worker roles and initializes the storage resources that are used by them. If you do not want to initialize storage resources, you can use Reimage Role Instances.</td>
</tr>
<tr>
    <td><a href="#delete_instances"><CopyableCode code="delete_instances" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-roleInstances"><code>roleInstances</code></a></td>
    <td></td>
    <td>Deletes role instances in a cloud service.</td>
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
<tr id="parameter-cloudServiceName">
    <td><CopyableCode code="cloudServiceName" /></td>
    <td><code>string</code></td>
    <td>Name of the cloud service.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'get_instance_view', value: 'get_instance_view' },
        { label: 'list', value: 'list' },
        { label: 'list_all', value: 'list_all' }
    ]}
>
<TabItem value="get">

Display information about a cloud service.

```sql
SELECT
id,
name,
location,
properties,
systemData,
tags,
type,
zones
FROM azure.compute.cloud_services
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND cloudServiceName = '{{ cloudServiceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get_instance_view">

Gets the status of a cloud service.

```sql
SELECT
privateIds,
roleInstance,
sdkVersion,
statuses
FROM azure.compute.cloud_services
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND cloudServiceName = '{{ cloudServiceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets a list of all cloud services under a resource group. Use nextLink property in the response to get the next page of Cloud Services. Do this till nextLink is null to fetch all the Cloud Services.

```sql
SELECT
id,
name,
location,
properties,
systemData,
tags,
type,
zones
FROM azure.compute.cloud_services
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_all">

Gets a list of all cloud services in the subscription, regardless of the associated resource group. Use nextLink property in the response to get the next page of Cloud Services. Do this till nextLink is null to fetch all the Cloud Services.

```sql
SELECT
id,
name,
location,
properties,
systemData,
tags,
type,
zones
FROM azure.compute.cloud_services
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

Create or update a cloud service. Please note some properties can be set only during cloud service creation.

```sql
INSERT INTO azure.compute.cloud_services (
data__location,
data__tags,
data__properties,
data__systemData,
data__zones,
resourceGroupName,
cloudServiceName,
subscriptionId
)
SELECT 
'{{ location }}' /* required */,
'{{ tags }}',
'{{ properties }}',
'{{ systemData }}',
'{{ zones }}',
'{{ resourceGroupName }}',
'{{ cloudServiceName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
location,
properties,
systemData,
tags,
type,
zones
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: cloud_services
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the cloud_services resource.
    - name: cloudServiceName
      value: string
      description: Required parameter for the cloud_services resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the cloud_services resource.
    - name: location
      value: string
      description: |
        Resource location.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: properties
      value: object
      description: |
        Cloud service properties
    - name: systemData
      value: object
      description: |
        The system meta data relating to this resource.
    - name: zones
      value: array
      description: |
        List of logical availability zone of the resource. List should contain only 1 zone where cloud service should be provisioned. This field is optional.
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

Update a cloud service.

```sql
UPDATE azure.compute.cloud_services
SET 
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND cloudServiceName = '{{ cloudServiceName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
id,
name,
location,
properties,
systemData,
tags,
type,
zones;
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

Deletes a cloud service.

```sql
DELETE FROM azure.compute.cloud_services
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND cloudServiceName = '{{ cloudServiceName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="start"
    values={[
        { label: 'start', value: 'start' },
        { label: 'power_off', value: 'power_off' },
        { label: 'restart', value: 'restart' },
        { label: 'reimage', value: 'reimage' },
        { label: 'rebuild', value: 'rebuild' },
        { label: 'delete_instances', value: 'delete_instances' }
    ]}
>
<TabItem value="start">

Starts the cloud service.

```sql
EXEC azure.compute.cloud_services.start 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@cloudServiceName='{{ cloudServiceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="power_off">

Power off the cloud service. Note that resources are still attached and you are getting charged for the resources.

```sql
EXEC azure.compute.cloud_services.power_off 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@cloudServiceName='{{ cloudServiceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="restart">

Restarts one or more role instances in a cloud service.

```sql
EXEC azure.compute.cloud_services.restart 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@cloudServiceName='{{ cloudServiceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"roleInstances": "{{ roleInstances }}"
}'
;
```
</TabItem>
<TabItem value="reimage">

Reimage asynchronous operation reinstalls the operating system on instances of web roles or worker roles.

```sql
EXEC azure.compute.cloud_services.reimage 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@cloudServiceName='{{ cloudServiceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"roleInstances": "{{ roleInstances }}"
}'
;
```
</TabItem>
<TabItem value="rebuild">

Rebuild Role Instances reinstalls the operating system on instances of web roles or worker roles and initializes the storage resources that are used by them. If you do not want to initialize storage resources, you can use Reimage Role Instances.

```sql
EXEC azure.compute.cloud_services.rebuild 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@cloudServiceName='{{ cloudServiceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"roleInstances": "{{ roleInstances }}"
}'
;
```
</TabItem>
<TabItem value="delete_instances">

Deletes role instances in a cloud service.

```sql
EXEC azure.compute.cloud_services.delete_instances 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@cloudServiceName='{{ cloudServiceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"roleInstances": "{{ roleInstances }}"
}'
;
```
</TabItem>
</Tabs>
