--- 
title: data_plane_applications
hide_title: false
hide_table_of_contents: false
keywords:
  - data_plane_applications
  - split
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

Creates, updates, deletes, gets or lists a <code>data_plane_applications</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>data_plane_applications</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.split.data_plane_applications" /></td></tr>
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
    <td><a href="#exchange_token"><CopyableCode code="exchange_token" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-applicationId"><code>applicationId</code></a>, <a href="#parameter-token"><code>token</code></a>, <a href="#parameter-resource"><code>resource</code></a></td>
    <td></td>
    <td>The action to exchange Split.IO data plane authentication token.</td>
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
<tr id="parameter-applicationId">
    <td><CopyableCode code="applicationId" /></td>
    <td><code>string</code></td>
    <td>The id of the Split.IO data plane authentication application in Guid format.</td>
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
<tr id="parameter-workspaceName">
    <td><CopyableCode code="workspaceName" /></td>
    <td><code>string</code></td>
    <td>The name of the ExperimentationWorkspace resource.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="exchange_token"
    values={[
        { label: 'exchange_token', value: 'exchange_token' }
    ]}
>
<TabItem value="exchange_token">

The action to exchange Split.IO data plane authentication token.

```sql
EXEC azure_isv.split.data_plane_applications.exchange_token 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@workspaceName='{{ workspaceName }}' --required, 
@applicationId='{{ applicationId }}' --required 
@@json=
'{
"token": "{{ token }}", 
"resource": "{{ resource }}"
}'
;
```
</TabItem>
</Tabs>
