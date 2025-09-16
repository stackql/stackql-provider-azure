--- 
title: runbook_drafts
hide_title: false
hide_table_of_contents: false
keywords:
  - runbook_drafts
  - automation
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

Creates, updates, deletes, gets or lists a <code>runbook_drafts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>runbook_drafts</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.runbook_drafts" /></td></tr>
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
    <td><CopyableCode code="creationTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Gets or sets the creation time of the runbook draft.</td>
</tr>
<tr>
    <td><CopyableCode code="draftContentLink" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the draft runbook content link.</td>
</tr>
<tr>
    <td><CopyableCode code="inEdit" /></td>
    <td><code>boolean</code></td>
    <td>Gets or sets whether runbook is in edit mode.</td>
</tr>
<tr>
    <td><CopyableCode code="lastModifiedTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Gets or sets the last modified time of the runbook draft.</td>
</tr>
<tr>
    <td><CopyableCode code="outputTypes" /></td>
    <td><code>array</code></td>
    <td>Gets or sets the runbook output types.</td>
</tr>
<tr>
    <td><CopyableCode code="parameters" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the runbook draft parameters.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-runbookName"><code>runbookName</code></a></td>
    <td></td>
    <td>Retrieve the runbook draft identified by runbook name.</td>
</tr>
<tr>
    <td><a href="#undo_edit"><CopyableCode code="undo_edit" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-runbookName"><code>runbookName</code></a></td>
    <td></td>
    <td>Undo draft edit to last known published state identified by runbook name.</td>
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
<tr id="parameter-automationAccountName">
    <td><CopyableCode code="automationAccountName" /></td>
    <td><code>string</code></td>
    <td>The name of the automation account.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of an Azure Resource group.</td>
</tr>
<tr id="parameter-runbookName">
    <td><CopyableCode code="runbookName" /></td>
    <td><code>string</code></td>
    <td>The runbook name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
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

Retrieve the runbook draft identified by runbook name.

```sql
SELECT
creationTime,
draftContentLink,
inEdit,
lastModifiedTime,
outputTypes,
parameters
FROM azure.automation.runbook_drafts
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND runbookName = '{{ runbookName }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="undo_edit"
    values={[
        { label: 'undo_edit', value: 'undo_edit' }
    ]}
>
<TabItem value="undo_edit">

Undo draft edit to last known published state identified by runbook name.

```sql
EXEC azure.automation.runbook_drafts.undo_edit 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@automationAccountName='{{ automationAccountName }}' --required, 
@runbookName='{{ runbookName }}' --required
;
```
</TabItem>
</Tabs>
