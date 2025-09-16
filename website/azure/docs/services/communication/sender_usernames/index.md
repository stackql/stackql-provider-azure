--- 
title: sender_usernames
hide_title: false
hide_table_of_contents: false
keywords:
  - sender_usernames
  - communication
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

Creates, updates, deletes, gets or lists a <code>sender_usernames</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>sender_usernames</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.communication.sender_usernames" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_domains', value: 'list_by_domains' }
    ]}
>
<TabItem value="get">

Success. The response describe the corresponding SenderUsername resource.

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
    <td>The properties of a SenderUsername resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_domains">

Success. The response describe the Domains SenderUsername collection.

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
    <td>The properties of a SenderUsername resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-emailServiceName"><code>emailServiceName</code></a>, <a href="#parameter-domainName"><code>domainName</code></a>, <a href="#parameter-senderUsername"><code>senderUsername</code></a></td>
    <td></td>
    <td>Get a valid sender username for a domains resource.</td>
</tr>
<tr>
    <td><a href="#list_by_domains"><CopyableCode code="list_by_domains" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-emailServiceName"><code>emailServiceName</code></a>, <a href="#parameter-domainName"><code>domainName</code></a></td>
    <td></td>
    <td>List all valid sender usernames for a domains resource.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-emailServiceName"><code>emailServiceName</code></a>, <a href="#parameter-domainName"><code>domainName</code></a>, <a href="#parameter-senderUsername"><code>senderUsername</code></a></td>
    <td></td>
    <td>Add a new SenderUsername resource under the parent Domains resource or update an existing SenderUsername resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-emailServiceName"><code>emailServiceName</code></a>, <a href="#parameter-domainName"><code>domainName</code></a>, <a href="#parameter-senderUsername"><code>senderUsername</code></a></td>
    <td></td>
    <td>Operation to delete a SenderUsernames resource.</td>
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
<tr id="parameter-domainName">
    <td><CopyableCode code="domainName" /></td>
    <td><code>string</code></td>
    <td>The name of the Domains resource.</td>
</tr>
<tr id="parameter-emailServiceName">
    <td><CopyableCode code="emailServiceName" /></td>
    <td><code>string</code></td>
    <td>The name of the EmailService resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-senderUsername">
    <td><CopyableCode code="senderUsername" /></td>
    <td><code>string</code></td>
    <td>The valid sender Username.</td>
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
        { label: 'list_by_domains', value: 'list_by_domains' }
    ]}
>
<TabItem value="get">

Get a valid sender username for a domains resource.

```sql
SELECT
properties
FROM azure.communication.sender_usernames
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND emailServiceName = '{{ emailServiceName }}' -- required
AND domainName = '{{ domainName }}' -- required
AND senderUsername = '{{ senderUsername }}' -- required
;
```
</TabItem>
<TabItem value="list_by_domains">

List all valid sender usernames for a domains resource.

```sql
SELECT
properties
FROM azure.communication.sender_usernames
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND emailServiceName = '{{ emailServiceName }}' -- required
AND domainName = '{{ domainName }}' -- required
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

Add a new SenderUsername resource under the parent Domains resource or update an existing SenderUsername resource.

```sql
INSERT INTO azure.communication.sender_usernames (
data__properties,
subscriptionId,
resourceGroupName,
emailServiceName,
domainName,
senderUsername
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ emailServiceName }}',
'{{ domainName }}',
'{{ senderUsername }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: sender_usernames
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the sender_usernames resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the sender_usernames resource.
    - name: emailServiceName
      value: string
      description: Required parameter for the sender_usernames resource.
    - name: domainName
      value: string
      description: Required parameter for the sender_usernames resource.
    - name: senderUsername
      value: string
      description: Required parameter for the sender_usernames resource.
    - name: properties
      value: object
      description: |
        The properties of a SenderUsername resource.
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

Operation to delete a SenderUsernames resource.

```sql
DELETE FROM azure.communication.sender_usernames
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND emailServiceName = '{{ emailServiceName }}' --required
AND domainName = '{{ domainName }}' --required
AND senderUsername = '{{ senderUsername }}' --required
;
```
</TabItem>
</Tabs>
