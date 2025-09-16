--- 
title: dsc_compilation_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - dsc_compilation_jobs
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

Creates, updates, deletes, gets or lists a <code>dsc_compilation_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>dsc_compilation_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.dsc_compilation_jobs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_automation_account', value: 'list_by_automation_account' }
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the properties of the Dsc Compilation job.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_automation_account">

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the properties of the Dsc Compilation job.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-compilationJobName"><code>compilationJobName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Retrieve the Dsc configuration compilation job identified by job id.</td>
</tr>
<tr>
    <td><a href="#list_by_automation_account"><CopyableCode code="list_by_automation_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Retrieve a list of dsc compilation jobs.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-compilationJobName"><code>compilationJobName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates the Dsc compilation job of the configuration.</td>
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
<tr id="parameter-compilationJobName">
    <td><CopyableCode code="compilationJobName" /></td>
    <td><code>string</code></td>
    <td>The DSC configuration Id.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of an Azure Resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_automation_account', value: 'list_by_automation_account' }
    ]}
>
<TabItem value="get">

Retrieve the Dsc configuration compilation job identified by job id.

```sql
SELECT
properties
FROM azure.automation.dsc_compilation_jobs
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND compilationJobName = '{{ compilationJobName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_automation_account">

Retrieve a list of dsc compilation jobs.

```sql
SELECT
properties
FROM azure.automation.dsc_compilation_jobs
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Creates the Dsc compilation job of the configuration.

```sql
INSERT INTO azure.automation.dsc_compilation_jobs (
data__properties,
data__name,
data__location,
data__tags,
resourceGroupName,
automationAccountName,
compilationJobName,
subscriptionId
)
SELECT 
'{{ properties }}' /* required */,
'{{ name }}',
'{{ location }}',
'{{ tags }}',
'{{ resourceGroupName }}',
'{{ automationAccountName }}',
'{{ compilationJobName }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: dsc_compilation_jobs
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the dsc_compilation_jobs resource.
    - name: automationAccountName
      value: string
      description: Required parameter for the dsc_compilation_jobs resource.
    - name: compilationJobName
      value: string
      description: Required parameter for the dsc_compilation_jobs resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the dsc_compilation_jobs resource.
    - name: properties
      value: object
      description: |
        Gets or sets the list of compilation job properties.
    - name: name
      value: string
      description: |
        Gets or sets name of the resource.
    - name: location
      value: string
      description: |
        Gets or sets the location of the resource.
    - name: tags
      value: object
      description: |
        Gets or sets the tags attached to the resource.
```
</TabItem>
</Tabs>
