--- 
title: broker_authentications
hide_title: false
hide_table_of_contents: false
keywords:
  - broker_authentications
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

Creates, updates, deletes, gets or lists a <code>broker_authentications</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>broker_authentications</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_mq.broker_authentications" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_broker_resource', value: 'list_by_broker_resource' }
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
<TabItem value="list_by_broker_resource">

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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mqName"><code>mqName</code></a>, <a href="#parameter-brokerName"><code>brokerName</code></a>, <a href="#parameter-authenticationName"><code>authenticationName</code></a></td>
    <td></td>
    <td>Get a BrokerAuthenticationResource</td>
</tr>
<tr>
    <td><a href="#list_by_broker_resource"><CopyableCode code="list_by_broker_resource" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mqName"><code>mqName</code></a>, <a href="#parameter-brokerName"><code>brokerName</code></a></td>
    <td></td>
    <td>List BrokerAuthenticationResource resources by BrokerResource</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mqName"><code>mqName</code></a>, <a href="#parameter-brokerName"><code>brokerName</code></a>, <a href="#parameter-authenticationName"><code>authenticationName</code></a>, <a href="#parameter-data__extendedLocation"><code>data__extendedLocation</code></a></td>
    <td></td>
    <td>Create a BrokerAuthenticationResource</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mqName"><code>mqName</code></a>, <a href="#parameter-brokerName"><code>brokerName</code></a>, <a href="#parameter-authenticationName"><code>authenticationName</code></a></td>
    <td></td>
    <td>Update a BrokerAuthenticationResource</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-mqName"><code>mqName</code></a>, <a href="#parameter-brokerName"><code>brokerName</code></a>, <a href="#parameter-authenticationName"><code>authenticationName</code></a></td>
    <td></td>
    <td>Delete a BrokerAuthenticationResource</td>
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
<tr id="parameter-authenticationName">
    <td><CopyableCode code="authenticationName" /></td>
    <td><code>string</code></td>
    <td>Name of MQ broker/authentication resource</td>
</tr>
<tr id="parameter-brokerName">
    <td><CopyableCode code="brokerName" /></td>
    <td><code>string</code></td>
    <td>Name of MQ broker resource</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_broker_resource', value: 'list_by_broker_resource' }
    ]}
>
<TabItem value="get">

Get a BrokerAuthenticationResource

```sql
SELECT
extendedLocation,
location,
properties,
tags
FROM azure.iot_mq.broker_authentications
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND mqName = '{{ mqName }}' -- required
AND brokerName = '{{ brokerName }}' -- required
AND authenticationName = '{{ authenticationName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_broker_resource">

List BrokerAuthenticationResource resources by BrokerResource

```sql
SELECT
extendedLocation,
location,
properties,
tags
FROM azure.iot_mq.broker_authentications
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND mqName = '{{ mqName }}' -- required
AND brokerName = '{{ brokerName }}' -- required
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

Create a BrokerAuthenticationResource

```sql
INSERT INTO azure.iot_mq.broker_authentications (
data__properties,
data__extendedLocation,
data__tags,
data__location,
subscriptionId,
resourceGroupName,
mqName,
brokerName,
authenticationName
)
SELECT 
'{{ properties }}',
'{{ extendedLocation }}' /* required */,
'{{ tags }}',
'{{ location }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ mqName }}',
'{{ brokerName }}',
'{{ authenticationName }}'
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
- name: broker_authentications
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the broker_authentications resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the broker_authentications resource.
    - name: mqName
      value: string
      description: Required parameter for the broker_authentications resource.
    - name: brokerName
      value: string
      description: Required parameter for the broker_authentications resource.
    - name: authenticationName
      value: string
      description: Required parameter for the broker_authentications resource.
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

Update a BrokerAuthenticationResource

```sql
UPDATE azure.iot_mq.broker_authentications
SET 
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND mqName = '{{ mqName }}' --required
AND brokerName = '{{ brokerName }}' --required
AND authenticationName = '{{ authenticationName }}' --required
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

Delete a BrokerAuthenticationResource

```sql
DELETE FROM azure.iot_mq.broker_authentications
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND mqName = '{{ mqName }}' --required
AND brokerName = '{{ brokerName }}' --required
AND authenticationName = '{{ authenticationName }}' --required
;
```
</TabItem>
</Tabs>
