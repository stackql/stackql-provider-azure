--- 
title: workspace_notification_recipient_users
hide_title: false
hide_table_of_contents: false
keywords:
  - workspace_notification_recipient_users
  - api_management
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

Creates, updates, deletes, gets or lists a <code>workspace_notification_recipient_users</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>workspace_notification_recipient_users</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.workspace_notification_recipient_users" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_notification"
    values={[
        { label: 'list_by_notification', value: 'list_by_notification' }
    ]}
>
<TabItem value="list_by_notification">

The response body contains the Recipient User collection for the notification.

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
    <td>Recipient User entity contract properties.</td>
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
    <td><a href="#list_by_notification"><CopyableCode code="list_by_notification" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-workspaceId"><code>workspaceId</code></a>, <a href="#parameter-notificationName"><code>notificationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the list of the Notification Recipient User subscribed to the notification.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-workspaceId"><code>workspaceId</code></a>, <a href="#parameter-notificationName"><code>notificationName</code></a>, <a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Adds the API Management User to the list of Recipients for the Notification.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-workspaceId"><code>workspaceId</code></a>, <a href="#parameter-notificationName"><code>notificationName</code></a>, <a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Removes the API Management user from the list of Notification.</td>
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
<tr id="parameter-notificationName">
    <td><CopyableCode code="notificationName" /></td>
    <td><code>string</code></td>
    <td>Notification Name Identifier.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the API Management service.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-userId">
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>User identifier. Must be unique in the current API Management service instance.</td>
</tr>
<tr id="parameter-workspaceId">
    <td><CopyableCode code="workspaceId" /></td>
    <td><code>string</code></td>
    <td>Workspace identifier. Must be unique in the current API Management service instance.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_notification"
    values={[
        { label: 'list_by_notification', value: 'list_by_notification' }
    ]}
>
<TabItem value="list_by_notification">

Gets the list of the Notification Recipient User subscribed to the notification.

```sql
SELECT
properties
FROM azure.api_management.workspace_notification_recipient_users
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND workspaceId = '{{ workspaceId }}' -- required
AND notificationName = '{{ notificationName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Adds the API Management User to the list of Recipients for the Notification.

```sql
INSERT INTO azure.api_management.workspace_notification_recipient_users (
resourceGroupName,
serviceName,
workspaceId,
notificationName,
userId,
subscriptionId
)
SELECT 
'{{ resourceGroupName }}',
'{{ serviceName }}',
'{{ workspaceId }}',
'{{ notificationName }}',
'{{ userId }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: workspace_notification_recipient_users
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the workspace_notification_recipient_users resource.
    - name: serviceName
      value: string
      description: Required parameter for the workspace_notification_recipient_users resource.
    - name: workspaceId
      value: string
      description: Required parameter for the workspace_notification_recipient_users resource.
    - name: notificationName
      value: string
      description: Required parameter for the workspace_notification_recipient_users resource.
    - name: userId
      value: string
      description: Required parameter for the workspace_notification_recipient_users resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the workspace_notification_recipient_users resource.
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

Removes the API Management user from the list of Notification.

```sql
DELETE FROM azure.api_management.workspace_notification_recipient_users
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND serviceName = '{{ serviceName }}' --required
AND workspaceId = '{{ workspaceId }}' --required
AND notificationName = '{{ notificationName }}' --required
AND userId = '{{ userId }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
