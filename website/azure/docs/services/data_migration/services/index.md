--- 
title: services
hide_title: false
hide_table_of_contents: false
keywords:
  - services
  - data_migration
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

Creates, updates, deletes, gets or lists a <code>services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>services</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_migration.services" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

A service instance resource

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
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>HTTP strong entity tag value. Ignored if submitted</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The resource kind. Only 'vm' (the default) is supported.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Custom service properties</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Service SKU</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

Got services

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
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>HTTP strong entity tag value. Ignored if submitted</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The resource kind. Only 'vm' (the default) is supported.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Custom service properties</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Service SKU</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Got services

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
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>HTTP strong entity tag value. Ignored if submitted</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The resource kind. Only 'vm' (the default) is supported.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Custom service properties</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Service SKU</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td></td>
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
    <td></td>
    <td></td>
    <td>The services resource is the top-level resource that represents the Azure Database Migration Service (classic). The GET method retrieves information about a service instance.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-groupName"><code>groupName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The Services resource is the top-level resource that represents the Azure Database Migration Service (classic). This method returns a list of service resources in a resource group.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The services resource is the top-level resource that represents the Azure Database Migration Service (classic). This method returns a list of service resources in a subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td></td>
    <td></td>
    <td>The services resource is the top-level resource that represents the Azure Database Migration Service (classic). The PUT method creates a new service or updates an existing one. When a service is updated, existing child resources (i.e. tasks) are unaffected. Services currently support a single kind, "vm", which refers to a VM-based service, although other kinds may be added in the future. This method can change the kind, SKU, and network of the service, but if tasks are currently running (i.e. the service is busy), this will fail with 400 Bad Request ("ServiceIsBusy"). The provider will reply when successful with 200 OK or 201 Created. Long-running operations use the provisioningState property.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td></td>
    <td></td>
    <td>The services resource is the top-level resource that represents the Azure Database Migration Service (classic). The PATCH method updates an existing service. This method can change the kind, SKU, and network of the service, but if tasks are currently running (i.e. the service is busy), this will fail with 400 Bad Request ("ServiceIsBusy").</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td></td>
    <td><a href="#parameter-deleteRunningTasks"><code>deleteRunningTasks</code></a></td>
    <td>The services resource is the top-level resource that represents the Azure Database Migration Service (classic). The DELETE method deletes a service. Any running tasks will be canceled.</td>
</tr>
<tr>
    <td><a href="#check_status"><CopyableCode code="check_status" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-groupName"><code>groupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The services resource is the top-level resource that represents the Azure Database Migration Service (classic). This action performs a health check and returns the status of the service and virtual machine size.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-groupName"><code>groupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The services resource is the top-level resource that represents the Azure Database Migration Service (classic). This action starts the service and the service can be used for data migration.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-groupName"><code>groupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The services resource is the top-level resource that represents the Azure Database Migration Service (classic). This action stops the service and the service cannot be used for data migration. The service owner won't be billed when the service is stopped.</td>
</tr>
<tr>
    <td><a href="#check_children_name_availability"><CopyableCode code="check_children_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-groupName"><code>groupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>This method checks whether a proposed nested resource name is valid and available.</td>
</tr>
<tr>
    <td><a href="#check_name_availability"><CopyableCode code="check_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>This method checks whether a proposed top-level resource name is valid and available.</td>
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
<tr id="parameter-groupName">
    <td><CopyableCode code="groupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The Azure region of the operation</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>Name of the service</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription ID that identifies an Azure subscription.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Version of the API</td>
</tr>
<tr id="parameter-deleteRunningTasks">
    <td><CopyableCode code="deleteRunningTasks" /></td>
    <td><code>boolean</code></td>
    <td>Delete the resource even if it contains running tasks</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

The services resource is the top-level resource that represents the Azure Database Migration Service (classic). The GET method retrieves information about a service instance.

```sql
SELECT
id,
name,
etag,
kind,
location,
properties,
sku,
systemData,
tags,
type
FROM azure.data_migration.services
;
```
</TabItem>
<TabItem value="list_by_resource_group">

The Services resource is the top-level resource that represents the Azure Database Migration Service (classic). This method returns a list of service resources in a resource group.

