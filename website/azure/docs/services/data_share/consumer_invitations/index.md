--- 
title: consumer_invitations
hide_title: false
hide_table_of_contents: false
keywords:
  - consumer_invitations
  - data_share
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

Creates, updates, deletes, gets or lists a <code>consumer_invitations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>consumer_invitations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_share.consumer_invitations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_invitations', value: 'list_invitations' }
    ]}
>
<TabItem value="get">

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
    <td>The resource id of the azure resource</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the azure resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties on the account</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>System Data of the Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the azure resource</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_invitations">

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
    <td>The resource id of the azure resource</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the azure resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties on the account</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>System Data of the Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the azure resource</td>
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
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-invitationId"><code>invitationId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get an invitation</td>
</tr>
<tr>
    <td><a href="#list_invitations"><CopyableCode code="list_invitations" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-$skipToken"><code>$skipToken</code></a></td>
    <td>Lists invitations</td>
</tr>
<tr>
    <td><a href="#reject_invitation"><CopyableCode code="reject_invitation" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Reject an invitation</td>
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
<tr id="parameter-invitationId">
    <td><CopyableCode code="invitationId" /></td>
    <td><code>string</code></td>
    <td>An invitation id</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Location of the invitation</td>
</tr>
<tr id="parameter-$skipToken">
    <td><CopyableCode code="$skipToken" /></td>
    <td><code>string</code></td>
    <td>The continuation token</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The api version to use.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_invitations', value: 'list_invitations' }
    ]}
>
<TabItem value="get">

Get an invitation

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.data_share.consumer_invitations
WHERE location = '{{ location }}' -- required
AND invitationId = '{{ invitationId }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list_invitations">

Lists invitations

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.data_share.consumer_invitations
WHERE api-version = '{{ api-version }}'
AND $skipToken = '{{ $skipToken }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="reject_invitation"
    values={[
        { label: 'reject_invitation', value: 'reject_invitation' }
    ]}
>
<TabItem value="reject_invitation">

Reject an invitation

```sql
EXEC azure.data_share.consumer_invitations.reject_invitation 
@location='{{ location }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
