--- 
title: sims
hide_title: false
hide_table_of_contents: false
keywords:
  - sims
  - mobile_network
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

Creates, updates, deletes, gets or lists a <code>sims</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>sims</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mobile_network.sims" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_group', value: 'list_by_group' }
    ]}
>
<TabItem value="get">

Request successful. The operation returns the resulting SIM resource.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>SIM Properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_group">

Request successful. The operation returns a list of SIM resources.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>SIM Properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-simGroupName"><code>simGroupName</code></a>, <a href="#parameter-simName"><code>simName</code></a></td>
    <td></td>
    <td>Gets information about the specified SIM.</td>
</tr>
<tr>
    <td><a href="#list_by_group"><CopyableCode code="list_by_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-simGroupName"><code>simGroupName</code></a></td>
    <td></td>
    <td>Gets all the SIMs in a SIM group.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-simGroupName"><code>simGroupName</code></a>, <a href="#parameter-simName"><code>simName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates or updates a SIM.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-simGroupName"><code>simGroupName</code></a>, <a href="#parameter-simName"><code>simName</code></a></td>
    <td></td>
    <td>Deletes the specified SIM.</td>
</tr>
<tr>
    <td><a href="#bulk_upload"><CopyableCode code="bulk_upload" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-simGroupName"><code>simGroupName</code></a>, <a href="#parameter-sims"><code>sims</code></a></td>
    <td></td>
    <td>Bulk upload SIMs to a SIM group.</td>
</tr>
<tr>
    <td><a href="#bulk_delete"><CopyableCode code="bulk_delete" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-simGroupName"><code>simGroupName</code></a>, <a href="#parameter-sims"><code>sims</code></a></td>
    <td></td>
    <td>Bulk delete SIMs from a SIM group.</td>
</tr>
<tr>
    <td><a href="#bulk_upload_encrypted"><CopyableCode code="bulk_upload_encrypted" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-simGroupName"><code>simGroupName</code></a>, <a href="#parameter-version"><code>version</code></a>, <a href="#parameter-azureKeyIdentifier"><code>azureKeyIdentifier</code></a>, <a href="#parameter-vendorKeyFingerprint"><code>vendorKeyFingerprint</code></a>, <a href="#parameter-encryptedTransportKey"><code>encryptedTransportKey</code></a>, <a href="#parameter-signedTransportKey"><code>signedTransportKey</code></a>, <a href="#parameter-sims"><code>sims</code></a></td>
    <td></td>
    <td>Bulk upload SIMs in encrypted form to a SIM group. The SIM credentials must be encrypted.</td>
</tr>
<tr>
    <td><a href="#move"><CopyableCode code="move" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-simGroupName"><code>simGroupName</code></a></td>
    <td></td>
    <td>Move SIMs to another SIM Group</td>
</tr>
<tr>
    <td><a href="#clone"><CopyableCode code="clone" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-simGroupName"><code>simGroupName</code></a></td>
    <td></td>
    <td>Clone SIMs to another SIM Group</td>
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
<tr id="parameter-simGroupName">
    <td><CopyableCode code="simGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the SIM Group.</td>
</tr>
<tr id="parameter-simName">
    <td><CopyableCode code="simName" /></td>
    <td><code>string</code></td>
    <td>The name of the SIM.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_group', value: 'list_by_group' }
    ]}
>
<TabItem value="get">

Gets information about the specified SIM.

```sql
SELECT
properties
FROM azure.mobile_network.sims
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND simGroupName = '{{ simGroupName }}' -- required
AND simName = '{{ simName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_group">

Gets all the SIMs in a SIM group.

```sql
SELECT
properties
FROM azure.mobile_network.sims
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND simGroupName = '{{ simGroupName }}' -- required
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

Creates or updates a SIM.

```sql
INSERT INTO azure.mobile_network.sims (
data__properties,
subscriptionId,
resourceGroupName,
simGroupName,
simName
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ simGroupName }}',
'{{ simName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: sims
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the sims resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the sims resource.
    - name: simGroupName
      value: string
      description: Required parameter for the sims resource.
    - name: simName
      value: string
      description: Required parameter for the sims resource.
    - name: properties
      value: object
      description: |
        SIM Properties.
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

Deletes the specified SIM.

```sql
DELETE FROM azure.mobile_network.sims
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND simGroupName = '{{ simGroupName }}' --required
AND simName = '{{ simName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="bulk_upload"
    values={[
        { label: 'bulk_upload', value: 'bulk_upload' },
        { label: 'bulk_delete', value: 'bulk_delete' },
        { label: 'bulk_upload_encrypted', value: 'bulk_upload_encrypted' },
        { label: 'move', value: 'move' },
        { label: 'clone', value: 'clone' }
    ]}
>
<TabItem value="bulk_upload">

Bulk upload SIMs to a SIM group.

```sql
EXEC azure.mobile_network.sims.bulk_upload 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@simGroupName='{{ simGroupName }}' --required 
@@json=
'{
"sims": "{{ sims }}"
}'
;
```
</TabItem>
<TabItem value="bulk_delete">

Bulk delete SIMs from a SIM group.

```sql
EXEC azure.mobile_network.sims.bulk_delete 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@simGroupName='{{ simGroupName }}' --required 
@@json=
'{
"sims": "{{ sims }}"
}'
;
```
</TabItem>
<TabItem value="bulk_upload_encrypted">

Bulk upload SIMs in encrypted form to a SIM group. The SIM credentials must be encrypted.

```sql
EXEC azure.mobile_network.sims.bulk_upload_encrypted 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@simGroupName='{{ simGroupName }}' --required 
@@json=
'{
"version": {{ version }}, 
"azureKeyIdentifier": {{ azureKeyIdentifier }}, 
"vendorKeyFingerprint": "{{ vendorKeyFingerprint }}", 
"encryptedTransportKey": "{{ encryptedTransportKey }}", 
"signedTransportKey": "{{ signedTransportKey }}", 
"sims": "{{ sims }}"
}'
;
```
</TabItem>
<TabItem value="move">

Move SIMs to another SIM Group

```sql
EXEC azure.mobile_network.sims.move 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@simGroupName='{{ simGroupName }}' --required 
@@json=
'{
"targetSimGroupId": "{{ targetSimGroupId }}", 
"sims": "{{ sims }}"
}'
;
```
</TabItem>
<TabItem value="clone">

Clone SIMs to another SIM Group

```sql
EXEC azure.mobile_network.sims.clone 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@simGroupName='{{ simGroupName }}' --required 
@@json=
'{
"targetSimGroupId": "{{ targetSimGroupId }}", 
"sims": "{{ sims }}"
}'
;
```
</TabItem>
</Tabs>
