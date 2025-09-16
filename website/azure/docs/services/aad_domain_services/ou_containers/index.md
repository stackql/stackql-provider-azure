--- 
title: ou_containers
hide_title: false
hide_table_of_contents: false
keywords:
  - ou_containers
  - aad_domain_services
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

Creates, updates, deletes, gets or lists an <code>ou_containers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>ou_containers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.aad_domain_services.ou_containers" /></td></tr>
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

HTTP 200 (OK) if the operation was successful.

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
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Resource etag</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>OuContainer properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

HTTP 200 (OK) if the operation was successful.

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
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Resource etag</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>OuContainer properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-domainServiceName"><code>domainServiceName</code></a>, <a href="#parameter-ouContainerName"><code>ouContainerName</code></a></td>
    <td></td>
    <td>Get OuContainer in DomainService instance.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-domainServiceName"><code>domainServiceName</code></a></td>
    <td></td>
    <td>The List of OuContainers in DomainService instance.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-domainServiceName"><code>domainServiceName</code></a>, <a href="#parameter-ouContainerName"><code>ouContainerName</code></a></td>
    <td></td>
    <td>The Create OuContainer operation creates a new OuContainer under the specified Domain Service instance.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-domainServiceName"><code>domainServiceName</code></a>, <a href="#parameter-ouContainerName"><code>ouContainerName</code></a></td>
    <td></td>
    <td>The Update OuContainer operation can be used to update the existing OuContainers.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-domainServiceName"><code>domainServiceName</code></a>, <a href="#parameter-ouContainerName"><code>ouContainerName</code></a></td>
    <td></td>
    <td>The Delete OuContainer operation deletes specified OuContainer.</td>
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
<tr id="parameter-domainServiceName">
    <td><CopyableCode code="domainServiceName" /></td>
    <td><code>string</code></td>
    <td>The name of the domain service.</td>
</tr>
<tr id="parameter-ouContainerName">
    <td><CopyableCode code="ouContainerName" /></td>
    <td><code>string</code></td>
    <td>The name of the OuContainer.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group within the user's subscription. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Gets subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
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

Get OuContainer in DomainService instance.

```sql
SELECT
id,
name,
etag,
location,
properties,
systemData,
tags,
type
FROM azure.aad_domain_services.ou_containers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND domainServiceName = '{{ domainServiceName }}' -- required
AND ouContainerName = '{{ ouContainerName }}' -- required
;
```
</TabItem>
<TabItem value="list">

The List of OuContainers in DomainService instance.

```sql
SELECT
id,
name,
etag,
location,
properties,
systemData,
tags,
type
FROM azure.aad_domain_services.ou_containers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND domainServiceName = '{{ domainServiceName }}' -- required
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

The Create OuContainer operation creates a new OuContainer under the specified Domain Service instance.

```sql
INSERT INTO azure.aad_domain_services.ou_containers (
data__accountName,
data__spn,
data__password,
subscriptionId,
resourceGroupName,
domainServiceName,
ouContainerName
)
SELECT 
'{{ accountName }}',
'{{ spn }}',
'{{ password }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ domainServiceName }}',
'{{ ouContainerName }}'
RETURNING
id,
name,
etag,
location,
properties,
systemData,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: ou_containers
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the ou_containers resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the ou_containers resource.
    - name: domainServiceName
      value: string
      description: Required parameter for the ou_containers resource.
    - name: ouContainerName
      value: string
      description: Required parameter for the ou_containers resource.
    - name: accountName
      value: string
      description: |
        The account name
    - name: spn
      value: string
      description: |
        The account spn
    - name: password
      value: string
      description: |
        The account password
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

The Update OuContainer operation can be used to update the existing OuContainers.

```sql
UPDATE azure.aad_domain_services.ou_containers
SET 
data__accountName = '{{ accountName }}',
data__spn = '{{ spn }}',
data__password = '{{ password }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND domainServiceName = '{{ domainServiceName }}' --required
AND ouContainerName = '{{ ouContainerName }}' --required
RETURNING
id,
name,
etag,
location,
properties,
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

The Delete OuContainer operation deletes specified OuContainer.

```sql
DELETE FROM azure.aad_domain_services.ou_containers
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND domainServiceName = '{{ domainServiceName }}' --required
AND ouContainerName = '{{ ouContainerName }}' --required
;
```
</TabItem>
</Tabs>
