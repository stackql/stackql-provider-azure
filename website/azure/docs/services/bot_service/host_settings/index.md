--- 
title: host_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - host_settings
  - bot_service
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

Creates, updates, deletes, gets or lists a <code>host_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>host_settings</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.bot_service.host_settings" /></td></tr>
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

If resource is retrieved successfully, the service should return 200 (OK).

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
    <td><CopyableCode code="BotOpenIdMetadata" /></td>
    <td><code>string</code></td>
    <td>Same as toBotFromChannelOpenIdMetadataUrl, used by SDK &lt; v4.12</td>
</tr>
<tr>
    <td><CopyableCode code="OAuthUrl" /></td>
    <td><code>string</code></td>
    <td>For in-conversation bot user authentication</td>
</tr>
<tr>
    <td><CopyableCode code="ToBotFromChannelOpenIdMetadataUrl" /></td>
    <td><code>string</code></td>
    <td>For verifying incoming tokens from the channels</td>
</tr>
<tr>
    <td><CopyableCode code="ToBotFromChannelTokenIssuer" /></td>
    <td><code>string</code></td>
    <td>For verifying incoming tokens from the channels</td>
</tr>
<tr>
    <td><CopyableCode code="ToBotFromEmulatorOpenIdMetadataUrl" /></td>
    <td><code>string</code></td>
    <td>For verifying incoming tokens from bot emulator</td>
</tr>
<tr>
    <td><CopyableCode code="ToChannelFromBotLoginUrl" /></td>
    <td><code>string</code></td>
    <td>For getting access token to channels from bot host</td>
</tr>
<tr>
    <td><CopyableCode code="ToChannelFromBotOAuthScope" /></td>
    <td><code>string</code></td>
    <td>For getting access token to channels from bot host</td>
</tr>
<tr>
    <td><CopyableCode code="ValidateAuthority" /></td>
    <td><code>boolean</code></td>
    <td>Per cloud OAuth setting on whether authority is validated</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get per subscription settings needed to host bot in compute resource such as Azure App Service</td>
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
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure Subscription ID.</td>
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

Get per subscription settings needed to host bot in compute resource such as Azure App Service

```sql
SELECT
BotOpenIdMetadata,
OAuthUrl,
ToBotFromChannelOpenIdMetadataUrl,
ToBotFromChannelTokenIssuer,
ToBotFromEmulatorOpenIdMetadataUrl,
ToChannelFromBotLoginUrl,
ToChannelFromBotOAuthScope,
ValidateAuthority
FROM azure.bot_service.host_settings
WHERE subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
