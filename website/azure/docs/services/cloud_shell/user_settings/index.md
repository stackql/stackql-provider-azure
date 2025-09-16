--- 
title: user_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - user_settings
  - cloud_shell
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

Creates, updates, deletes, gets or lists a <code>user_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>user_settings</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cloud_shell.user_settings" /></td></tr>
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
    <td>The cloud shell user settings properties.</td>
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
    <td><a href="#parameter-userSettingsName"><code>userSettingsName</code></a></td>
    <td></td>
    <td>Get current user settings for current signed in user. This operation returns settings for the user's cloud shell preferences including preferred location, storage profile, shell type, font and size settings.</td>
</tr>
<tr>
    <td><a href="#patch"><CopyableCode code="patch" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-userSettingsName"><code>userSettingsName</code></a></td>
    <td></td>
    <td>Patch cloud shell settings for current signed in user</td>
</tr>
<tr>
    <td><a href="#put"><CopyableCode code="put" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-userSettingsName"><code>userSettingsName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create or update cloud shell settings for current signed in user</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-userSettingsName"><code>userSettingsName</code></a></td>
    <td></td>
    <td>Delete cloud shell settings for current signed in user</td>
</tr>
<tr>
    <td><a href="#patch_with_location"><CopyableCode code="patch_with_location" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-userSettingsName"><code>userSettingsName</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td></td>
    <td>Patch cloud shell settings for current signed in user</td>
</tr>
<tr>
    <td><a href="#put_with_location"><CopyableCode code="put_with_location" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-userSettingsName"><code>userSettingsName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Create or update cloud shell settings for current signed in user</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The provider location</td>
</tr>
<tr id="parameter-userSettingsName">
    <td><CopyableCode code="userSettingsName" /></td>
    <td><code>string</code></td>
    <td>The name of the user settings</td>
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

Get current user settings for current signed in user. This operation returns settings for the user's cloud shell preferences including preferred location, storage profile, shell type, font and size settings.

```sql
SELECT
properties
FROM azure.cloud_shell.user_settings
WHERE userSettingsName = '{{ userSettingsName }}' -- required
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="patch"
    values={[
        { label: 'patch', value: 'patch' }
    ]}
>
<TabItem value="patch">

Patch cloud shell settings for current signed in user

```sql
UPDATE azure.cloud_shell.user_settings
SET 
data__properties = '{{ properties }}'
WHERE 
userSettingsName = '{{ userSettingsName }}' --required
RETURNING
properties;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="put"
    values={[
        { label: 'put', value: 'put' }
    ]}
>
<TabItem value="put">

Create or update cloud shell settings for current signed in user

```sql
REPLACE azure.cloud_shell.user_settings
SET 
data__properties = '{{ properties }}'
WHERE 
userSettingsName = '{{ userSettingsName }}' --required
AND data__properties = '{{ properties }}' --required
RETURNING
properties;
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

Delete cloud shell settings for current signed in user

```sql
DELETE FROM azure.cloud_shell.user_settings
WHERE userSettingsName = '{{ userSettingsName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="patch_with_location"
    values={[
        { label: 'patch_with_location', value: 'patch_with_location' },
        { label: 'put_with_location', value: 'put_with_location' }
    ]}
>
<TabItem value="patch_with_location">

Patch cloud shell settings for current signed in user

```sql
EXEC azure.cloud_shell.user_settings.patch_with_location 
@userSettingsName='{{ userSettingsName }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="put_with_location">

Create or update cloud shell settings for current signed in user

```sql
EXEC azure.cloud_shell.user_settings.put_with_location 
@userSettingsName='{{ userSettingsName }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
