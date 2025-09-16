--- 
title: bastion_shareable_links
hide_title: false
hide_table_of_contents: false
keywords:
  - bastion_shareable_links
  - network
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

Creates, updates, deletes, gets or lists a <code>bastion_shareable_links</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>bastion_shareable_links</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.bastion_shareable_links" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Success. The operation returns a list of shareable links for the specified VMs, giving appropriate error messages as needed.

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
    <td><CopyableCode code="bsl" /></td>
    <td><code>string</code></td>
    <td>The unique Bastion Shareable Link to the virtual machine.</td>
</tr>
<tr>
    <td><CopyableCode code="createdAt" /></td>
    <td><code>string</code></td>
    <td>The time when the link was created.</td>
</tr>
<tr>
    <td><CopyableCode code="message" /></td>
    <td><code>string</code></td>
    <td>Optional field indicating the warning or error message related to the vm in case of partial failure.</td>
</tr>
<tr>
    <td><CopyableCode code="vm" /></td>
    <td><code>object</code></td>
    <td>Reference of the virtual machine resource.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bastionHostName"><code>bastionHostName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Return the Bastion Shareable Links for all the VMs specified in the request.</td>
</tr>
<tr>
    <td><a href="#put"><CopyableCode code="put" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bastionHostName"><code>bastionHostName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates a Bastion Shareable Links for all the VMs specified in the request.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bastionHostName"><code>bastionHostName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the Bastion Shareable Links for all the VMs specified in the request.</td>
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
<tr id="parameter-bastionHostName">
    <td><CopyableCode code="bastionHostName" /></td>
    <td><code>string</code></td>
    <td>The name of the Bastion Host.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
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
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Return the Bastion Shareable Links for all the VMs specified in the request.

```sql
SELECT
bsl,
createdAt,
message,
vm
FROM azure.network.bastion_shareable_links
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND bastionHostName = '{{ bastionHostName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="put"
    values={[
        { label: 'put', value: 'put' },
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="put">

Creates a Bastion Shareable Links for all the VMs specified in the request.

```sql
EXEC azure.network.bastion_shareable_links.put 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@bastionHostName='{{ bastionHostName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"vms": "{{ vms }}"
}'
;
```
</TabItem>
<TabItem value="delete">

Deletes the Bastion Shareable Links for all the VMs specified in the request.

```sql
EXEC azure.network.bastion_shareable_links.delete 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@bastionHostName='{{ bastionHostName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"vms": "{{ vms }}"
}'
;
```
</TabItem>
</Tabs>
