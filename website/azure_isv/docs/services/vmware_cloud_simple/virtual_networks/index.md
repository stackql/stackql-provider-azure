--- 
title: virtual_networks
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_networks
  - vmware_cloud_simple
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

Creates, updates, deletes, gets or lists a <code>virtual_networks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_networks</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.vmware_cloud_simple.virtual_networks" /></td></tr>
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

successful operation

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
    <td>virtual network id (privateCloudId:vsphereId)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>&#123;VirtualNetworkName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="assignable" /></td>
    <td><code>boolean</code></td>
    <td>can be used in vm creation/deletion</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Azure region</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Virtual Network properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

successful operation

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
    <td>virtual network id (privateCloudId:vsphereId)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>&#123;VirtualNetworkName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="assignable" /></td>
    <td><code>boolean</code></td>
    <td>can be used in vm creation/deletion</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Azure region</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Virtual Network properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-regionId"><code>regionId</code></a>, <a href="#parameter-pcName"><code>pcName</code></a>, <a href="#parameter-virtualNetworkName"><code>virtualNetworkName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Return virtual network by its name</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-regionId"><code>regionId</code></a>, <a href="#parameter-pcName"><code>pcName</code></a>, <a href="#parameter-resourcePoolName"><code>resourcePoolName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Return list of virtual networks in location for private cloud</td>
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
<tr id="parameter-pcName">
    <td><CopyableCode code="pcName" /></td>
    <td><code>string</code></td>
    <td>The private cloud name</td>
</tr>
<tr id="parameter-regionId">
    <td><CopyableCode code="regionId" /></td>
    <td><code>string</code></td>
    <td>The region Id (westus, eastus)</td>
</tr>
<tr id="parameter-resourcePoolName">
    <td><CopyableCode code="resourcePoolName" /></td>
    <td><code>string</code></td>
    <td>Resource pool used to derive vSphere cluster which contains virtual networks</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID.</td>
</tr>
<tr id="parameter-virtualNetworkName">
    <td><CopyableCode code="virtualNetworkName" /></td>
    <td><code>string</code></td>
    <td>virtual network id (vsphereId)</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client API version.</td>
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

Return virtual network by its name

```sql
SELECT
id,
name,
assignable,
location,
properties,
type
FROM azure_isv.vmware_cloud_simple.virtual_networks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND regionId = '{{ regionId }}' -- required
AND pcName = '{{ pcName }}' -- required
AND virtualNetworkName = '{{ virtualNetworkName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Return list of virtual networks in location for private cloud

```sql
SELECT
id,
name,
assignable,
location,
properties,
type
FROM azure_isv.vmware_cloud_simple.virtual_networks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND regionId = '{{ regionId }}' -- required
AND pcName = '{{ pcName }}' -- required
AND resourcePoolName = '{{ resourcePoolName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
