--- 
title: pre_rules_counters
hide_title: false
hide_table_of_contents: false
keywords:
  - pre_rules_counters
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

Creates, updates, deletes, gets or lists a <code>pre_rules_counters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>pre_rules_counters</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.paloalto.pre_rules_counters" /></td></tr>
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
    <td><CopyableCode code="appSeen" /></td>
    <td><code>object</code></td>
    <td>apps seen</td>
</tr>
<tr>
    <td><CopyableCode code="firewallName" /></td>
    <td><code>string</code></td>
    <td>firewall name</td>
</tr>
<tr>
    <td><CopyableCode code="hitCount" /></td>
    <td><code>integer (int32)</code></td>
    <td>hit count</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdatedTimestamp" /></td>
    <td><code>string (date-time)</code></td>
    <td>last updated timestamp</td>
</tr>
<tr>
    <td><CopyableCode code="priority" /></td>
    <td><code>string</code></td>
    <td>priority number</td>
</tr>
<tr>
    <td><CopyableCode code="requestTimestamp" /></td>
    <td><code>string (date-time)</code></td>
    <td>timestamp of request</td>
</tr>
<tr>
    <td><CopyableCode code="ruleListName" /></td>
    <td><code>string</code></td>
    <td>rule list name</td>
</tr>
<tr>
    <td><CopyableCode code="ruleName" /></td>
    <td><code>string</code></td>
    <td>rule name</td>
</tr>
<tr>
    <td><CopyableCode code="ruleStackName" /></td>
    <td><code>string</code></td>
    <td>rule Stack Name</td>
</tr>
<tr>
    <td><CopyableCode code="timestamp" /></td>
    <td><code>string (date-time)</code></td>
    <td>timestamp of response</td>
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
    <td><a href="#parameter-globalRulestackName"><code>globalRulestackName</code></a>, <a href="#parameter-priority"><code>priority</code></a></td>
    <td><a href="#parameter-firewallName"><code>firewallName</code></a></td>
    <td>Get counters</td>
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
<tr id="parameter-globalRulestackName">
    <td><CopyableCode code="globalRulestackName" /></td>
    <td><code>string</code></td>
    <td>GlobalRulestack resource name</td>
</tr>
<tr id="parameter-priority">
    <td><CopyableCode code="priority" /></td>
    <td><code>string</code></td>
    <td>Pre Rule priority</td>
</tr>
<tr id="parameter-firewallName">
    <td><CopyableCode code="firewallName" /></td>
    <td><code>string</code></td>
    <td></td>
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

Get counters

```sql
SELECT
appSeen,
firewallName,
hitCount,
lastUpdatedTimestamp,
priority,
requestTimestamp,
ruleListName,
ruleName,
ruleStackName,
timestamp
FROM azure_isv.paloalto.pre_rules_counters
WHERE globalRulestackName = '{{ globalRulestackName }}' -- required
AND priority = '{{ priority }}' -- required
AND firewallName = '{{ firewallName }}'
;
```
</TabItem>
</Tabs>
