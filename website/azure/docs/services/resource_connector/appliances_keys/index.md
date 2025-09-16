--- 
title: appliances_keys
hide_title: false
hide_table_of_contents: false
keywords:
  - appliances_keys
  - resource_connector
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

Creates, updates, deletes, gets or lists an <code>appliances_keys</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>appliances_keys</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.resource_connector.appliances_keys" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
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
    <td><CopyableCode code="artifactProfiles" /></td>
    <td><code>object</code></td>
    <td>Map of artifacts that contains a list of ArtifactProfile used to upload artifacts such as logs.</td>
</tr>
<tr>
    <td><CopyableCode code="kubeconfigs" /></td>
    <td><code>array</code></td>
    <td>The list of appliance kubeconfigs.</td>
</tr>
<tr>
    <td><CopyableCode code="sshKeys" /></td>
    <td><code>object</code></td>
    <td>Map of Customer User Public, Private SSH Keys and Certificate when available.</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td><a href="#parameter-artifactType"><code>artifactType</code></a></td>
    <td>Returns the cluster customer credentials for the dedicated appliance.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>Appliances name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-artifactType">
    <td><CopyableCode code="artifactType" /></td>
    <td><code>string</code></td>
    <td>This sets the type of artifact being returned, when empty no artifact endpoint is returned.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Returns the cluster customer credentials for the dedicated appliance.

```sql
SELECT
artifactProfiles,
kubeconfigs,
sshKeys
FROM azure.resource_connector.appliances_keys
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND artifactType = '{{ artifactType }}'
;
```
</TabItem>
</Tabs>
