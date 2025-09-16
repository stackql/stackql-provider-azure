--- 
title: iot_dps_resource_keys_for_key_names
hide_title: false
hide_table_of_contents: false
keywords:
  - iot_dps_resource_keys_for_key_names
  - iot_hub_device_provisioning
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

Creates, updates, deletes, gets or lists an <code>iot_dps_resource_keys_for_key_names</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>iot_dps_resource_keys_for_key_names</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_hub_device_provisioning.iot_dps_resource_keys_for_key_names" /></td></tr>
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

This is a synchronous operation. The body contains a JSON-serialized shared access policy, including keys, that you can use to access one or more provisioning service endpoints.

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
    <td><CopyableCode code="keyName" /></td>
    <td><code>string</code></td>
    <td>Name of the key.</td>
</tr>
<tr>
    <td><CopyableCode code="primaryKey" /></td>
    <td><code>string</code></td>
    <td>Primary SAS key value.</td>
</tr>
<tr>
    <td><CopyableCode code="rights" /></td>
    <td><code>string</code></td>
    <td>Rights that this key has.</td>
</tr>
<tr>
    <td><CopyableCode code="secondaryKey" /></td>
    <td><code>string</code></td>
    <td>Secondary SAS key value.</td>
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
    <td><a href="#parameter-provisioningServiceName"><code>provisioningServiceName</code></a>, <a href="#parameter-keyName"><code>keyName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>List primary and secondary keys for a specific key name</td>
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
<tr id="parameter-keyName">
    <td><CopyableCode code="keyName" /></td>
    <td><code>string</code></td>
    <td>Logical key name to get key-values for.</td>
</tr>
<tr id="parameter-provisioningServiceName">
    <td><CopyableCode code="provisioningServiceName" /></td>
    <td><code>string</code></td>
    <td>Name of the provisioning service.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the provisioning service.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription identifier.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The version of the API.</td>
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

List primary and secondary keys for a specific key name

```sql
SELECT
keyName,
primaryKey,
rights,
secondaryKey
FROM azure.iot_hub_device_provisioning.iot_dps_resource_keys_for_key_names
WHERE provisioningServiceName = '{{ provisioningServiceName }}' -- required
AND keyName = '{{ keyName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
