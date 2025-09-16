--- 
title: direct_lines
hide_title: false
hide_table_of_contents: false
keywords:
  - direct_lines
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

Creates, updates, deletes, gets or lists a <code>direct_lines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>direct_lines</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.bot_service.direct_lines" /></td></tr>
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
    <td><a href="#regenerate_keys"><CopyableCode code="regenerate_keys" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-channelName"><code>channelName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-key"><code>key</code></a></td>
    <td></td>
    <td>Regenerates secret keys and returns them for the DirectLine Channel of a particular BotService resource</td>
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
<tr id="parameter-channelName">
    <td><CopyableCode code="channelName" /></td>
    <td><code>string</code></td>
    <td>The name of the Channel resource for which keys are to be regenerated.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the Bot resource group in the user subscription.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Bot resource.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure Subscription ID.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="regenerate_keys"
    values={[
        { label: 'regenerate_keys', value: 'regenerate_keys' }
    ]}
>
<TabItem value="regenerate_keys">

Regenerates secret keys and returns them for the DirectLine Channel of a particular BotService resource

```sql
EXEC azure.bot_service.direct_lines.regenerate_keys 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@resourceName='{{ resourceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@channelName='{{ channelName }}' --required 
@@json=
'{
"siteName": "{{ siteName }}", 
"key": "{{ key }}"
}'
;
```
</TabItem>
</Tabs>
