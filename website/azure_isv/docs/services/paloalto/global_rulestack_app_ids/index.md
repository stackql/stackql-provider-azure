--- 
title: global_rulestack_app_ids
hide_title: false
hide_table_of_contents: false
keywords:
  - global_rulestack_app_ids
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

Creates, updates, deletes, gets or lists a <code>global_rulestack_app_ids</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>global_rulestack_app_ids</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.paloalto.global_rulestack_app_ids" /></td></tr>
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
    <td><a href="#parameter-globalRulestackName"><code>globalRulestackName</code></a></td>
    <td><a href="#parameter-appIdVersion"><code>appIdVersion</code></a>, <a href="#parameter-appPrefix"><code>appPrefix</code></a>, <a href="#parameter-skip"><code>skip</code></a>, <a href="#parameter-top"><code>top</code></a></td>
    <td>List of AppIds for GlobalRulestack ApiVersion</td>
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
<tr id="parameter-appIdVersion">
    <td><CopyableCode code="appIdVersion" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-appPrefix">
    <td><CopyableCode code="appPrefix" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-skip">
    <td><CopyableCode code="skip" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-top">
    <td><CopyableCode code="top" /></td>
    <td><code>integer (int32)</code></td>
    <td></td>
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

List of AppIds for GlobalRulestack ApiVersion

```sql
SELECT
*
FROM azure_isv.paloalto.global_rulestack_app_ids
WHERE globalRulestackName = '{{ globalRulestackName }}' -- required
AND appIdVersion = '{{ appIdVersion }}'
AND appPrefix = '{{ appPrefix }}'
AND skip = '{{ skip }}'
AND top = '{{ top }}'
;
```
</TabItem>
</Tabs>
