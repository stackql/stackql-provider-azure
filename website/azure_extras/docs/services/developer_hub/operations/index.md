--- 
title: operations
hide_title: false
hide_table_of_contents: false
keywords:
  - operations
  - developer_hub
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>operations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.developer_hub.operations" /></td></tr>
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

Operation details.

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
    <td>The name of the operation, as per Resource-Based Access Control (RBAC). Examples: "Microsoft.Compute/virtualMachines/write", "Microsoft.Compute/virtualMachines/capture/action"</td>
</tr>
<tr>
    <td><CopyableCode code="actionType" /></td>
    <td><code>string</code></td>
    <td>Enum. Indicates the action type. "Internal" refers to actions that are for internal only APIs.</td>
</tr>
<tr>
    <td><CopyableCode code="display" /></td>
    <td><code>object</code></td>
    <td>Localized display information for this particular operation.</td>
</tr>
<tr>
    <td><CopyableCode code="isDataAction" /></td>
    <td><code>boolean</code></td>
    <td>Whether the operation applies to data-plane. This is "true" for data-plane operations and "false" for ARM/control-plane operations.</td>
</tr>
<tr>
    <td><CopyableCode code="origin" /></td>
    <td><code>string</code></td>
    <td>The intended executor of the operation; as in Resource Based Access Control (RBAC) and audit logs UX. Default value is "user,system"</td>
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
    <td>Returns list of operations.</td>
</tr>
<tr>
    <td><a href="#github_oauth"><CopyableCode code="github_oauth" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#github_oauth_callback"><CopyableCode code="github_oauth_callback" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-code"><code>code</code></a>, <a href="#parameter-state"><code>state</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#generate_preview_artifacts"><CopyableCode code="generate_preview_artifacts" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td></td>
    <td></td>
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
<tr id="parameter-code">
    <td><CopyableCode code="code" /></td>
    <td><code>string</code></td>
    <td>The code response from authenticating the GitHub App.</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The name of the Azure region.</td>
</tr>
<tr id="parameter-state">
    <td><CopyableCode code="state" /></td>
    <td><code>string</code></td>
    <td>The state response from authenticating the GitHub App.</td>
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
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Returns list of operations.

```sql
SELECT
name,
actionType,
display,
isDataAction,
origin
FROM azure_extras.developer_hub.operations
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="github_oauth"
    values={[
        { label: 'github_oauth', value: 'github_oauth' },
        { label: 'github_oauth_callback', value: 'github_oauth_callback' },
        { label: 'generate_preview_artifacts', value: 'generate_preview_artifacts' }
    ]}
>
<TabItem value="github_oauth">

OK

```sql
EXEC azure_extras.developer_hub.operations.github_oauth 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"redirectUrl": "{{ redirectUrl }}"
}'
;
```
</TabItem>
<TabItem value="github_oauth_callback">

OK

```sql
EXEC azure_extras.developer_hub.operations.github_oauth_callback 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required, 
@code='{{ code }}' --required, 
@state='{{ state }}' --required
;
```
</TabItem>
<TabItem value="generate_preview_artifacts">

OK

```sql
EXEC azure_extras.developer_hub.operations.generate_preview_artifacts 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"generationLanguage": "{{ generationLanguage }}", 
"languageVersion": "{{ languageVersion }}", 
"builderVersion": "{{ builderVersion }}", 
"port": "{{ port }}", 
"appName": "{{ appName }}", 
"dockerfileOutputDirectory": "{{ dockerfileOutputDirectory }}", 
"manifestOutputDirectory": "{{ manifestOutputDirectory }}", 
"dockerfileGenerationMode": "{{ dockerfileGenerationMode }}", 
"manifestGenerationMode": "{{ manifestGenerationMode }}", 
"manifestType": "{{ manifestType }}", 
"imageName": "{{ imageName }}", 
"namespace": "{{ namespace }}", 
"imageTag": "{{ imageTag }}"
}'
;
```
</TabItem>
</Tabs>
