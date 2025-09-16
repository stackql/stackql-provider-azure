--- 
title: operations
hide_title: false
hide_table_of_contents: false
keywords:
  - operations
  - provider_hub
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

Creates, updates, deletes, gets or lists an <code>operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>operations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.provider_hub.operations" /></td></tr>
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

Successfully retrieved the list of supported operations.

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the operation.</td>
</tr>
<tr>
    <td><CopyableCode code="actionType" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="display" /></td>
    <td><code>object</code></td>
    <td>Display information of the operation.</td>
</tr>
<tr>
    <td><CopyableCode code="isDataAction" /></td>
    <td><code>boolean</code></td>
    <td>Indicates whether the operation applies to data-plane.</td>
</tr>
<tr>
    <td><CopyableCode code="origin" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code></code></td>
    <td></td>
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
    <td></td>
    <td></td>
    <td>Lists all the operations supported by Microsoft.ProviderHub.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-providerNamespace"><code>providerNamespace</code></a>, <a href="#parameter-data__contents"><code>data__contents</code></a></td>
    <td></td>
    <td>Creates or updates the operation supported by the given provider.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-providerNamespace"><code>providerNamespace</code></a></td>
    <td></td>
    <td>Deletes an operation.</td>
</tr>
<tr>
    <td><a href="#generate_manifest"><CopyableCode code="generate_manifest" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-providerNamespace"><code>providerNamespace</code></a></td>
    <td></td>
    <td>Generates the manifest for the given provider.</td>
</tr>
<tr>
    <td><a href="#checkin_manifest"><CopyableCode code="checkin_manifest" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-providerNamespace"><code>providerNamespace</code></a>, <a href="#parameter-baselineArmManifestLocation"><code>baselineArmManifestLocation</code></a>, <a href="#parameter-environment"><code>environment</code></a></td>
    <td></td>
    <td>Checkin the manifest.</td>
</tr>
<tr>
    <td><a href="#list_by_provider_registration"><CopyableCode code="list_by_provider_registration" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-providerNamespace"><code>providerNamespace</code></a></td>
    <td></td>
    <td>Gets the operations supported by the given provider.</td>
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
<tr id="parameter-providerNamespace">
    <td><CopyableCode code="providerNamespace" /></td>
    <td><code>string</code></td>
    <td>The name of the resource provider hosted within ProviderHub.</td>
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
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Lists all the operations supported by Microsoft.ProviderHub.

```sql
SELECT
name,
actionType,
display,
isDataAction,
origin,
properties
FROM azure.provider_hub.operations
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

Creates or updates the operation supported by the given provider.

```sql
INSERT INTO azure.provider_hub.operations (
data__contents,
subscriptionId,
providerNamespace
)
SELECT 
'{{ contents }}' /* required */,
'{{ subscriptionId }}',
'{{ providerNamespace }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: operations
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the operations resource.
    - name: providerNamespace
      value: string
      description: Required parameter for the operations resource.
    - name: contents
      value: array
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

Deletes an operation.

```sql
DELETE FROM azure.provider_hub.operations
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND providerNamespace = '{{ providerNamespace }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="generate_manifest"
    values={[
        { label: 'generate_manifest', value: 'generate_manifest' },
        { label: 'checkin_manifest', value: 'checkin_manifest' },
        { label: 'list_by_provider_registration', value: 'list_by_provider_registration' }
    ]}
>
<TabItem value="generate_manifest">

Generates the manifest for the given provider.

```sql
EXEC azure.provider_hub.operations.generate_manifest 
@subscriptionId='{{ subscriptionId }}' --required, 
@providerNamespace='{{ providerNamespace }}' --required
;
```
</TabItem>
<TabItem value="checkin_manifest">

Checkin the manifest.

```sql
EXEC azure.provider_hub.operations.checkin_manifest 
@subscriptionId='{{ subscriptionId }}' --required, 
@providerNamespace='{{ providerNamespace }}' --required 
@@json=
'{
"environment": "{{ environment }}", 
"baselineArmManifestLocation": "{{ baselineArmManifestLocation }}"
}'
;
```
</TabItem>
<TabItem value="list_by_provider_registration">

Gets the operations supported by the given provider.

```sql
EXEC azure.provider_hub.operations.list_by_provider_registration 
@subscriptionId='{{ subscriptionId }}' --required, 
@providerNamespace='{{ providerNamespace }}' --required
;
```
</TabItem>
</Tabs>
