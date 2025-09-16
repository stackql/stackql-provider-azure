--- 
title: applications_tokens
hide_title: false
hide_table_of_contents: false
keywords:
  - applications_tokens
  - managed_applications
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

Creates, updates, deletes, gets or lists an <code>applications_tokens</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>applications_tokens</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_applications.applications_tokens" /></td></tr>
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

OK - Returns an array of managed identity tokens.

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
    <td><CopyableCode code="accessToken" /></td>
    <td><code>string</code></td>
    <td>The requested access token.</td>
</tr>
<tr>
    <td><CopyableCode code="authorizationAudience" /></td>
    <td><code>string</code></td>
    <td>The aud (audience) the access token was request for. This is the same as what was provided in the listTokens request.</td>
</tr>
<tr>
    <td><CopyableCode code="expiresIn" /></td>
    <td><code>string</code></td>
    <td>The number of seconds the access token will be valid.</td>
</tr>
<tr>
    <td><CopyableCode code="expiresOn" /></td>
    <td><code>string</code></td>
    <td>The timespan when the access token expires. This is represented as the number of seconds from epoch.</td>
</tr>
<tr>
    <td><CopyableCode code="notBefore" /></td>
    <td><code>string</code></td>
    <td>The timespan when the access token takes effect. This is represented as the number of seconds from epoch.</td>
</tr>
<tr>
    <td><CopyableCode code="resourceId" /></td>
    <td><code>string</code></td>
    <td>The Azure resource ID for the issued token. This is either the managed application ID or the user-assigned identity ID.</td>
</tr>
<tr>
    <td><CopyableCode code="tokenType" /></td>
    <td><code>string</code></td>
    <td>The type of the token.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationName"><code>applicationName</code></a></td>
    <td></td>
    <td>List tokens for application.</td>
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
<tr id="parameter-applicationName">
    <td><CopyableCode code="applicationName" /></td>
    <td><code>string</code></td>
    <td>The name of the managed application.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
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

List tokens for application.

```sql
SELECT
accessToken,
authorizationAudience,
expiresIn,
expiresOn,
notBefore,
resourceId,
tokenType
FROM azure.managed_applications.applications_tokens
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND applicationName = '{{ applicationName }}' -- required
;
```
</TabItem>
</Tabs>
