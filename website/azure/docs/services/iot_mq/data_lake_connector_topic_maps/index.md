--- 
title: data_lake_connector_topic_maps
hide_title: false
hide_table_of_contents: false
keywords:
  - data_lake_connector_topic_maps
  - iot_mq
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

Creates, updates, deletes, gets or lists a <code>data_lake_connector_topic_maps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>data_lake_connector_topic_maps</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_mq.data_lake_connector_topic_maps" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_data_lake_connector_resource', value: 'list_by_data_lake_connector_resource' }
    ]}
>
<TabItem value="get">

Azure operation completed successfully.

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
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>Extended Location</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_data_lake_connector_resource">

Azure operation completed successfully.

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
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>Extended Location</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mqName"><code>mqName</code></a>, <a href="#parameter-dataLakeConnectorName"><code>dataLakeConnectorName</code></a>, <a href="#parameter-topicMapName"><code>topicMapName</code></a></td>
    <td></td>
    <td>Get a DataLakeTopicMapResource</td>
</tr>
<tr>
    <td><a href="#list_by_data_lake_connector_resource"><CopyableCode code="list_by_data_lake_connector_resource" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mqName"><code>mqName</code></a>, <a href="#parameter-dataLakeConnectorName"><code>dataLakeConnectorName</code></a></td>
    <td></td>
    <td>List DataLakeTopicMapResource resources by DataLakeConnectorResource</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mqName"><code>mqName</code></a>, <a href="#parameter-dataLakeConnectorName"><code>dataLakeConnectorName</code></a>, <a href="#parameter-topicMapName"><code>topicMapName</code></a>, <a href="#parameter-data__extendedLocation"><code>data__extendedLocation</code></a></td>
    <td></td>
    <td>Create a DataLakeTopicMapResource</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mqName"><code>mqName</code></a>, <a href="#parameter-dataLakeConnectorName"><code>dataLakeConnectorName</code></a>, <a href="#parameter-topicMapName"><code>topicMapName</code></a></td>
    <td></td>
    <td>Update a DataLakeTopicMapResource</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mqName"><code>mqName</code></a>, <a href="#parameter-dataLakeConnectorName"><code>dataLakeConnectorName</code></a>, <a href="#parameter-topicMapName"><code>topicMapName</code></a></td>
    <td></td>
    <td>Delete a DataLakeTopicMapResource</td>
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
<tr id="parameter-dataLakeConnectorName">
    <td><CopyableCode code="dataLakeConnectorName" /></td>
    <td><code>string</code></td>
    <td>Name of MQ dataLakeConnector resource</td>
</tr>
<tr id="parameter-mqName">
    <td><CopyableCode code="mqName" /></td>
    <td><code>string</code></td>
    <td>Name of MQ resource</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-topicMapName">
    <td><CopyableCode code="topicMapName" /></td>
    <td><code>string</code></td>
    <td>Name of MQ dataLakeConnector/topicMap resource</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_data_lake_connector_resource', value: 'list_by_data_lake_connector_resource' }
    ]}
>
<TabItem value="get">

Get a DataLakeTopicMapResource

```sql
SELECT
extendedLocation,
location,
properties,
tags
FROM azure.iot_mq.data_lake_connector_topic_maps
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND mqName = '{{ mqName }}' -- required
AND dataLakeConnectorName = '{{ dataLakeConnectorName }}' -- required
AND topicMapName = '{{ topicMapName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_data_lake_connector_resource">

List DataLakeTopicMapResource resources by DataLakeConnectorResource

```sql
SELECT
extendedLocation,
location,
properties,
tags
FROM azure.iot_mq.data_lake_connector_topic_maps
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND mqName = '{{ mqName }}' -- required
AND dataLakeConnectorName = '{{ dataLakeConnectorName }}' -- required
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

Create a DataLakeTopicMapResource

```sql
INSERT INTO azure.iot_mq.data_lake_connector_topic_maps (
data__properties,
data__extendedLocation,
data__tags,
data__location,
subscriptionId,
resourceGroupName,
mqName,
dataLakeConnectorName,
topicMapName
)
SELECT 
'{{ properties }}',
'{{ extendedLocation }}' /* required */,
'{{ tags }}',
'{{ location }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ mqName }}',
'{{ dataLakeConnectorName }}',
'{{ topicMapName }}'
RETURNING
extendedLocation,
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: data_lake_connector_topic_maps
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the data_lake_connector_topic_maps resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the data_lake_connector_topic_maps resource.
    - name: mqName
      value: string
      description: Required parameter for the data_lake_connector_topic_maps resource.
    - name: dataLakeConnectorName
      value: string
      description: Required parameter for the data_lake_connector_topic_maps resource.
    - name: topicMapName
      value: string
      description: Required parameter for the data_lake_connector_topic_maps resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
    - name: extendedLocation
      value: object
      description: |
        Extended Location
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
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

Update a DataLakeTopicMapResource

```sql
UPDATE azure.iot_mq.data_lake_connector_topic_maps
SET 
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND mqName = '{{ mqName }}' --required
AND dataLakeConnectorName = '{{ dataLakeConnectorName }}' --required
AND topicMapName = '{{ topicMapName }}' --required
RETURNING
extendedLocation,
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

Delete a DataLakeTopicMapResource

```sql
DELETE FROM azure.iot_mq.data_lake_connector_topic_maps
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND mqName = '{{ mqName }}' --required
AND dataLakeConnectorName = '{{ dataLakeConnectorName }}' --required
AND topicMapName = '{{ topicMapName }}' --required
;
```
</TabItem>
</Tabs>
