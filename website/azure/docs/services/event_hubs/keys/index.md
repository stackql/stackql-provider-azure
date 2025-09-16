--- 
title: keys
hide_title: false
hide_table_of_contents: false
keywords:
  - keys
  - event_hubs
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

Creates, updates, deletes, gets or lists a <code>keys</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>keys</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.event_hubs.keys" /></td></tr>
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

Connection strings successfully returned.

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
    <td><CopyableCode code="aliasPrimaryConnectionString" /></td>
    <td><code>string</code></td>
    <td>Primary connection string of the alias if GEO DR is enabled</td>
</tr>
<tr>
    <td><CopyableCode code="aliasSecondaryConnectionString" /></td>
    <td><code>string</code></td>
    <td>Secondary  connection string of the alias if GEO DR is enabled</td>
</tr>
<tr>
    <td><CopyableCode code="keyName" /></td>
    <td><code>string</code></td>
    <td>A string that describes the AuthorizationRule.</td>
</tr>
<tr>
    <td><CopyableCode code="primaryConnectionString" /></td>
    <td><code>string</code></td>
    <td>Primary connection string of the created namespace AuthorizationRule.</td>
</tr>
<tr>
    <td><CopyableCode code="primaryKey" /></td>
    <td><code>string</code></td>
    <td>A base64-encoded 256-bit primary key for signing and validating the SAS token.</td>
</tr>
<tr>
    <td><CopyableCode code="secondaryConnectionString" /></td>
    <td><code>string</code></td>
    <td>Secondary connection string of the created namespace AuthorizationRule.</td>
</tr>
<tr>
    <td><CopyableCode code="secondaryKey" /></td>
    <td><code>string</code></td>
    <td>A base64-encoded 256-bit primary key for signing and validating the SAS token.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-namespaceName"><code>namespaceName</code></a>, <a href="#parameter-eventHubName"><code>eventHubName</code></a>, <a href="#parameter-authorizationRuleName"><code>authorizationRuleName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the ACS and SAS connection strings for the Event Hub.</td>
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
<tr id="parameter-authorizationRuleName">
    <td><CopyableCode code="authorizationRuleName" /></td>
    <td><code>string</code></td>
    <td>The authorization rule name.</td>
</tr>
<tr id="parameter-eventHubName">
    <td><CopyableCode code="eventHubName" /></td>
    <td><code>string</code></td>
    <td>The Event Hub name</td>
</tr>
<tr id="parameter-namespaceName">
    <td><CopyableCode code="namespaceName" /></td>
    <td><code>string</code></td>
    <td>The Namespace name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group within the azure subscription.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
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

Gets the ACS and SAS connection strings for the Event Hub.

```sql
SELECT
aliasPrimaryConnectionString,
aliasSecondaryConnectionString,
keyName,
primaryConnectionString,
primaryKey,
secondaryConnectionString,
secondaryKey
FROM azure.event_hubs.keys
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND namespaceName = '{{ namespaceName }}' -- required
AND eventHubName = '{{ eventHubName }}' -- required
AND authorizationRuleName = '{{ authorizationRuleName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
