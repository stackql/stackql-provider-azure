--- 
title: arc_settings_identities
hide_title: false
hide_table_of_contents: false
keywords:
  - arc_settings_identities
  - azure_stack_hci
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>arc_settings_identities</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>arc_settings_identities</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack_hci.arc_settings_identities" /></td></tr>
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
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-arcSettingName"><code>arcSettingName</code></a></td>
    <td></td>
    <td>Create Aad identity for arc settings.</td>
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
<tr id="parameter-arcSettingName">
    <td><CopyableCode code="arcSettingName" /></td>
    <td><code>string</code></td>
    <td>The name of the proxy resource holding details of HCI ArcSetting information.</td>
</tr>
<tr id="parameter-clusterName">
    <td><CopyableCode code="clusterName" /></td>
    <td><code>string</code></td>
    <td>The name of the cluster.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Create Aad identity for arc settings.

```sql
INSERT INTO azure_stack.azure_stack_hci.arc_settings_identities (
subscriptionId,
resourceGroupName,
clusterName,
arcSettingName
)
SELECT 
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ clusterName }}',
'{{ arcSettingName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: arc_settings_identities
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the arc_settings_identities resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the arc_settings_identities resource.
    - name: clusterName
      value: string
      description: Required parameter for the arc_settings_identities resource.
    - name: arcSettingName
      value: string
      description: Required parameter for the arc_settings_identities resource.
```
</TabItem>
</Tabs>
