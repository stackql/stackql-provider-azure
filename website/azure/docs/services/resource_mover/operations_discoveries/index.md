--- 
title: operations_discoveries
hide_title: false
hide_table_of_contents: false
keywords:
  - operations_discoveries
  - resource_mover
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

Creates, updates, deletes, gets or lists an <code>operations_discoveries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>operations_discoveries</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.resource_mover.operations_discoveries" /></td></tr>
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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets or sets Name of the API.<br /> The name of the operation being performed on this particular object. It should<br /> match the action name that appears in RBAC / the event service.<br /> Examples of operations include:<br /> * Microsoft.Compute/virtualMachine/capture/action<br /> * Microsoft.Compute/virtualMachine/restart/action<br /> * Microsoft.Compute/virtualMachine/write<br /> * Microsoft.Compute/virtualMachine/read<br /> * Microsoft.Compute/virtualMachine/delete<br /> Each action should include, in order:<br /> (1) Resource Provider Namespace<br /> (2) Type hierarchy for which the action applies (e.g. server/databases for a SQL<br /> Azure database)<br /> (3) Read, Write, Action or Delete indicating which type applies. If it is a PUT/PATCH<br /> on a collection or named value, Write should be used.<br /> If it is a GET, Read should be used. If it is a DELETE, Delete should be used. If it<br /> is a POST, Action should be used.<br /> As a note: all resource providers would need to include the "&#123;Resource Provider<br /> Namespace&#125;/register/action" operation in their response.<br /> This API is used to register for their service, and should include details about the<br /> operation (e.g. a localized name for the resource provider + any special<br /> considerations like PII release).</td>
</tr>
<tr>
    <td><CopyableCode code="display" /></td>
    <td><code>object</code></td>
    <td>Contains the localized display information for this particular operation / action. These<br /> value will be used by several clients for<br /> (1) custom role definitions for RBAC;<br /> (2) complex query filters for the event service; and<br /> (3) audit history / records for management operations.</td>
</tr>
<tr>
    <td><CopyableCode code="isDataAction" /></td>
    <td><code>boolean</code></td>
    <td>Indicates whether the operation is a data action</td>
</tr>
<tr>
    <td><CopyableCode code="origin" /></td>
    <td><code>string</code></td>
    <td>Gets or sets Origin.<br /> The intended executor of the operation; governs the display of the operation in the<br /> RBAC UX and the audit logs UX.<br /> Default value is "user,system".</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>ClientDiscovery properties.</td>
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
    <td></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td></td>
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
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client Api Version.</td>
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

Success

```sql
SELECT
name,
display,
isDataAction,
origin,
properties
FROM azure.resource_mover.operations_discoveries
WHERE api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
