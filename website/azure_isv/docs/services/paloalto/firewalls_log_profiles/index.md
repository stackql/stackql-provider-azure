--- 
title: firewalls_log_profiles
hide_title: false
hide_table_of_contents: false
keywords:
  - firewalls_log_profiles
  - paloalto
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>firewalls_log_profiles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>firewalls_log_profiles</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.paloalto.firewalls_log_profiles" /></td></tr>
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

The request has succeeded.

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
    <td><CopyableCode code="applicationInsights" /></td>
    <td><code>object</code></td>
    <td>Application Insight details</td>
</tr>
<tr>
    <td><CopyableCode code="commonDestination" /></td>
    <td><code>object</code></td>
    <td>Common destination configurations</td>
</tr>
<tr>
    <td><CopyableCode code="decryptLogDestination" /></td>
    <td><code>object</code></td>
    <td>Decrypt destination configurations</td>
</tr>
<tr>
    <td><CopyableCode code="logOption" /></td>
    <td><code>string</code></td>
    <td>Log option SAME/INDIVIDUAL</td>
</tr>
<tr>
    <td><CopyableCode code="logType" /></td>
    <td><code>string</code></td>
    <td>One of possible log type</td>
</tr>
<tr>
    <td><CopyableCode code="threatLogDestination" /></td>
    <td><code>object</code></td>
    <td>Threat destination configurations</td>
</tr>
<tr>
    <td><CopyableCode code="trafficLogDestination" /></td>
    <td><code>object</code></td>
    <td>Traffic destination configurations</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-firewallName"><code>firewallName</code></a></td>
    <td></td>
    <td>Log Profile for Firewall</td>
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
<tr id="parameter-firewallName">
    <td><CopyableCode code="firewallName" /></td>
    <td><code>string</code></td>
    <td>Firewall resource name</td>
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
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Log Profile for Firewall

```sql
SELECT
applicationInsights,
commonDestination,
decryptLogDestination,
logOption,
logType,
threatLogDestination,
trafficLogDestination
FROM azure_isv.paloalto.firewalls_log_profiles
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND firewallName = '{{ firewallName }}' -- required
;
```
</TabItem>
</Tabs>
