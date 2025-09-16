--- 
title: iot_connector_fhir_destinations
hide_title: false
hide_table_of_contents: false
keywords:
  - iot_connector_fhir_destinations
  - healthcare
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>iot_connector_fhir_destinations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>iot_connector_fhir_destinations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.healthcare.iot_connector_fhir_destinations" /></td></tr>
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

The request was successful; the request was well-formed and received properly.

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
    <td>The resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>IoT FHIR Destination settings.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-iotConnectorName"><code>iotConnectorName</code></a>, <a href="#parameter-fhirDestinationName"><code>fhirDestinationName</code></a></td>
    <td></td>
    <td>Gets the properties of the specified Iot Connector FHIR destination.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-iotConnectorName"><code>iotConnectorName</code></a>, <a href="#parameter-fhirDestinationName"><code>fhirDestinationName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates or updates an IoT Connector FHIR destination resource with the specified parameters.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-iotConnectorName"><code>iotConnectorName</code></a>, <a href="#parameter-fhirDestinationName"><code>fhirDestinationName</code></a></td>
    <td></td>
    <td>Deletes an IoT Connector FHIR destination.</td>
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
<tr id="parameter-fhirDestinationName">
    <td><CopyableCode code="fhirDestinationName" /></td>
    <td><code>string</code></td>
    <td>The name of IoT Connector FHIR destination resource.</td>
</tr>
<tr id="parameter-iotConnectorName">
    <td><CopyableCode code="iotConnectorName" /></td>
    <td><code>string</code></td>
    <td>The name of IoT Connector resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the service instance.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-workspaceName">
    <td><CopyableCode code="workspaceName" /></td>
    <td><code>string</code></td>
    <td>The name of workspace resource.</td>
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

Gets the properties of the specified Iot Connector FHIR destination.

```sql
SELECT
location,
properties,
systemData
FROM azure_extras.healthcare.iot_connector_fhir_destinations
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND iotConnectorName = '{{ iotConnectorName }}' -- required
AND fhirDestinationName = '{{ fhirDestinationName }}' -- required
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

Creates or updates an IoT Connector FHIR destination resource with the specified parameters.

```sql
INSERT INTO azure_extras.healthcare.iot_connector_fhir_destinations (
data__location,
data__properties,
resourceGroupName,
subscriptionId,
workspaceName,
iotConnectorName,
fhirDestinationName
)
SELECT 
'{{ location }}',
'{{ properties }}' /* required */,
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ workspaceName }}',
'{{ iotConnectorName }}',
'{{ fhirDestinationName }}'
RETURNING
location,
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: iot_connector_fhir_destinations
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the iot_connector_fhir_destinations resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the iot_connector_fhir_destinations resource.
    - name: workspaceName
      value: string
      description: Required parameter for the iot_connector_fhir_destinations resource.
    - name: iotConnectorName
      value: string
      description: Required parameter for the iot_connector_fhir_destinations resource.
    - name: fhirDestinationName
      value: string
      description: Required parameter for the iot_connector_fhir_destinations resource.
    - name: location
      value: string
      description: |
        The resource location.
    - name: properties
      value: object
      description: |
        IoT FHIR Destination settings.
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

Deletes an IoT Connector FHIR destination.

```sql
DELETE FROM azure_extras.healthcare.iot_connector_fhir_destinations
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND workspaceName = '{{ workspaceName }}' --required
AND iotConnectorName = '{{ iotConnectorName }}' --required
AND fhirDestinationName = '{{ fhirDestinationName }}' --required
;
```
</TabItem>
</Tabs>
