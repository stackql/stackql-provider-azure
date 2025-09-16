--- 
title: integration_runtime_connection_info
hide_title: false
hide_table_of_contents: false
keywords:
  - integration_runtime_connection_info
  - synapse
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

Creates, updates, deletes, gets or lists an <code>integration_runtime_connection_info</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>integration_runtime_connection_info</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.integration_runtime_connection_info" /></td></tr>
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

OK.

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
    <td><CopyableCode code="hostServiceUri" /></td>
    <td><code>string</code></td>
    <td>The on-premises integration runtime host URL.</td>
</tr>
<tr>
    <td><CopyableCode code="identityCertThumbprint" /></td>
    <td><code>string</code></td>
    <td>The integration runtime SSL certificate thumbprint. Click-Once application uses it to do server validation.</td>
</tr>
<tr>
    <td><CopyableCode code="isIdentityCertExprired" /></td>
    <td><code>boolean</code></td>
    <td>Whether the identity certificate is expired.</td>
</tr>
<tr>
    <td><CopyableCode code="publicKey" /></td>
    <td><code>string</code></td>
    <td>The public key for encrypting a credential when transferring the credential to the integration runtime.</td>
</tr>
<tr>
    <td><CopyableCode code="serviceToken" /></td>
    <td><code>string</code></td>
    <td>The token generated in service. Callers use this token to authenticate to integration runtime.</td>
</tr>
<tr>
    <td><CopyableCode code="version" /></td>
    <td><code>string</code></td>
    <td>The integration runtime version.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-integrationRuntimeName"><code>integrationRuntimeName</code></a></td>
    <td></td>
    <td>Get connection info for an integration runtime</td>
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
<tr id="parameter-integrationRuntimeName">
    <td><CopyableCode code="integrationRuntimeName" /></td>
    <td><code>string</code></td>
    <td>Integration runtime name</td>
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
<tr id="parameter-workspaceName">
    <td><CopyableCode code="workspaceName" /></td>
    <td><code>string</code></td>
    <td>The name of the workspace.</td>
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

Get connection info for an integration runtime

```sql
SELECT
hostServiceUri,
identityCertThumbprint,
isIdentityCertExprired,
publicKey,
serviceToken,
version
FROM azure.synapse.integration_runtime_connection_info
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND integrationRuntimeName = '{{ integrationRuntimeName }}' -- required
;
```
</TabItem>
</Tabs>
