--- 
title: active_security_admin_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - active_security_admin_rules
  - network
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

Creates, updates, deletes, gets or lists an <code>active_security_admin_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>active_security_admin_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.active_security_admin_rules" /></td></tr>
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

Post successful. The operation returns the specified Managed Network active security admin rules resource.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="commitTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Deployment time string.</td>
</tr>
<tr>
    <td><CopyableCode code="configurationDescription" /></td>
    <td><code>string</code></td>
    <td>A description of the security admin configuration.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Whether the rule is custom or default.</td>
</tr>
<tr>
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>Deployment region.</td>
</tr>
<tr>
    <td><CopyableCode code="ruleCollectionAppliesToGroups" /></td>
    <td><code>array</code></td>
    <td>Groups for rule collection</td>
</tr>
<tr>
    <td><CopyableCode code="ruleCollectionDescription" /></td>
    <td><code>string</code></td>
    <td>A description of the rule collection.</td>
</tr>
<tr>
    <td><CopyableCode code="ruleGroups" /></td>
    <td><code>array</code></td>
    <td>Effective configuration groups.</td>
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
    <td>Lists active security admin rules in a network manager.</td>
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

Lists active security admin rules in a network manager.

```sql
SELECT
id,
commitTime,
configurationDescription,
kind,
region,
ruleCollectionAppliesToGroups,
ruleCollectionDescription,
ruleGroups
FROM azure.network.active_security_admin_rules
;
```
</TabItem>
</Tabs>
