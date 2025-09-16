--- 
title: restores
hide_title: false
hide_table_of_contents: false
keywords:
  - restores
  - recovery_services_backup
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

Creates, updates, deletes, gets or lists a <code>restores</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>restores</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_backup.restores" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#trigger"><CopyableCode code="trigger" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-protectedItemName"><code>protectedItemName</code></a>, <a href="#parameter-recoveryPointId"><code>recoveryPointId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-x-ms-authorization-auxiliary"><code>x-ms-authorization-auxiliary</code></a></td>
    <td>Restores the specified backed up data. This is an asynchronous operation. To know the status of this API call, use<br />GetProtectedItemOperationResult API.</td>
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
<tr id="parameter-containerName">
    <td><CopyableCode code="containerName" /></td>
    <td><code>string</code></td>
    <td>Container name associated with the backed up items.</td>
</tr>
<tr id="parameter-fabricName">
    <td><CopyableCode code="fabricName" /></td>
    <td><code>string</code></td>
    <td>Fabric name associated with the backed up items.</td>
</tr>
<tr id="parameter-protectedItemName">
    <td><CopyableCode code="protectedItemName" /></td>
    <td><code>string</code></td>
    <td>Backed up item to be restored.</td>
</tr>
<tr id="parameter-recoveryPointId">
    <td><CopyableCode code="recoveryPointId" /></td>
    <td><code>string</code></td>
    <td>Recovery point ID which represents the backed up data to be restored.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group where the recovery services vault is present.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription Id.</td>
</tr>
<tr id="parameter-vaultName">
    <td><CopyableCode code="vaultName" /></td>
    <td><code>string</code></td>
    <td>The name of the recovery services vault.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client Api Version.</td>
</tr>
<tr id="parameter-x-ms-authorization-auxiliary">
    <td><CopyableCode code="x-ms-authorization-auxiliary" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="trigger"
    values={[
        { label: 'trigger', value: 'trigger' }
    ]}
>
<TabItem value="trigger">

Restores the specified backed up data. This is an asynchronous operation. To know the status of this API call, use<br />GetProtectedItemOperationResult API.

```sql
EXEC azure.recovery_services_backup.restores.trigger 
@vaultName='{{ vaultName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@containerName='{{ containerName }}' --required, 
@protectedItemName='{{ protectedItemName }}' --required, 
@recoveryPointId='{{ recoveryPointId }}' --required, 
@api-version='{{ api-version }}', 
@x-ms-authorization-auxiliary='{{ x-ms-authorization-auxiliary }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
