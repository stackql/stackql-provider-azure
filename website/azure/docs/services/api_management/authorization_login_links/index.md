--- 
title: authorization_login_links
hide_title: false
hide_table_of_contents: false
keywords:
  - authorization_login_links
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

Creates, updates, deletes, gets or lists an <code>authorization_login_links</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>authorization_login_links</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.authorization_login_links" /></td></tr>
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
    <td><a href="#post"><CopyableCode code="post" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-authorizationProviderId"><code>authorizationProviderId</code></a>, <a href="#parameter-authorizationId"><code>authorizationId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets authorization login links.</td>
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
<tr id="parameter-authorizationId">
    <td><CopyableCode code="authorizationId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the authorization.</td>
</tr>
<tr id="parameter-authorizationProviderId">
    <td><CopyableCode code="authorizationProviderId" /></td>
    <td><code>string</code></td>
    <td>Identifier of the authorization provider.</td>
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
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="post"
    values={[
        { label: 'post', value: 'post' }
    ]}
>
<TabItem value="post">

Gets authorization login links.

```sql
EXEC azure.api_management.authorization_login_links.post 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@authorizationProviderId='{{ authorizationProviderId }}' --required, 
@authorizationId='{{ authorizationId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"postLoginRedirectUrl": "{{ postLoginRedirectUrl }}"
}'
;
```
</TabItem>
</Tabs>