```sql
SELECT
id,
name,
etag,
kind,
location,
properties,
sku,
systemData,
tags,
type
FROM azure.data_migration.services
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND groupName = '{{ groupName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

The services resource is the top-level resource that represents the Azure Database Migration Service (classic). This method returns a list of service resources in a subscription.

```sql
SELECT
id,
name,
etag,
kind,
location,
properties,
sku,
systemData,
tags,
type
FROM azure.data_migration.services
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
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

The services resource is the top-level resource that represents the Azure Database Migration Service (classic). The PUT method creates a new service or updates an existing one. When a service is updated, existing child resources (i.e. tasks) are unaffected. Services currently support a single kind, "vm", which refers to a VM-based service, although other kinds may be added in the future. This method can change the kind, SKU, and network of the service, but if tasks are currently running (i.e. the service is busy), this will fail with 400 Bad Request ("ServiceIsBusy"). The provider will reply when successful with 200 OK or 201 Created. Long-running operations use the provisioningState property.

```sql
INSERT INTO azure.data_migration.services (
data__etag,
data__kind,
data__properties,
data__sku,
data__location,
data__tags
)
SELECT 
'{{ etag }}',
'{{ kind }}',
'{{ properties }}',
'{{ sku }}',
'{{ location }}',
'{{ tags }}'
RETURNING
id,
name,
etag,
kind,
location,
properties,
sku,
systemData,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: services
  props:
    - name: etag
      value: string
      description: |
        HTTP strong entity tag value. Ignored if submitted
    - name: kind
      value: string
      description: |
        The resource kind. Only 'vm' (the default) is supported.
    - name: properties
      value: object
      description: |
        Custom service properties
    - name: sku
      value: object
      description: |
        Service SKU
    - name: location
      value: string
    - name: tags
      value: object
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

The services resource is the top-level resource that represents the Azure Database Migration Service (classic). The PATCH method updates an existing service. This method can change the kind, SKU, and network of the service, but if tasks are currently running (i.e. the service is busy), this will fail with 400 Bad Request ("ServiceIsBusy").

```sql
UPDATE azure.data_migration.services
SET 
data__etag = '{{ etag }}',
data__kind = '{{ kind }}',
data__properties = '{{ properties }}',
data__sku = '{{ sku }}',
data__location = '{{ location }}',
data__tags = '{{ tags }}'
RETURNING
id,
name,
etag,
kind,
location,
properties,
sku,
systemData,
tags,
type;
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

The services resource is the top-level resource that represents the Azure Database Migration Service (classic). The DELETE method deletes a service. Any running tasks will be canceled.

```sql
DELETE FROM azure.data_migration.services
WHERE deleteRunningTasks = '{{ deleteRunningTasks }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="check_status"
    values={[
        { label: 'check_status', value: 'check_status' },
        { label: 'start', value: 'start' },
        { label: 'stop', value: 'stop' },
        { label: 'check_children_name_availability', value: 'check_children_name_availability' },
        { label: 'check_name_availability', value: 'check_name_availability' }
    ]}
>
<TabItem value="check_status">

The services resource is the top-level resource that represents the Azure Database Migration Service (classic). This action performs a health check and returns the status of the service and virtual machine size.

```sql
EXEC azure.data_migration.services.check_status 
@subscriptionId='{{ subscriptionId }}' --required, 
@groupName='{{ groupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="start">

The services resource is the top-level resource that represents the Azure Database Migration Service (classic). This action starts the service and the service can be used for data migration.

```sql
EXEC azure.data_migration.services.start 
@subscriptionId='{{ subscriptionId }}' --required, 
@groupName='{{ groupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="stop">

The services resource is the top-level resource that represents the Azure Database Migration Service (classic). This action stops the service and the service cannot be used for data migration. The service owner won't be billed when the service is stopped.

```sql
EXEC azure.data_migration.services.stop 
@subscriptionId='{{ subscriptionId }}' --required, 
@groupName='{{ groupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="check_children_name_availability">

This method checks whether a proposed nested resource name is valid and available.

```sql
EXEC azure.data_migration.services.check_children_name_availability 
@subscriptionId='{{ subscriptionId }}' --required, 
@groupName='{{ groupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
<TabItem value="check_name_availability">

This method checks whether a proposed top-level resource name is valid and available.

```sql
EXEC azure.data_migration.services.check_name_availability 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
</Tabs>
