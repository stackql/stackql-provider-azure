--- 
title: qn_a_maker_endpoint_keys
hide_title: false
hide_table_of_contents: false
keywords:
  - qn_a_maker_endpoint_keys
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

Creates, updates, deletes, gets or lists a <code>qn_a_maker_endpoint_keys</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>qn_a_maker_endpoint_keys</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.bot_service.qn_a_maker_endpoint_keys" /></td></tr>
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
    <td><CopyableCode code="installedVersion" /></td>
    <td><code>string</code></td>
    <td>Current version of runtime.</td>
</tr>
<tr>
    <td><CopyableCode code="lastStableVersion" /></td>
    <td><code>string</code></td>
    <td>Latest version of runtime.</td>
</tr>
<tr>
    <td><CopyableCode code="primaryEndpointKey" /></td>
    <td><code>string</code></td>
    <td>Primary Access Key.</td>
</tr>
<tr>
    <td><CopyableCode code="secondaryEndpointKey" /></td>
    <td><code>string</code></td>
    <td>Secondary Access Key.</td>
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
    <td>Lists the QnA Maker endpoint keys</td>
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

Lists the QnA Maker endpoint keys

```sql
SELECT
installedVersion,
lastStableVersion,
primaryEndpointKey,
secondaryEndpointKey
FROM azure.bot_service.qn_a_maker_endpoint_keys
WHERE subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
