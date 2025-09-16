--- 
title: service_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - service_configurations
  - hybrid_connectivity
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

Creates, updates, deletes, gets or lists a <code>service_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>service_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_connectivity.service_configurations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_endpoint_resource', value: 'list_by_endpoint_resource' }
    ]}
>
<TabItem value="get">

Service configuration resource request was successful

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
    <td>The service configuration properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>System data of endpoint resource</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_endpoint_resource">

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
    <td>The service configuration properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>System data of endpoint resource</td>
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
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-serviceConfigurationName"><code>serviceConfigurationName</code></a></td>
    <td></td>
    <td>Gets the details about the service to the resource.</td>
</tr>
<tr>
    <td><a href="#list_by_endpoint_resource"><CopyableCode code="list_by_endpoint_resource" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a></td>
    <td></td>
    <td>API to enumerate registered services in service configurations under a Endpoint Resource</td>
</tr>
<tr>
    <td><a href="#create_orupdate"><CopyableCode code="create_orupdate" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-serviceConfigurationName"><code>serviceConfigurationName</code></a></td>
    <td></td>
    <td>Create or update a service in serviceConfiguration for the endpoint resource.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-serviceConfigurationName"><code>serviceConfigurationName</code></a></td>
    <td></td>
    <td>Update the service details in the service configurations of the target resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-serviceConfigurationName"><code>serviceConfigurationName</code></a></td>
    <td></td>
    <td>Deletes the service details to the target resource.</td>
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
<tr id="parameter-endpointName">
    <td><CopyableCode code="endpointName" /></td>
    <td><code>string</code></td>
    <td>The endpoint name.</td>
</tr>
<tr id="parameter-resourceUri">
    <td><CopyableCode code="resourceUri" /></td>
    <td><code>string</code></td>
    <td>The fully qualified Azure Resource manager identifier of the resource to be connected.</td>
</tr>
<tr id="parameter-serviceConfigurationName">
    <td><CopyableCode code="serviceConfigurationName" /></td>
    <td><code>string</code></td>
    <td>The service name.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_endpoint_resource', value: 'list_by_endpoint_resource' }
    ]}
>
<TabItem value="get">

Gets the details about the service to the resource.

```sql
SELECT
properties,
systemData
FROM azure.hybrid_connectivity.service_configurations
WHERE resourceUri = '{{ resourceUri }}' -- required
AND endpointName = '{{ endpointName }}' -- required
AND serviceConfigurationName = '{{ serviceConfigurationName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_endpoint_resource">

API to enumerate registered services in service configurations under a Endpoint Resource

```sql
SELECT
properties,
systemData
FROM azure.hybrid_connectivity.service_configurations
WHERE resourceUri = '{{ resourceUri }}' -- required
AND endpointName = '{{ endpointName }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_orupdate"
    values={[
        { label: 'create_orupdate', value: 'create_orupdate' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_orupdate">

Create or update a service in serviceConfiguration for the endpoint resource.

```sql
INSERT INTO azure.hybrid_connectivity.service_configurations (
data__properties,
resourceUri,
endpointName,
serviceConfigurationName
)
SELECT 
'{{ properties }}',
'{{ resourceUri }}',
'{{ endpointName }}',
'{{ serviceConfigurationName }}'
RETURNING
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: service_configurations
  props:
    - name: resourceUri
      value: string
      description: Required parameter for the service_configurations resource.
    - name: endpointName
      value: string
      description: Required parameter for the service_configurations resource.
    - name: serviceConfigurationName
      value: string
      description: Required parameter for the service_configurations resource.
    - name: properties
      value: object
      description: |
        The service configuration properties.
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

Update the service details in the service configurations of the target resource.

```sql
UPDATE azure.hybrid_connectivity.service_configurations
SET 
data__properties = '{{ properties }}'
WHERE 
resourceUri = '{{ resourceUri }}' --required
AND endpointName = '{{ endpointName }}' --required
AND serviceConfigurationName = '{{ serviceConfigurationName }}' --required
RETURNING
properties,
systemData;
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

Deletes the service details to the target resource.

```sql
DELETE FROM azure.hybrid_connectivity.service_configurations
WHERE resourceUri = '{{ resourceUri }}' --required
AND endpointName = '{{ endpointName }}' --required
AND serviceConfigurationName = '{{ serviceConfigurationName }}' --required
;
```
</TabItem>
</Tabs>
